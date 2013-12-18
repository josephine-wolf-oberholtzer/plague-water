\layout {
    \accidentalStyle forget
    indent = #0
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t

    %%% COMMON %%%

    \context {
        \Voice
        \remove Forbid_line_break_engraver
        \consists Horizontal_bracket_engraver
    }

    \context {
        \Staff
        \remove Time_signature_engraver
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
        \override StaffSymbol.line-count = #1
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
        \override StaffSymbol.line-count = #1
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
        \override StaffSymbol.line-count = #1
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
        \override StaffSymbol.line-count = #1
    }

    \context {
        \Staff
        \name PianoLowerStaff
        \type Engraver_group
        \alias Staff
        \override StaffSymbol.line-count = #1
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
        \override StaffSymbol.line-count = #1
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
        \override TimeSignature #'X-extent = #'(0 . 0)
        \override TimeSignature #'X-offset = #ly:self-alignment-interface::x-aligned-on-self
        \override TimeSignature #'Y-extent = #'(0 . 0)
        \override TimeSignature #'break-align-symbol = ##f
        \override TimeSignature #'break-visibility = #end-of-line-invisible
        \override TimeSignature #'font-size = #3
        \override TimeSignature #'self-alignment-X = #CENTER
        \override VerticalAxisGroup #'default-staff-staff-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 10)
            (padding . 0)
            (stretchability . 0))
    }

    %%% SCORE %%%

    \context {
        \Score
        \accepts GuitarStaffGroup
        \accepts PercussionStaffGroup
        \accepts PianoStaffGroup
        \accepts SaxophoneStaffGroup
        \accepts TimeSignatureContext
        \override BarLine #'hair-thickness = #0.5
        \override BarNumber #'extra-offset = #'(-6 . -4)
        \override BarNumber #'font-size = #1
        \override BarNumber #'padding = #4
        \override BarNumber #'transparent = ##t
        \override Beam #'breakable = ##t
        \override DynamicLineSpanner #'Y-extent = #'(-1.5 . 1.5)
        \override Glissando #'breakable = ##t
        \override MetronomeMark #'extra-offset = #'(3 . -3)
        \override MetronomeMark #'font-size = #3
        \override NoteCollision #'merge-differently-dotted = ##t
        \override NoteColumn #'ignore-collision = ##t
        \override SpacingSpanner #'strict-grace-spacing = ##t
        \override SpacingSpanner #'strict-note-spacing = ##t
        \override SpacingSpanner #'uniform-stretching = ##t
        \override Stem #'direction = #down
        \override StemTremolo #'beam-width = #1.5
        \override StemTremolo #'flag-count = #4
        \override StemTremolo #'slope = #0.5
        \override StemTremolo #'Y-offset = #-4
        \override TextScript #'Y-extent = #'(-1.5 . 1.5)
        \override TupletBracket #'breakable = ##t
        \override TupletBracket #'direction = #down
        \override TupletBracket #'full-length-to-extent = ##f
        \override TupletBracket #'padding = #0.75
        \override TupletNumber #'font-size = #1
        \override TupletNumber #'text = #tuplet-number::calc-fraction-text
        autoBeaming = ##f
        proportionalNotationDuration = #(ly:make-moment 1 64)
        tupletFullLength = ##t
    }
}
