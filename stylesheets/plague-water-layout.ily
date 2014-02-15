afterGraceFraction = #(cons 31 32)

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

\layout {
    \accidentalStyle neo-modern-cautionary
    indent = 0
    ragged-bottom = ##t
    ragged-last = ##t
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
    }

    %%% TIME SIGNATURE CONTEXT %%%

    \context {
        \type Engraver_group
        \name TimeSignatureContext
        \consists Time_signature_engraver
        \consists Axis_group_engraver
        \consists Metronome_mark_engraver
        \consists Mark_engraver
        \consists Bar_number_engraver
        \override BarNumber.X-extent = #'(0 . 0)
        \override BarNumber.Y-extent = #'(0 . 0)
        \override BarNumber.extra-offset = #'(-8 . -4)
        \override BarNumber.font-name = "Didot Italic"
        \override BarNumber.font-size = 2
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print)
        \override MetronomeMark.X-extent = #'(0 . 0)
        \override MetronomeMark.X-offset = 5
        \override MetronomeMark.Y-offset = -2.5
        \override MetronomeMark.break-align-symbols = #'(time-signature)
        \override MetronomeMark.font-size = 3
        \override RehearsalMark.X-extent = #'(0 . 0)
        \override RehearsalMark.Y-offset = 8
        \override RehearsalMark.break-align-symbols = #'(time-signature)
        \override RehearsalMark.break-visibility = #end-of-line-invisible
        \override RehearsalMark.font-name = "Didot"
        \override RehearsalMark.font-size = 10
        \override RehearsalMark.self-alignment-X = #CENTER
        \override TimeSignature.X-extent = #'(0 . 0)
        \override TimeSignature.break-align-symbols = #'(staff-bar)
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 3
        \override TimeSignature.style = #'numbered
        \override VerticalAxisGroup.default-staff-staff-spacing = #'(
            (basic-distance . 6)
            (minimum-distance . 8)
            (padding . 10)
            (stretchability . 0)
            )
    }

    %%% SAXOPHONE %%%

    \context {
        \Staff
        \name SaxophoneStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = 5
        \override BarLine.bar-extent = #'(-2 . 2)
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
        \override StaffSymbol.line-count = 5
        \override BarLine.bar-extent = #'(-2 . 2)
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
    }

    \context {
        \Dynamics
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
            (padding . 3)
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
        \override BarLine.space-alist = #'((time-signature extra-space . 0.0) (custos minimum-space . 0.0) (clef minimum-space . 0.0) (key-signature extra-space . 0.0) (key-cancellation extra-space . 0.0) (first-note fixed-space . 0.0) (next-note semi-fixed-space . 0.0) (right-edge extra-space . 0.0))
        \override Beam.beam-thickness = 0.75
        \override Beam.breakable = ##t
        \override Beam.length-fraction = 1.5
        \override DynamicLineSpanner.add-stem-support = ##t
        \override DynamicLineSpanner.outside-staff-padding = 2
        \override DynamicLineSpanner.padding = 2
        \override Glissando.breakable = ##t
        \override Glissando.thickness = 3
        \override GraceSpacing.common-shortest-duration = #(ly:make-moment 1 16)
        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteColumn.ignore-collision = ##t
        \override OttavaBracket.add-stem-support = ##t
        \override OttavaBracket.outside-staff-padding = 2
        \override OttavaBracket.padding = 2
        \override OttavaBracket.whiteout = ##t
        \override PhrasingSlur.dash-definition = #'((0 1 0.5 0.5))
        \override Slur.dash-definition = #'((0 1 0.5 0.5))
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1 64)
        \override SpacingSpanner.strict-grace-spacing = ##f
        \override SpacingSpanner.strict-note-spacing = ##f
        \override SpacingSpanner.uniform-stretching = ##t
        \override Stem.details.beamed-lengths = #'(6)
        \override Stem.details.lengths = #'(6)
        \override Stem.stemlet-length = 1.5
        \override StemTremolo.beam-thickness = 0.75
        \override StemTremolo.beam-width = 1.5
        \override StemTremolo.flag-count = 4.0
        \override StemTremolo.length-fraction = 1.5
        \override StemTremolo.slope = 0.5
        \override SustainPedal.self-alignment-X = #LEFT
        \override TextScript.add-stem-support = ##t
        \override TextScript.padding = 2
        \override TextScript.staff-padding = 2
        \override TextScript.outside-staff-padding = 2
        \override TrillPitchAccidental.avoid-slur = #'inside
        \override TrillSpanner.add-stem-support = ##t
        \override TrillSpanner.padding = 3
        \override TrillSpanner.outside-staff-padding = 3
        \override TrillSpanner.staff-padding = 4
        \override TupletBracket.avoid-scripts = ##t
        \override TupletBracket.full-length-to-extent = ##t
        \override TupletBracket.outside-staff-padding = 6
        \override TupletBracket.padding = 2
        \override TupletNumber.font-size = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text

        \override StaffGrouper.staff-staff-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 6)
            (padding . 7)
            (stretchability . 1)
            )
        \override StaffGrouper.staffgroup-staff-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 6)
            (padding . 7)
            (stretchability . 1)
            )

        %\override Stem.direction = #UP
        %\override TupletBracket.direction = #UP

        autoBeaming = ##f
        pedalSustainStyle = #'mixed
        proportionalNotationDuration = #(ly:make-moment 1 48)
        tupletFullLength = ##t
    }
}

