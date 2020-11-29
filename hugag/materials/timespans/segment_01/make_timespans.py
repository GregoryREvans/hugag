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
                20,
                44,
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

rhythm_timespan_list = abjad.TimespanList(
    [
        tsmakers.PerformedTimespan(0, (7, 6), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((7, 6), (8, 3), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((8, 3), 3, voice_name="Voice 1"),
        tsmakers.PerformedTimespan(3, (7, 2), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((7, 2), (25, 6), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((25, 6), (143, 30), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((143, 30), (28, 5), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((28, 5), (127, 20), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((127, 20), (38, 5), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((38, 5), 8, voice_name="Voice 1"),
        tsmakers.PerformedTimespan(0, (7, 6), voice_name="Voice 2"),
        tsmakers.PerformedTimespan((7, 6), (8, 3), voice_name="Voice 2"),
        tsmakers.PerformedTimespan((8, 3), 3, voice_name="Voice 2"),
        tsmakers.PerformedTimespan(3, (7, 2), voice_name="Voice 2"),
        tsmakers.PerformedTimespan((7, 2), (25, 6), voice_name="Voice 2"),
        tsmakers.PerformedTimespan((25, 6), (143, 30), voice_name="Voice 2"),
        tsmakers.PerformedTimespan((143, 30), (28, 5), voice_name="Voice 2"),
        tsmakers.PerformedTimespan((28, 5), (127, 20), voice_name="Voice 2"),
        tsmakers.PerformedTimespan((127, 20), (38, 5), voice_name="Voice 2"),
        tsmakers.PerformedTimespan((38, 5), 8, voice_name="Voice 2"),
        tsmakers.PerformedTimespan(0, (7, 6), voice_name="Voice 3"),
        tsmakers.PerformedTimespan((7, 6), (8, 3), voice_name="Voice 3"),
        tsmakers.PerformedTimespan((8, 3), 3, voice_name="Voice 3"),
        tsmakers.PerformedTimespan(3, (7, 2), voice_name="Voice 3"),
        tsmakers.PerformedTimespan((7, 2), (25, 6), voice_name="Voice 3"),
        tsmakers.PerformedTimespan((25, 6), (143, 30), voice_name="Voice 3"),
        tsmakers.PerformedTimespan((143, 30), (28, 5), voice_name="Voice 3"),
        tsmakers.PerformedTimespan((28, 5), (127, 20), voice_name="Voice 3"),
        tsmakers.PerformedTimespan((127, 20), (38, 5), voice_name="Voice 3"),
        tsmakers.PerformedTimespan((38, 5), 8, voice_name="Voice 3"),
        tsmakers.PerformedTimespan(0, (7, 6), voice_name="Voice 4"),
        tsmakers.PerformedTimespan((7, 6), (8, 3), voice_name="Voice 4"),
        tsmakers.PerformedTimespan((8, 3), 3, voice_name="Voice 4"),
        tsmakers.PerformedTimespan(3, (7, 2), voice_name="Voice 4"),
        tsmakers.PerformedTimespan((7, 2), (25, 6), voice_name="Voice 4"),
        tsmakers.PerformedTimespan((25, 6), (143, 30), voice_name="Voice 4"),
        tsmakers.PerformedTimespan((143, 30), (28, 5), voice_name="Voice 4"),
        tsmakers.PerformedTimespan((28, 5), (127, 20), voice_name="Voice 4"),
        tsmakers.PerformedTimespan((127, 20), (38, 5), voice_name="Voice 4"),
        tsmakers.PerformedTimespan((38, 5), 8, voice_name="Voice 4"),
        tsmakers.PerformedTimespan(0, (7, 6), voice_name="Voice 5"),
        tsmakers.PerformedTimespan((7, 6), (8, 3), voice_name="Voice 5"),
        tsmakers.PerformedTimespan((8, 3), 3, voice_name="Voice 5"),
        tsmakers.PerformedTimespan(3, (7, 2), voice_name="Voice 5"),
        tsmakers.PerformedTimespan((7, 2), (25, 6), voice_name="Voice 5"),
        tsmakers.PerformedTimespan((25, 6), (143, 30), voice_name="Voice 5"),
        tsmakers.PerformedTimespan((143, 30), (28, 5), voice_name="Voice 5"),
        tsmakers.PerformedTimespan((28, 5), (127, 20), voice_name="Voice 5"),
        tsmakers.PerformedTimespan((127, 20), (38, 5), voice_name="Voice 5"),
        tsmakers.PerformedTimespan((38, 5), 8, voice_name="Voice 5"),
    ]
)

# showable_list = abjad.TimespanList([abjad.AnnotatedTimespan(_.start_offset, _.stop_offset, annotation=_.voice_name) for _ in rhythm_timespan_list])
# abjad.show(showable_list, scale=0.7, key="annotation")
# raise Exception("STOP")
