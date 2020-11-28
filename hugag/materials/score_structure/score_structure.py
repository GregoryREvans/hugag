import abjad

score = abjad.Score(
    [
        abjad.Staff(lilypond_type="TimeSignatureContext", name="Global Context"),
        abjad.StaffGroup(
            [
                abjad.Staff(
                    [
                        abjad.Voice(name="Voice 1"),
                    ],
                    lilypond_type="StringContactStaff",
                    name="SCStaff",
                ),
                abjad.StaffGroup(
                    [
                        abjad.Staff(
                            [
                                abjad.Voice(name="Voice 2"),
                            ],
                            lilypond_type="BowContactStaff",
                            name="BCStaff",
                        ),
                        abjad.Staff(
                            [
                                abjad.Voice(name="Voice 2 copy"),
                            ],
                            lilypond_type="BeamStaff",
                            name="BCStaff copy",
                        ),
                    ],
                    lilypond_type="SubGroup",
                    name="SubGroup 1",
                ),
                abjad.StaffGroup(
                    [
                        abjad.Staff(
                            [
                                abjad.Voice(name="Voice 3"),
                            ],
                            lilypond_type="BowAngleStaff",
                            name="BAStaff",
                        ),
                        abjad.Staff(
                            [
                                abjad.Voice(name="Voice 3 copy"),
                            ],
                            lilypond_type="BeamStaff",
                            name="BAStaff copy",
                        ),
                    ],
                    lilypond_type="SubGroup",
                    name="SubGroup 2",
                ),
                abjad.Staff(
                    [
                        abjad.Voice(name="Voice 4"),
                    ],
                    lilypond_type="Staff",
                    name="Staff 4",
                ),
                abjad.Staff(
                    [
                        abjad.Voice(name="Voice 5"),
                    ],
                    lilypond_type="DynamicStaff",
                    name="DStaff",
                ),
            ],
            lilypond_type="StaffGroup",
            name="Staff Group",
        ),
    ],
    name="hugag score",
)
