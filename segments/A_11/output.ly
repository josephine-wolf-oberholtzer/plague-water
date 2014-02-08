\version "2.19.1"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/plague-water-header.ly"
\include "../../stylesheets/plague-water-layout.ly"
\include "../../stylesheets/plague-water-paper.ly"

#(set-default-paper-size "11x17" 'landscape)
#(set-global-staff-size 14)

\score {
	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket #'color = #red
	} <<
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\mark \markup { \override #'(box-padding . 0.5) \box 11 }
				\tempo 4=64
				\time 3/16
				s1 * 3/16
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				s1 * 1/4
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				s1 * 1/2
			}
			{
				\time 3/16
				s1 * 3/16
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							c32 -\accent [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs'32 -\staccato
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							c32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							f32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							f32 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							d'32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs'32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							c'32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							f32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b,32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							c'32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							c'32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							c'32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							af32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d'32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d'32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							af32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							af32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							bf32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 4/5 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16.
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							d'32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							bf32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							bf,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							b32 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							e32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs'32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							e32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs'32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs'32 -\staccato
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
							\revert Stem.stemlet-length
						}
					}
				}
			}
		>>
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble_8"
				\context Voice = "Guitar Voice" {
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							ef32 -\accent [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b,32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							f,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							ef32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							f,32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b,32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							ef32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							f32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b,32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							ef32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							ef32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							ef32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							ef32 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							d32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							bf,32 -\staccato
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							af32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b,32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 4/5 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							bf,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							d32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							af32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b,32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							bf,32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							cs32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 4/5 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							cs32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e,32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e,32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							cs32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
				}
			}
			\context Dynamics = "Guitar Pedals" {
			}
		>>
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" <<
				\clef "treble"
				\context Voice = "Piano RH Voice" {
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16 -\accent
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							c'32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d'32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f'32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 4
							c'64 -\accent [
							\set stemLeftBeamCount = 4
							\set stemRightBeamCount = 3
							b64 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 4/5 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 4
							d'64 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs'32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d'32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r16
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 4
							r64 [
							\set stemLeftBeamCount = 4
							\set stemRightBeamCount = 4
							d64 -\accent
							\set stemLeftBeamCount = 4
							\set stemRightBeamCount = 4
							af64 -\staccato
							\set stemLeftBeamCount = 4
							\set stemRightBeamCount = 4
							bf64 -\staccato
							\set stemLeftBeamCount = 4
							\set stemRightBeamCount = 1
							r64
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b32 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf16 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r8
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d16 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af16 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 4
							r64
							\set stemLeftBeamCount = 4
							\set stemRightBeamCount = 4
							e64 -\accent
							\set stemLeftBeamCount = 4
							\set stemRightBeamCount = 4
							e64 -\staccato
							\set stemLeftBeamCount = 4
							\set stemRightBeamCount = 4
							e64 -\staccato
							\set stemLeftBeamCount = 4
							\set stemRightBeamCount = 1
							r64
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e16 -\accent
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e8 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
					}
				}
			>>
			\context Dynamics = "Piano Dynamics" {
				{
					{
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 [ \> \f
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8.
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16.
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r16
						r16
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 2
						\override Hairpin #'stencil = #constante-hairpin
						c'16 [ \< \ppp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8.
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16.
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Stem.stemlet-length
						\revert Hairpin #'stencil
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 [ \< \sfp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 0
						c'8. ]
					}
					{
						c'4
					}
					{
						\set stemLeftBeamCount = -1
						\set stemRightBeamCount = 1
						c'8 [ ~
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
						\revert Stem.stemlet-length
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" <<
				\clef "bass"
				\context Voice = "Piano LH Voice" {
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							ef,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d,32 -\accent ~
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 4
							d,64
							\set stemLeftBeamCount = 4
							\set stemRightBeamCount = 3
							ef,64 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c16 -\accent
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs,8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b,,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							c,32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							ef32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r16
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 4
							ef,64 -\accent [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							f,32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							cs,32 -\staccato
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f,16 -\accent
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d,8 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							af,,32 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,,16 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d,16 -\accent [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af,16 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r4
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs,,16 -\accent [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs,8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs,,16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e,,16 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs,16 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
							\revert Stem.stemlet-length
						}
					}
				}
			>>
			\context Dynamics = "Piano Pedals" {
				{
					{
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 3/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
						<> \sustainOff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r16
						r16
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						\override Stem.stemlet-length = 0.75
						s1 * 1/16 \sustainOn
					}
					{
						s1 * 3/16
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/16
					}
					{
						s1 * 1/8
						<> \sustainOff
						\LV
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 3/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/4 \sustainOff \sustainOn
					}
					{
						s1 * 3/16 \sustainOff \sustainOn
						<> \sustainOff
						\revert Stem.stemlet-length
					}
				}
			}
		>>
		\context PercussionStaffGroup = "Percussion Staff Group" <<
			\context PercussionShakerStaff = "Percussion Shaker Staff" {
				\clef "percussion"
				\context Voice = "Percussion RH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16
						}
						{
							f'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							af'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							af'8.
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							e'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8.
							\revert Stem.stemlet-length
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion LH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf'8. ]
						}
						{
							bf'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 [ ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}