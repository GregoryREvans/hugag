import pathlib

import abjad
import baca
import evans

from hugag.materials.pitch import clef_handler_one
from hugag.materials.score_structure.instruments import instruments as insts
from hugag.materials.score_structure.score_structure import score
from hugag.materials.score_structure.segment_02.time_signatures import time_signatures
from hugag.materials.timespans.segment_02.convert_timespans import rhythm_commands

cyc_angles = evans.CyclicList([-45, 45, -5, -45, 60, -15, None], forget=False)


def _make_angles(selections):
    for leaf in abjad.select(selections).leaves(pitched=True):
        bap = evans.BowAnglePoint(cyc_angles(r=1)[0])
        tech = abjad.BowMotionTechnique("ordinario")
        abjad.attach(bap, leaf)
        abjad.attach(tech, leaf)
    evans.bow_angle_spanner(selections)


cyc_dynamics = evans.CyclicList(["p", "f", "mf", "mp", "pp", "f"], forget=False)


def _make_dynamics(selections):
    runs = abjad.select(selections).runs()
    for run in runs:
        dynamics = cyc_dynamics(r=len(run))
        for i, leaf in enumerate(abjad.select(run).leaves()):
            dyn = abjad.Dynamic(dynamics[i], direction=abjad.Up)
            abjad.attach(dyn, leaf)
        ls = abjad.select(run).leaves()
        for i, leaf in enumerate(ls[:-1]):
            if (
                abjad.Dynamic(dynamics[i]).ordinal
                < abjad.Dynamic(dynamics[i + 1]).ordinal
            ):
                hairpin_string = "<"
            else:
                hairpin_string = ">"
            abjad.attach(abjad.StartHairpin(hairpin_string, direction=abjad.Up), leaf)
    abjad.glissando(selections[:], zero_padding=True, allow_repeats=True)
    for run in abjad.select(selections).runs():
        leaves = abjad.select(run).leaves()
        for leaf in leaves[1:-1]:
            abjad.tweak(leaf.note_head).transparent = True
            abjad.tweak(leaf.note_head).X_extent = (0, 0)


def _make_glissando(selections):
    abjad.glissando(selections[:], zero_padding=True, allow_repeats=True)
    for run in abjad.select(selections).runs():
        leaves = abjad.select(run).leaves()
        for leaf in leaves[1:-1]:
            abjad.tweak(leaf.note_head).transparent = True
            abjad.tweak(leaf.note_head).X_extent = (0, 0)

def _toggle_tuplets(selections):
    for tuplet in abjad.select(selections).components(abjad.Tuplet):
        tuplet.toggle_prolation()

cyc_settings = evans.CyclicList(
    [
        ["Bow", "Contact", "Point"],
        ["bow", "contact", "point"],
        ["Bow", "Angle"],
        ["bow", "angle"],
        ["Left", "Hand"],
        ["left", "hand"],
    ],
    forget=False,
)

def _set_name(selection):
    if selection[0].name in ("SubGroup 1", "SubGroup 2", "Staff 4"):
        abjad.setting(selection[0]).instrumentName = abjad.Markup.center_column(cyc_settings(r=1)[0])
        abjad.setting(selection[0]).shortInstrumentName = abjad.Markup.center_column(cyc_settings(r=1)[0])


maker = evans.SegmentMaker(
    instruments=insts,
    name_staves=False,
    commands=[
        rhythm_commands,
        evans.duplicate(
            source_voice_name="Voice 2",
            target_voice_name="Voice 2 copy",
        ),
        evans.duplicate(
            source_voice_name="Voice 3",
            target_voice_name="Voice 3 copy",
        ),
        evans.call(
            "SubGroup 1",
            _set_name,
            abjad.select().components(abjad.StaffGroup)
        ),
        evans.call(
            "SubGroup 2",
            _set_name,
            abjad.select().components(abjad.StaffGroup)
        ),
        evans.call(
            "Staff 4",
            _set_name,
            abjad.select()
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        # evans.call(
        #     "Voice 5",
        #     _make_dynamics,
        #     abjad.select(),
        # ),
        evans.call(
            "Voice 1",
            evans.PitchHandler(
                [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    4.5,
                    -2,
                    -3.5,
                    -0.5,
                    0,
                    1.5,
                ],
                forget=False,
            ),
            abjad.select(),
        ),
        evans.call(
            "Voice 1",
            _make_glissando,
            abjad.select(),
        ),
        evans.call(
            "Voice 4",
            clef_handler_one,
            abjad.select(),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/hugag/hugag/build/first_stylesheet.ily",
    ],
    segment_name="segment_02",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=True,
    barline="||",
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
