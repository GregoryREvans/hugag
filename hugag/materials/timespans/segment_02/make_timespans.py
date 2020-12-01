from collections import OrderedDict

import abjad
import tsmakers
from abjadext import rmakers as rmakers

from hugag.materials.score_structure.instruments import instruments

music_specifiers = OrderedDict(
    [(f"Voice {i+1}", None) for i, name in enumerate(instruments)]
)

# #######
# rhythm#
# #######
rhythm_target_timespan = abjad.Timespan(0, 8)

rhythm_timespan_maker = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(
        counts=(
            [
                0,
            ]
        ),
        denominator=4,
    ),
    playing_talea=rmakers.Talea(
        counts=(
            [
                45,
                19,
                64,
                64,
                64,
                45,
                19,
            ]
        ),
        denominator=8,
    ),
    silence_talea=rmakers.Talea(
        counts=(
            [
                0,
            ]
        ),
        denominator=4,
    ),
)

rhythm_timespan_list = rhythm_timespan_maker(
    music_specifiers=music_specifiers, target_timespan=rhythm_target_timespan
)

# showable_list = abjad.TimespanList([abjad.AnnotatedTimespan(_.start_offset, _.stop_offset, annotation=_.voice_name) for _ in rhythm_timespan_list])
# abjad.show(showable_list, scale=0.7, key="annotation")
# raise Exception("STOP")
