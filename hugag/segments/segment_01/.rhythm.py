import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'silence_handler',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 3),
                                ('logical_ties_produced', 3),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'rhythm_handler_one',
            abjad.OrderedDict(
                [
                    ('state', 0),
                    ]
                ),
            ),
        (
            'rhythm_handler_two',
            abjad.OrderedDict(
                [
                    ('state', 9),
                    ]
                ),
            ),
        ]
    )