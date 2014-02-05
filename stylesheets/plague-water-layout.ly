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

    %%% E-GUITAR %%%

    \context {
        \Staff
        \name GuitarStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = 5
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { e-guitar } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { e-guitar } } }
    }

    \context {
        \StaffGroup
        \name GuitarStaffGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts GuitarStaff
    }

    %%% PERCUSSION %%%

    \context {
        \Staff
        \name PercussionShakerStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = 3
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { shakers } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { shakers } } }
    }

    \context {
        \Staff
        \name PercussionDrumStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = 3
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { drums } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { drums } } }
    }

    \context {
        \StaffGroup
        \name PercussionStaffGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts PercussionShakerStaff
        \accepts PercussionDrumStaff
    }

    %%% PIANO %%%

    \context {
        \Staff
        \name PianoUpperStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = 5
    }

    \context {
        \Staff
        \name PianoLowerStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = 5
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

    %%% SAXOPHONE %%%

    \context {
        \Staff
        \name SaxophoneStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = 5
        instrumentName = \markup { 
            \column { \hcenter-in #10 \italic { saxophone } } }
        shortInstrumentName = \markup { 
            \column { \hcenter-in #10 \italic { saxophone } } }
    }

    \context {
        \StaffGroup
        \name SaxophoneStaffGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts SaxophoneStaff
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
        \override BarNumber.extra-offset = #'(-8 . -2)
        \override BarNumber.font-name = "Didot Italic"
        \override BarNumber.font-size = 1
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print)
        \override MetronomeMark.X-extent = #'(0 . 0)
        \override MetronomeMark.X-offset = #ly:self-alignment-interface::x-aligned-on-self
        \override MetronomeMark.break-align-symbols = #'(time-signature)
        \override MetronomeMark.font-size = 3
        \override RehearsalMark.X-extent = #'(0 . 0)
        \override RehearsalMark.break-align-symbols = #'(time-signature)
        \override RehearsalMark.break-visibility = #end-of-line-invisible
        \override RehearsalMark.extra-offset = #'(-1 . 0)
        \override RehearsalMark.font-name = "Didot"
        \override RehearsalMark.font-size = 10
        \override RehearsalMark.self-alignment-X = #CENTER
        \override TimeSignature.X-extent = #'(0 . 0)
        \override TimeSignature.break-align-symbols = #'(staff-bar)
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 3
        \override TimeSignature.style = #'numbered
        \override MetronomeMark.extra-offset = #'(3 . -5.5)
        \override TimeSignature.extra-offset = #'(-2 . 0)
        \override VerticalAxisGroup.default-staff-staff-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 10)
            (padding . 0)
            (stretchability . 0)
            )
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
        \override Beam.beam-thickness = 0.75
        \override Beam.breakable = ##t
        \override Beam.length-fraction = 1.5
        \override DynamicLineSpanner.Y-extent = #'(-1.5 . 1.5)
        \override Glissando.breakable = ##t
        \override Glissando.thickness = 3
        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteColumn.ignore-collision = ##t
        \override PhrasingSlur.dash-definition = #'((0 1 0.1 0.75))
        \override SpacingSpanner.strict-grace-spacing = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        \override SpacingSpanner.uniform-stretching = ##t
        \override StaffGrouper.staffgroup-staff-spacing = #'(
            (basic-distance . 10.5)
            (minimum-distance . 10)
            (padding . 1)
            (stretchability . 0)
            )
        %\override Stem.french-beaming = ##t
        \override Stem #'(details beamed-lengths) = #'(6)
        \override StemTremolo.beam-width = 1.5
        \override StemTremolo.flag-count = 4.0
        \override StemTremolo.slope = 0.5
        \override StemTremolo.Y-offset = -4.0
        \override TextScript.Y-extent = #'(-1.5 . 1.5)
        \override TupletBracket.breakable = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 2.0
        \override TupletNumber.font-size = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        autoBeaming = ##f
        pedalSustainStyle = #'bracket
        proportionalNotationDuration = #(ly:make-moment 1 48)
        tupletFullLength = ##t
    }
}
