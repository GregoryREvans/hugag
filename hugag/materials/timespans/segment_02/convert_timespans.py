import abjad
import evans

from hugag.materials.score_structure.segment_02.rhythm_material_pattern import (
    rhythm_material_list,
)
from hugag.materials.score_structure.segment_02.time_signatures import bounds
from hugag.materials.timespans.segment_02.make_timespans import rhythm_timespan_list

from .make_timespans import music_specifiers

voice_names = [specifier for specifier in music_specifiers]

# #######
# rhythm#
# #######
rhythm_mat = evans.CyclicList(rhythm_material_list, forget=False)

for voice in voice_names:
    for span in rhythm_timespan_list:
        if span.voice_name == voice:
            span._handler = rhythm_mat(r=1)[0]

segment_02_rhythm_timespans = evans.timespan.make_split_list(
    rhythm_timespan_list, bounds
)

# showable_list = abjad.TimespanList([abjad.AnnotatedTimespan(_.start_offset, _.stop_offset, annotation=_.voice_name) for _ in segment_02_rhythm_timespans])
# abjad.show(showable_list, scale=0.7, key="annotation")
# raise Exception("STOP")


rhythm_commands = []
for span in segment_02_rhythm_timespans:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands)

# ##############
# all commands#
# ##############
handler_commands = [None]
