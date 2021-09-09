import pathlib

import abjad
import baca
import evans

from hugag.materials.pitch import clef_handler_one
from hugag.materials.score_structure.instruments import instruments as insts
from hugag.materials.score_structure.score_structure import score
from hugag.materials.score_structure.segment_01.time_signatures import time_signatures
from hugag.materials.timespans.segment_01.convert_timespans import rhythm_commands

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
        "Bow Contact Point",
        "bow contact point",
        "Bow Angle",
        "bow angle",
        "Left Hand",
        "left hand",
    ],
    forget=False,
)


def _set_name(selection):
    if selection[0].name in ("SubGroup 1", "SubGroup 2", "Staff 4"):
        abjad.setting(selection[0]).instrumentName = abjad.Markup(
            fr"\markup \center-column {{ {cyc_settings(r=1)[0]} }}",
            literal=True,
        )
        abjad.setting(selection[0]).shortInstrumentName = abjad.Markup(
            fr"\markup \center-column {{ {cyc_settings(r=1)[0]} }}",
            literal=True,
        )


maker = evans.SegmentMaker(
    instruments=insts,
    # names=[
    #     '"Violoncello"',
    # ],
    # abbreviations=[
    #     '"vc."',
    # ],
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
            "SubGroup 1", _set_name, abjad.select().components(abjad.StaffGroup)
        ),
        evans.call(
            "SubGroup 2", _set_name, abjad.select().components(abjad.StaffGroup)
        ),
        evans.call("Staff 4", _set_name, abjad.select()),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        # evans.call(
        #     "score",
        #     evans.SegmentMaker.transform_brackets,
        #     abjad.select().components(abjad.Score),
        # ),
        evans.call(
            "Voice 4",
            _toggle_tuplets,
            abjad.select().components(abjad.Tuplet).get([0, 1, 3, 7]),
        ),
        # evans.call(
        #     "score",
        #     evans.NoteheadBracketMaker(),
        #     abjad.select(),
        # ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        evans.call(
            "Voice 3",
            _make_angles,
            abjad.select().leaves().get([0, 1, 2, 4, 5, 6, 7]),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(r"\markup clb.", direction=abjad.Up, literal=True),
            baca.selectors.leaf(7),
        ),
        # evans.attach(
        #     "Voice 3",
        #     abjad.LilyPondLiteral(
        #         [
        #             r"\stopStaff",
        #         ],
        #         format_slot="before",
        #     ),
        #     baca.selectors.leaf(9),
        # ),
        # evans.attach(
        #     "Voice 3 copy",
        #     abjad.LilyPondLiteral(
        #         [
        #             r"\stopStaff",
        #             r"\override Rest.transparent = ##t",
        #             r"\override TupletBracket.transparent = ##t",
        #             r"\override TupletNumber.transparent = ##t",
        #             r"\override Dots.transparent = ##t",
        #         ],
        #         format_slot="before",
        #     ),
        #     baca.selectors.leaf(9),
        # ),
        evans.call(
            "Voice 4",
            evans.PitchHandler(
                [
                    [
                        -15,
                        -7,
                    ],
                    [
                        -16.5,
                        -5.5,
                    ],
                    [
                        -15,
                        -7,
                    ],
                    [
                        -11.25,
                        -1.25,
                    ],
                ],
                forget=False,
            ),
            abjad.select(),
        ),
        evans.call(
            "Voice 4",
            abjad.glissando,
            abjad.select(),
        ),
        # evans.attach(
        #     "Voice 5",
        #     abjad.LilyPondLiteral(
        #         [
        #             r"\stopStaff",
        #             r"\override Rest.transparent = ##t",
        #             r"\override TupletBracket.transparent = ##t",
        #             r"\override TupletNumber.transparent = ##t",
        #             r"\override Dots.transparent = ##t",
        #         ],
        #         format_slot="before",
        #     ),
        #     baca.selectors.leaf(6),
        # ),
        # evans.attach(
        #     "Voice 5",
        #     abjad.LilyPondLiteral(
        #         [
        #             r"\startStaff",
        #             r"\override Rest.transparent = ##f",
        #             r"\override TupletBracket.transparent = ##f",
        #             r"\override TupletNumber.transparent = ##f",
        #             r"\override Dots.transparent = ##f",
        #         ],
        #         format_slot="before",
        #     ),
        #     baca.selectors.leaf(10),
        # ),
        evans.call(
            "Voice 5",
            _make_dynamics,
            abjad.select(),
        ),
        evans.attach(
            "Voice 5",
            abjad.Dynamic("pp", direction=abjad.Up),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 5",
            abjad.StartHairpin("--", direction=abjad.Up),
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 1",
            evans.PitchHandler(
                [0, -1, -3, -6, -6.5, -5, -5.5, -2, 1, 4, 3], forget=False
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
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup clt.", direction=abjad.Up, literal=True),
            baca.selectors.leaf(3),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    # clef_handlers=clef_handlers,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/hugag/hugag/build/first_stylesheet.ily",
    ],
    segment_name="segment_01",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
# maker._make_sc_file()
