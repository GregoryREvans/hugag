import abjad

instrument_one = abjad.Cello()
instrument_one_range = instrument_one.pitch_range
instrument_one_range_lowest = abjad.NumberedPitch(instrument_one_range.start_pitch)
instrument_one_range_highest = abjad.NumberedPitch(instrument_one_range.stop_pitch)

instruments = [
    instrument_one,
    instrument_one,
    instrument_one,
    instrument_one,
    instrument_one,
]
voices = len(instruments)

voice_to_name_dict = {
    "Voice 1": "SCP",
    "Voice 2": "BCP",
    "Voice 3": "BA",
    "Voice 4": "LH",
    "Voice 5": "DYN",
}
