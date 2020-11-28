import evans
from abjadext import microtones

clef_handler_one = evans.ClefHandler(
    clef="bass", add_extended_clefs=True, add_ottavas=True
)


pitch_handler_one = evans.PitchHandler(
    pitch_list=microtones.PitchSegment([0]), forget=False
)
