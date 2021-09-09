\version "2.19.84"                                                             %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"           %! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/hugag/hugag/build/first_stylesheet.ily"      %! abjad.LilyPondFile._get_formatted_includes()

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()

    \context Score = "hugag score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=115
            \time 1/1                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 1
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/1                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/1                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/1                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/1                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/1                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/1                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/1                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override Score.TimeSignature.stencil = ##f                  %! applying ending skips
            \time 3/16                                                         %! scaling time signatures
            s1 * 3/16

        }

        \context StaffGroup = "Staff Group"
        <<

            \tag #'voice1
            {

                \context StringContactStaff = "SCStaff"
                {

                    \context Voice = "Voice 1"
                    {
                        % [Voice 1 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'2
                        - \abjad-zero-padding-glissando                        %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak X-extent #'(0 . 0)
                        \tweak transparent ##t
                        cs'2
                        - \abjad-zero-padding-glissando                        %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \times 2/3 {
                            % [Voice 1 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            d'2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            ef'2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            e'2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                        }
                        % [Voice 1 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \tweak X-extent #'(0 . 0)
                        \tweak transparent ##t
                        f'2
                        - \abjad-zero-padding-glissando                        %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \tweak X-extent #'(0 . 0)
                        \tweak transparent ##t
                        fs'2
                        - \abjad-zero-padding-glissando                        %! abjad.glissando(7)
                        \glissando                                             %! abjad.glissando(7)

                        \times 2/3 {
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            eqs'2.
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            bf4
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            aqf4
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            r4

                        }

                        \times 2/3 {
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            bqs2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            c'4
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            \tweak X-extent #'(0 . 0)
                            \tweak transparent ##t
                            dqf'4
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            c'4
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            r4

                        }

                        \tweak text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            cs'2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                            d'2
                            - \abjad-zero-padding-glissando                    %! abjad.glissando(7)
                            \glissando                                         %! abjad.glissando(7)

                        }

                        r4.
                        % [Voice 1 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Rest.transparent = ##t                 %! applying invisibility
                        r1 * 1/2

                        R1 * 1/2
                        % [Voice 1 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Rest.transparent = ##t                 %! applying invisibility
                        r1 * 1/2

                        R1 * 1/2
                        \bar "||"
                        % [Voice 1 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.ushortfermata" %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

            \context SubGroup = "SubGroup 1"
            \with
            {
                instrumentName = \markup \center-column { Bow Contact Point }
                shortInstrumentName = \markup \center-column { bow contact point }
            }
            <<

                \tag #'voice2
                {

                    \context BowContactStaff = "BCStaff"
                    {

                        \context Voice = "Voice 2"
                        {
                            % [Voice 2 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            \bar "||"
                            % [Voice 2 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                            \once \override Rest.color = #white                %! applying ending skips
                            r1 * 3/32

                            \once \override MultiMeasureRest.color = #white    %! applying ending skips
                            R1 * 3/32
                            ^ \markup \center-align \musicglyph #"scripts.ushortfermata" %! applying ending skips
                            \stopStaff \startStaff                             %! applying ending skips

                        }

                    }

                }

                \tag #'voice3
                {

                    \context BeamStaff = "BCStaff copy"
                    {

                        \context Voice = "Voice 2 copy"
                        {
                            % [Voice 2 copy measure 1]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 copy measure 2]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 copy measure 3]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 copy measure 4]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 copy measure 5]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 copy measure 6]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 copy measure 7]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 2 copy measure 8]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            \bar "||"
                            % [Voice 2 copy measure 9]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                            \once \override Rest.color = #white                %! applying ending skips
                            r1 * 3/32

                            \once \override MultiMeasureRest.color = #white    %! applying ending skips
                            R1 * 3/32
                            ^ \markup \center-align \musicglyph #"scripts.ushortfermata" %! applying ending skips
                            \stopStaff \startStaff                             %! applying ending skips

                        }

                    }

                }

            >>

            \context SubGroup = "SubGroup 2"
            \with
            {
                instrumentName = \markup \center-column { Bow Angle }
                shortInstrumentName = \markup \center-column { bow angle }
            }
            <<

                \tag #'voice4
                {

                    \context BowAngleStaff = "BAStaff"
                    {

                        \context Voice = "Voice 3"
                        {
                            % [Voice 3 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 measure 2]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            \bar "||"
                            % [Voice 3 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                            \once \override Rest.color = #white                %! applying ending skips
                            r1 * 3/32

                            \once \override MultiMeasureRest.color = #white    %! applying ending skips
                            R1 * 3/32
                            ^ \markup \center-align \musicglyph #"scripts.ushortfermata" %! applying ending skips
                            \stopStaff \startStaff                             %! applying ending skips

                        }

                    }

                }

                \tag #'voice5
                {

                    \context BeamStaff = "BAStaff copy"
                    {

                        \context Voice = "Voice 3 copy"
                        {
                            % [Voice 3 copy measure 1]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 copy measure 2]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 copy measure 3]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 copy measure 4]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 copy measure 5]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 copy measure 6]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 copy measure 7]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            % [Voice 3 copy measure 8]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \once \override Rest.transparent = ##t             %! applying invisibility
                            r1 * 1/2

                            R1 * 1/2
                            \bar "||"
                            % [Voice 3 copy measure 9]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                            \once \override Rest.color = #white                %! applying ending skips
                            r1 * 3/32

                            \once \override MultiMeasureRest.color = #white    %! applying ending skips
                            R1 * 3/32
                            ^ \markup \center-align \musicglyph #"scripts.ushortfermata" %! applying ending skips
                            \stopStaff \startStaff                             %! applying ending skips

                        }

                    }

                }

            >>

            \tag #'voice6
            {

                \context Staff = "Staff 4"
                \with
                {
                    instrumentName = \markup \center-column { Left Hand }
                    shortInstrumentName = \markup \center-column { left hand }
                }
                {

                    \context Voice = "Voice 4"
                    {
                        % [Voice 4 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \clef "bass"
                        c'2

                        c'2
                        % [Voice 4 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'2

                        c'4

                        c'4
                        % [Voice 4 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'4

                        c'4

                        c'4

                        c'4
                        % [Voice 4 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'2

                        c'2

                        \times 2/3 {
                            % [Voice 4 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2

                            c'2

                            c'2

                        }
                        % [Voice 4 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        c'2

                        c'2

                        \times 2/3 {
                            % [Voice 4 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2.

                            c'4

                            c'4

                            r4

                        }

                        \times 2/3 {
                            % [Voice 4 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            c'2

                            c'4

                            c'4

                            c'4

                            r4
                            \bar "||"

                        }
                        % [Voice 4 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.ushortfermata" %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

            \tag #'voice7
            {

                \context DynamicStaff = "DStaff"
                {

                    \context Voice = "Voice 5"
                    {
                        % [Voice 5 measure 1]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Rest.transparent = ##t                 %! applying invisibility
                        r1 * 1/2

                        R1 * 1/2
                        % [Voice 5 measure 2]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Rest.transparent = ##t                 %! applying invisibility
                        r1 * 1/2

                        R1 * 1/2
                        % [Voice 5 measure 3]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Rest.transparent = ##t                 %! applying invisibility
                        r1 * 1/2

                        R1 * 1/2
                        % [Voice 5 measure 4]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Rest.transparent = ##t                 %! applying invisibility
                        r1 * 1/2

                        R1 * 1/2
                        % [Voice 5 measure 5]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Rest.transparent = ##t                 %! applying invisibility
                        r1 * 1/2

                        R1 * 1/2
                        % [Voice 5 measure 6]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Rest.transparent = ##t                 %! applying invisibility
                        r1 * 1/2

                        R1 * 1/2
                        % [Voice 5 measure 7]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Rest.transparent = ##t                 %! applying invisibility
                        r1 * 1/2

                        R1 * 1/2
                        % [Voice 5 measure 8]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \once \override Rest.transparent = ##t                 %! applying invisibility
                        r1 * 1/2

                        R1 * 1/2
                        \bar "||"
                        % [Voice 5 measure 9]                                  %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                        \once \override Rest.color = #white                    %! applying ending skips
                        r1 * 3/32

                        \once \override MultiMeasureRest.color = #white        %! applying ending skips
                        R1 * 3/32
                        ^ \markup \center-align \musicglyph #"scripts.ushortfermata" %! applying ending skips
                        \stopStaff \startStaff                                 %! applying ending skips

                    }

                }

            }

        >>

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()