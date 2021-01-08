
    \context Score = "hugag score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=115
            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 7/6                                                          %! scaling time signatures
            \mark \markup {
                \bold
                    {
                    }
                }
            s1 * 7/6
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/2                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 1/3                                                          %! scaling time signatures
            s1 * 1/3
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 2/3                                                          %! scaling time signatures
            s1 * 2/3
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 3/5                                                          %! scaling time signatures
            s1 * 3/5
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 5/6                                                          %! scaling time signatures
            s1 * 5/6
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 2/5                                                          %! scaling time signatures
            s1 * 2/5

        }

        \context StaffGroup = "Staff Group"
        <<

            \tag #'voice1
            {

                \context StringContactStaff = "SCStaff"
                {

                    \context Voice = "Voice 1"
                    {

                        \tweak edge-height #'(0.7 . 0)
                        \times 4/6 {
                            % [Voice 1 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1..

                        }
                        % [Voice 1 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1.

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 1 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2

                        }
                        % [Voice 1 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r2

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 4/5 {
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2.

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 4/6 {
                            % [Voice 1 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1

                            r4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 1 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            b2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            a2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            fs2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            fqs2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 4/5 {
                            % [Voice 1 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            g4
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            gqf4
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)
                            \bar "||"

                        }

                    }

                }

            }

            \context SubGroup = "SubGroup 1"
            \with
            {
                instrumentName = \markup {
                    \center-column
                        {
                            Bow
                            Contact
                            Point
                        }
                    }
                shortInstrumentName = \markup {
                    \center-column
                        {
                            bow
                            contact
                            point
                        }
                    }
            }
            <<

                \tag #'voice2
                {

                    \context BowContactStaff = "BCStaff"
                    {

                        \context Voice = "Voice 2"
                        {

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/6 {
                                % [Voice 2 measure 1]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r1..

                            }
                            % [Voice 2 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1.

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 2 measure 3]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2

                            }
                            % [Voice 2 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 2 measure 5]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r1

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5 {
                                % [Voice 2 measure 6]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2.

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/6 {
                                % [Voice 2 measure 7]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r1

                                r4

                            }
                            % [Voice 2 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2.
                            % [Voice 2 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2.

                            r2

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5 {
                                % [Voice 2 measure 10]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2
                                \bar "||"

                            }

                        }

                    }

                }

                \tag #'voice3
                {

                    \context BeamStaff = "BCStaff copy"
                    {

                        \context Voice = "Voice 2 copy"
                        {

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/6 {
                                % [Voice 2 copy measure 1]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r1..

                            }
                            % [Voice 2 copy measure 2]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1.

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 2 copy measure 3]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2

                            }
                            % [Voice 2 copy measure 4]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 2 copy measure 5]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r1

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5 {
                                % [Voice 2 copy measure 6]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2.

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/6 {
                                % [Voice 2 copy measure 7]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r1

                                r4

                            }
                            % [Voice 2 copy measure 8]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2.
                            % [Voice 2 copy measure 9]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2.

                            r2

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5 {
                                % [Voice 2 copy measure 10]                    %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2
                                \bar "||"

                            }

                        }

                    }

                }

            >>

            \context SubGroup = "SubGroup 2"
            \with
            {
                instrumentName = \markup {
                    \center-column
                        {
                            Bow
                            Angle
                        }
                    }
                shortInstrumentName = \markup {
                    \center-column
                        {
                            bow
                            angle
                        }
                    }
            }
            <<

                \tag #'voice4
                {

                    \context BowAngleStaff = "BAStaff"
                    {

                        \context Voice = "Voice 3"
                        {

                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak edge-height #'(0.7 . 0)
                            \times 7/9 {
                                % [Voice 3 measure 1]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \tweak Y-offset #-4.0
                                \tweak stencil #ly:text-interface::print
                                \tweak text \markup {
                                    \vcenter
                                        \concat
                                            {
                                                \translate
                                                    #'(0 . 0)
                                                    -45
                                                \translate
                                                    #'(0 . 1)
                                                    \teeny
                                                        o
                                                \hspace
                                                    #0.5
                                            }
                                    }
                                c'2.
                                - \tweak style #'line
                                \glissando

                                \tweak Y-offset #0.0
                                \tweak stencil #ly:text-interface::print
                                \tweak text \markup {
                                    \vcenter
                                        \concat
                                            {
                                                \translate
                                                    #'(0 . 0)
                                                    45
                                                \translate
                                                    #'(0 . 1)
                                                    \teeny
                                                        o
                                                \hspace
                                                    #0.5
                                            }
                                    }
                                c'4
                                - \tweak style #'line
                                \glissando

                                \tweak Y-offset #-2.2222222222222223
                                \tweak stencil #ly:text-interface::print
                                \tweak text \markup {
                                    \vcenter
                                        \concat
                                            {
                                                \translate
                                                    #'(0 . 0)
                                                    -5
                                                \translate
                                                    #'(0 . 1)
                                                    \teeny
                                                        o
                                                \hspace
                                                    #0.5
                                            }
                                    }
                                c'4

                                r4

                            }
                            % [Voice 3 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Y-offset #-4.0
                            \tweak stencil #ly:text-interface::print
                            \tweak text \markup {
                                \vcenter
                                    \concat
                                        {
                                            \translate
                                                #'(0 . 0)
                                                -45
                                            \translate
                                                #'(0 . 1)
                                                \teeny
                                                    o
                                            \hspace
                                                #0.5
                                        }
                                }
                            c'2
                            - \tweak style #'line
                            \glissando

                            \tweak Y-offset #0.6666666666666666
                            \tweak stencil #ly:text-interface::print
                            \tweak text \markup {
                                \vcenter
                                    \concat
                                        {
                                            \translate
                                                #'(0 . 0)
                                                60
                                            \translate
                                                #'(0 . 1)
                                                \teeny
                                                    o
                                            \hspace
                                                #0.5
                                        }
                                }
                            c'4
                            - \tweak style #'line
                            \glissando

                            \tweak Y-offset #-2.6666666666666665
                            \tweak stencil #ly:text-interface::print
                            \tweak text \markup {
                                \vcenter
                                    \concat
                                        {
                                            \translate
                                                #'(0 . 0)
                                                -15
                                            \translate
                                                #'(0 . 1)
                                                \teeny
                                                    o
                                            \hspace
                                                #0.5
                                        }
                                }
                            c'4

                            \tweak style #'cross
                            c'4
                            ^ \markup { clb. }

                            r4

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 3 measure 3]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2

                            }
                            % [Voice 3 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 3 measure 5]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r1

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5 {
                                % [Voice 3 measure 6]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2.

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/6 {
                                % [Voice 3 measure 7]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r1

                                r4

                            }
                            % [Voice 3 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2.
                            % [Voice 3 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2.

                            r2

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5 {
                                % [Voice 3 measure 10]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2
                                \bar "||"

                            }

                        }

                    }

                }

                \tag #'voice5
                {

                    \context BeamStaff = "BAStaff copy"
                    {

                        \context Voice = "Voice 3 copy"
                        {

                            \tweak text #tuplet-number::calc-fraction-text
                            \tweak edge-height #'(0.7 . 0)
                            \times 7/9 {
                                % [Voice 3 copy measure 1]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                c'2.

                                c'4

                                c'4

                                r4

                            }
                            % [Voice 3 copy measure 2]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2

                            c'4

                            c'4

                            c'4

                            r4

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 3 copy measure 3]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2

                            }
                            % [Voice 3 copy measure 4]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 3 copy measure 5]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r1

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5 {
                                % [Voice 3 copy measure 6]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2.

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/6 {
                                % [Voice 3 copy measure 7]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r1

                                r4

                            }
                            % [Voice 3 copy measure 8]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2.
                            % [Voice 3 copy measure 9]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2.

                            r2

                            \tweak edge-height #'(0.7 . 0)
                            \times 4/5 {
                                % [Voice 3 copy measure 10]                    %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2
                                \bar "||"

                            }

                        }

                    }

                }

            >>

            \tag #'voice6
            {

                \context Staff = "Staff 4"
                \with
                {
                    instrumentName = \markup {
                        \center-column
                            {
                                Left
                                Hand
                            }
                        }
                    shortInstrumentName = \markup {
                        \center-column
                            {
                                left
                                hand
                            }
                        }
                }
                {

                    \context Voice = "Voice 4"
                    {

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak edge-height #'(0.7 . 0)
                        \times 14/12 {
                            % [Voice 4 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \clef "bass"
                            <a, f>1
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/4 {
                            % [Voice 4 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <gqs, gqf>2
                            \glissando                                         %! abjad.glissando(7)

                            <a, f>2
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 4 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \five-eighths-flat-markup
                                df
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                b
                            >2
                            ^ \markup { clt. }
                            \glissando                                         %! abjad.glissando(7)

                        }
                        % [Voice 4 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        <a, f>2
                        \glissando                                             %! abjad.glissando(7)

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak edge-height #'(0.7 . 0)
                        \times 4/3 {
                            % [Voice 4 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <gqs, gqf>2
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak edge-height #'(0.7 . 0)
                        \times 3/5 {
                            % [Voice 4 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <a, f>1
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \tweak edge-height #'(0.7 . 0)
                        \times 5/6 {
                            % [Voice 4 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \five-eighths-flat-markup
                                df
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                b
                            >1
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 4 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <a, f>2
                            \glissando                                         %! abjad.glissando(7)

                            <gqs, gqf>2
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 10/8 {
                            % [Voice 4 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <a, f>2
                            \glissando                                         %! abjad.glissando(7)

                            <
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \five-eighths-flat-markup
                                df
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \one-eighth-flat-markup
                                b
                            >2
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 4/5 {
                            % [Voice 4 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <a, f>2
                            \glissando                                         %! abjad.glissando(7)
                            \bar "||"

                        }

                    }

                }

            }

            \tag #'voice7
            {

                \context DynamicStaff = "DStaff"
                {

                    \context Voice = "Voice 5"
                    {

                        \tweak edge-height #'(0.7 . 0)
                        \times 4/6 {
                            % [Voice 5 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1..
                            ^ \pp
                            - \tweak stencil #constante-hairpin
                            ^ \<

                        }
                        % [Voice 5 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        r1.

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 5 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'4
                            ^ \p
                            ^ \<
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c'4
                            ^ \f
                            ^ \>
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                        }
                        % [Voice 5 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak X-extent #'(0 . 0)
                        \tweak transparent ##t
                        c'4
                        ^ \mf
                        ^ \>
                        - \abjad-zero-padding-glissando                        %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        c'4
                        ^ \mp
                        - \abjad-zero-padding-glissando                        %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3 {
                            % [Voice 5 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 4/5 {
                            % [Voice 5 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r2.

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 4/6 {
                            % [Voice 5 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            r1

                            r4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            % [Voice 5 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2
                            ^ \pp
                            ^ \<
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c'4
                            ^ \f
                            ^ \>
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c'4
                            ^ \p
                            ^ \<
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            % [Voice 5 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c'2
                            ^ \f
                            ^ \>
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c'2
                            ^ \mf
                            ^ \>
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c'2
                            ^ \mp
                            ^ \>
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c'2
                            ^ \pp
                            ^ \<
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                        }

                        \tweak edge-height #'(0.7 . 0)
                        \times 4/5 {
                            % [Voice 5 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c'4
                            ^ \f
                            ^ \>
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            c'4
                            ^ \p
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)
                            \bar "||"

                        }

                    }

                }

            }

        >>

    >>
