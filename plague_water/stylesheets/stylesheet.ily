#(set-default-paper-size "11x17" 'landscape)
#(set-global-staff-size 11.5)

afterGraceFraction = #(cons 1023 1024)

flat-brackets = #(lambda (grob)
    (let* (
        (pos (ly:tuplet-bracket::calc-positions grob))
        (dir (ly:grob-property grob 'direction))
        (y  (if (= UP dir)
            (max (car pos) (cdr pos))
            (min (car pos) (cdr pos)))))
    (cons y y)))

LV = \markup {
    \whiteout \pad-markup #0.5 \normal-text \bold \small "L.V."
    }
LV = #(make-dynamic-script LV)

\header {
    composer = \markup {
        \column {
            \override #'(font-name . "Didot")
                \fontsize #3 "Joséphine Wolf Oberholtzer (1984)"
            " "
        }
    }
    tagline = \markup { "" }
    title = \markup {
        \column {
            \center-align {
                \override #'(font-name . "Didot")
                    \fontsize #20 {
                        \line { PLAGUE }
                        " "
                        \line { WATER }
                        " "
                    }
                \override #'(font-name . "Didot Italic")
                    \fontsize #6 {
                        \line { "for Ensemble Nikel" }
                        " "
                        " "
                    }
            }
        }
    }
}

\paper {
    bottom-margin = 10\mm
    left-margin = 30\mm
    right-margin = 10\mm
    top-margin = 10\mm
    evenFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
        }
    }
    evenHeaderMarkup = \markup \fill-line { " " }
    oddFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
        }
    }
    oddHeaderMarkup = \markup \fill-line { " " }
    print-first-page-number = ##f
    print-page-number = ##t
    page-breaking = #ly:optimal-breaking
    ragged-bottom = ##f
    ragged-last-bottom = ##t
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 12)
        (padding . 0)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 12)
        (minimum-distance . 18)
        (padding . 12)
        (stretchability . 0)
    )
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 0)
        (padding . 8)
        (stretchability . 0)
    )
    top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 10)
        (padding . 0)
        (stretchability . 0)
    )
}

