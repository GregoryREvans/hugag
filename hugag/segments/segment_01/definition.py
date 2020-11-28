import pathlib

import abjad
import baca
import evans

from hugag.materials.pitch import clef_handler_one
from hugag.materials.score_structure.instruments import instruments as insts
from hugag.materials.score_structure.score_structure import score
from hugag.materials.score_structure.segment_01.time_signatures import time_signatures
from hugag.materials.timespans.segment_01.convert_timespans import rhythm_commands

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
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        evans.call(
            "score",
            evans.SegmentMaker.transform_brackets,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "Voice 4",
            clef_handler_one,
            abjad.select(),
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