\layout {
    \accidentalStyle modern-cautionary
    ragged-right = ##t

    %%% COMMON %%%

    \context {
        \Voice
        \consists Horizontal_bracket_engraver
        \remove Forbid_line_break_engraver
    }

    \context {
        \Staff
        \remove Time_signature_engraver
        \override Beam.positions = #'(-8 . -8)
        \override DynamicLineSpanner.staff-padding = 8
        \override TupletBracket.positions = #'(-10 . -10)
    }

    %%% TIME SIGNATURE CONTEXT %%%

    \context {
        \name TimeSignatureContext
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Bar_number_engraver
        \consists Mark_engraver
        \consists Metronome_mark_engraver
        \consists Script_engraver
        \consists Text_engraver
        \consists Text_spanner_engraver
        \consists Time_signature_engraver
        \override BarNumber.extra-offset = #'(-6 . -4)
        \override BarNumber.font-name = "Didot Italic"
        \override BarNumber.font-size = 1
        \override BarNumber.padding = 4
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print)
        \override MetronomeMark.X-extent = #'(0 . 0)
        \override MetronomeMark.Y-extent = #'(0 . 0)
        \override MetronomeMark.break-align-symbols = #'(left-edge)
        \override MetronomeMark.extra-offset = #'(0 . 4)
        \override MetronomeMark.font-size = 3
        \override RehearsalMark.X-extent = #'(0 . 0)
        \override RehearsalMark.X-offset = 6
        \override RehearsalMark.Y-offset = -2.25
        \override RehearsalMark.break-align-symbols = #'(time-signature)
        \override RehearsalMark.break-visibility = #end-of-line-invisible
        \override RehearsalMark.font-name = "Didot"
        \override RehearsalMark.font-size = 8
        \override RehearsalMark.outside-staff-priority = 500
        \override RehearsalMark.self-alignment-X = #center
        \override Script.extra-offset = #'(4 . -9)
        \override Script.font-size = 6
        \override TextScript.font-size = 3
        \override TextScript.outside-staff-priority = 600
        \override TextScript.padding = 6
        \override TextSpanner.bound-details.right.attach-dir = #left
        \override TextSpanner.padding = 6.75
        \override TimeSignature.X-extent = #'(0 . 0)
        \override TimeSignature.break-align-symbol = #'left-edge
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 3
        \override TimeSignature.space-alist.clef = #'(extra-space . 0.5)
        \override TimeSignature.style = #'numbered
        \override VerticalAxisGroup.default-staff-staff-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 14)
            (padding . 0)
            (stretchability . 0)
        )
        \override VerticalAxisGroup.minimum-Y-extent = #'(-20 . 20)
    }

    %%% SAXOPHONE %%%

    \context {
        \Staff
        \name SaxophoneStaff
        \type Engraver_group
        \alias Staff
        \override BarLine.bar-extent = #'(-2 . 2)
        \override Beam.positions = #'(-8 . -8)
        \override DynamicLineSpanner.staff-padding = 8
        \override StaffSymbol.line-count = 5
        \override TupletBracket.positions = #'(-10 . -10)
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { baritone saxophone } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { baritone saxophone } } }
    }

    \context {
        \StaffGroup
        \name SaxophoneStaffGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts SaxophoneStaff
    }

    %%% GUITAR %%%

    \context {
        \Staff
        \name GuitarStaff
        \type Engraver_group
        \alias Staff
        \override BarLine.bar-extent = #'(-2 . 2)
        \override Beam.positions = #'(-10 . -10)
        \override DynamicLineSpanner.staff-padding = 10
        \override TupletBracket.positions = #'(-12 . -12)
        \override StaffSymbol.line-count = 5
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { electric guitar } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { electric guitar } } }
    }

    \context {
        \StaffGroup
        \name GuitarStaffGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts GuitarStaff
    }

    %%% PIANO %%%

    \context {
        \Staff
        \name PianoUpperStaff
        \type Engraver_group
        \alias Staff
        \override BarLine.bar-extent = #'(-2 . 2)
    }

    \context {
        \Staff
        \name PianoLowerStaff
        \type Engraver_group
        \alias Staff
        \override BarLine.bar-extent = #'(-2 . 2)
        \override Beam.positions = #'(-9 . -9)
        \override DynamicLineSpanner.staff-padding = 9
        \override TupletBracket.positions = #'(-11 . -11)
    }

    \context {
        \Dynamics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
            (padding . 2)
            )
    }

    \context {
        \PianoStaff
        \name PianoStaffGroup
        \type Engraver_group
        \alias PianoStaff
        \accepts Dynamics
        \accepts PianoUpperStaff
        \accepts PianoLowerStaff
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { piano } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { piano } } }
    }

    %%% PERCUSSION %%%

    \context {
        \Staff
        \name PercussionShakerStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = #3
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { "4 wood" shakers } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { wood shakers } } }
    }

    \context {
        \Staff
        \name PercussionWoodblockStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = #5
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { "5 wood" blocks } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { wood blocks } } }
    }

    \context {
        \Staff
        \name PercussionDrumStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = #3
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { "3 bass" drums } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { bass drums } } }
    }

    \context {
        \StaffGroup
        \name PercussionStaffGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts PercussionDrumStaff
        \accepts PercussionShakerStaff
        \accepts PercussionWoodblockStaff
    }

    %%% SCORE %%%

    \context {
        \Score
        \accepts GuitarStaffGroup
        \accepts PercussionStaffGroup
        \accepts PianoStaffGroup
        \accepts SaxophoneStaffGroup
        \accepts TimeSignatureContext
        \remove Metronome_mark_engraver
        \remove Mark_engraver
        \remove Bar_number_engraver
        \override BarLine.hair-thickness = 0.5
        \override BarLine.space-alist = #'(
            (time-signature extra-space . 0.0)
            (custos minimum-space . 0.0) 
            (clef minimum-space . 0.0) 
            (key-signature extra-space . 0.0) 
            (key-cancellation extra-space . 0.0) 
            (first-note fixed-space . 0.0) 
            (next-note semi-fixed-space . 0.0) 
            (right-edge extra-space . 0.0)
            )
        \override Beam.beam-thickness = 0.75
        \override Beam.breakable = ##t
        \override Beam.length-fraction = 1.5
        \override DynamicLineSpanner.add-stem-support = ##t
        \override DynamicLineSpanner.outside-staff-padding = 1
        \override Glissando.breakable = ##t
        \override Glissando.thickness = 3
        \override GraceSpacing.common-shortest-duration = #(ly:make-moment 1 16)
        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteColumn.ignore-collision = ##t
        \override OttavaBracket.add-stem-support = ##t
        \override OttavaBracket.padding = 2
        \override PhrasingSlur.dash-definition = #'((0 1 0.5 0.5))
        \override Slur.dash-definition = #'((0 1 0.5 0.5))
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1 64)
        \override SpacingSpanner.strict-grace-spacing = ##f
        \override SpacingSpanner.strict-note-spacing = ##f
        \override SpacingSpanner.uniform-stretching = ##t
        \override Stem.details.beamed-lengths = #'(6)
        \override Stem.details.lengths = #'(6)
        \override Stem.direction = #DOWN
        \override Stem.stemlet-length = 1.5
        \override StemTremolo.beam-thickness = 0.75
        \override StemTremolo.beam-width = 1.5
        \override StemTremolo.flag-count = 4.0
        \override StemTremolo.length-fraction = 1.5
        \override StemTremolo.slope = 0.5
        \override SustainPedal.self-alignment-X = #LEFT
        \override TextScript.add-stem-support = ##t
        \override TextScript.outside-staff-padding = 1
        \override TextScript.padding = 1
        \override TextScript.staff-padding = 1
        \override TrillPitchAccidental.avoid-slur = #'ignore
        \override TrillPitchAccidental.layer = 1000
        \override TrillPitchAccidental.whiteout = ##t
        \override TrillPitchHead.layer = 1000
        \override TrillPitchHead.whiteout = ##t
        \override TrillSpanner.outside-staff-padding = 2
        \override TupletBracket.avoid-scripts = ##t
        \override TupletBracket.direction = #DOWN
        \override TupletBracket.full-length-to-extent = ##t
        \override TupletBracket.outside-staff-padding = 1
        \override TupletNumber.font-size = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override VerticalAxisGroup.staff-staff-spacing = #'(
            (basic-distance . 12)
            (minimum-distance . 8)
            (padding . 4)
            (stretchability . 0)
            )
        autoBeaming = ##f
        pedalSustainStyle = #'mixed
        proportionalNotationDuration = #(ly:make-moment 1 24)
        tupletFullLength = ##t
    }
}
