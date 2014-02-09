\version "2.19.1"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/plague-water-header.ly"
\include "../../stylesheets/plague-water-layout.ly"
\include "../../stylesheets/plague-water-paper.ly"

\score {
	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket #'color = #red
	} <<
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\mark \markup { \override #'(box-padding . 0.5) \box 12B }
				\tempo 4=72
				\time 4/4
				s1 * 1
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				\time 2/8
				s1 * 1/4
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
				\time 4/4
				s1 * 1
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
				\time 2/4
				s1 * 1/2
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				\time 4/8
				s1 * 1/2
			}
			{
				\time 4/4
				s1 * 1
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
				\time 4/8
				s1 * 1/2
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				\time 2/4
				s1 * 1/2
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							c4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c16
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs16 ]
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
							\set stemRightBeamCount = 1
							b,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d16 ]
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
							ef16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef8. ]
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
							c8
						}
						{
							cs'4
						}
						{
							b,4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							bf16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b16
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
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							af8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							bf8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d16 ]
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
							af16 ~
							af4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af16 ]
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
							\set stemRightBeamCount = 1
							cs'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
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
							e4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8.
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
							e8.
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							cs'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8. ]
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
						{
							\override Stem.stemlet-length = 0.75
							ef'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef'16
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
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
							\set stemRightBeamCount = 1
							cs'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ]
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
							d'16 ~ [
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
							ef'8
						}
						{
							c''4
						}
						{
							cs'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af'8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							bf8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16 ]
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
							bf16 ~
							bf4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d''16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf16 ]
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
							\set stemRightBeamCount = 1
							e'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							cs'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8.
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
							cs'8.
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs''16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ]
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
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							e'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8. ]
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
				\context Voice = "Piano RH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\ottava #1
							\clef "treble"
							d'''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'''16
							\ottava #0
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef''8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef''16 ]
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
							\set stemRightBeamCount = 1
							\ottava #1
							c'''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'''8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b''16 ]
							\ottava #0
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
							f''16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f''8. ]
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
							\ottava #1
							d'''8
						}
						{
							ef'''4
						}
						{
							c'''4
							\ottava #0
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							cs'''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b''8 ]
							\ottava #0
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b''8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'''16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'''16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf''8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							b''8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							d'''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af'''8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf''16 ]
							\ottava #0
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
							b''16 ~
							b''4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							d'''16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'''16 ]
							\ottava #0
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf''16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b''16 ]
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
							\set stemRightBeamCount = 1
							\ottava #1
							cs'''8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'''16 ]
							\ottava #0
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
							e''4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'''8.
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
							e''8.
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							cs'''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'''8 ]
							\ottava #0
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							cs'''16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'''8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'''16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'''16 ]
							\ottava #0
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
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\ottava #1
							cs'''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'''8. ]
							\ottava #0
							\revert Stem.stemlet-length
						}
					}
				}
			>>
			\context Dynamics = "Piano Dynamics" {
				{
					{
						\override Stem.stemlet-length = 0.75
						c'4 ~ \> \f
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 3
						c'32 [
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r8.
						r8
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 ~ [ \< \ppp
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
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
						\set stemRightBeamCount = 3
						c'32
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
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
						\set stemRightBeamCount = 1
						c'8.. [ \> \f
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
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
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 \< \ppp
					}
					{
						c'4
					}
					{
						\set stemLeftBeamCount = -1
						\set stemRightBeamCount = 1
						c'8.. [
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r4
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
						\set stemRightBeamCount = 2
						c'16.
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
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
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 [ \> \f
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 0
						c'16 ]
					}
					{
						c'4
					}
					{
						\set stemLeftBeamCount = -1
						\set stemRightBeamCount = 2
						c'16. [
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r16
						r8.
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 [ \< \ppp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8 ~
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 2
						c'16. [ \< \sfp
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
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
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 [ \> \f
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
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
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						c'4 ~ \< \ppp
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 3
						c'32 [
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r8
						r16
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 2
						c'16 [ \< \sfp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r16
						r8
						r16
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 2
						c'16. [ \> \f
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r16
					}
					{
						r16
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 2
						c'16. [ \< \ppp
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
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
						\set stemRightBeamCount = 1
						c'8.. [ \< \sfp
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
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
						c'4 \> \f
					}
					{
						\set stemLeftBeamCount = -1
						\set stemRightBeamCount = 1
						c'8 ~ [
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
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
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 ~ [ \< \ppp
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
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
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 [ \< \sfp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16.
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r8
					}
					{
						r16
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						c'4 \> \f
					}
					{
						\set stemLeftBeamCount = -1
						\set stemRightBeamCount = 2
						c'16. [
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
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
						R1 * 1/4
						\stopStaff
						\startStaff
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						c'4 ~ \< \ppp
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16 [
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8 ~
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
						\revert Stem.stemlet-length
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" <<
				\context Voice = "Piano LH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\clef "treble"
							f'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d''8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d''16 ]
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
							\set stemRightBeamCount = 1
							ef'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ]
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
							b'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b'8. ]
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
							f'8
						}
						{
							d''4
						}
						{
							ef'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b'8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							d''8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							af'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
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
							d''16 ~
							d''4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af'16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d''16 ]
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
							\set stemRightBeamCount = 1
							e'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							cs''4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e''8.
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
							cs''8.
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs''16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ]
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
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							e'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8. ]
							\revert Stem.stemlet-length
						}
					}
				}
			>>
			\context Dynamics = "Piano Pedals" {
				{
					{
						\override Stem.stemlet-length = 0.75
						s1 * 5/16 \sustainOn
						<> \sustainOff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r8.
						r8
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 3/16 \sustainOn
						<> \sustainOff
						\LV
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
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16
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
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/4 \sustainOn
						<> \sustainOff
						\LV
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
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/4 \sustainOff \sustainOn
					}
					{
						s1 * 1/4
						<> \sustainOff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/8 \sustainOn
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
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/4 \sustainOff \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r16
						r8.
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 3/16
						<> \sustainOff
						\LV
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/8 \sustainOn
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/8
					}
					{
						s1 * 1/16
						<> \sustainOff
						\LV
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
						s1 * 5/16 \sustainOn
						<> \sustainOff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r8
						r16
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/16 \sustainOn
					}
					{
						s1 * 1/16
						<> \sustainOff
						\LV
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r16
						r8
						r16
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
						<> \sustainOff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r16
					}
					{
						r16
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/8 \sustainOn
						<> \sustainOff
						\LV
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
						s1 * 1/4 \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/4 \sustainOn
					}
					{
						s1 * 3/16
						<> \sustainOff
						\LV
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
						s1 * 3/16 \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/8 \sustainOn
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
					{
						r16
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						s1 * 1/4 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
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
						R1 * 1/4
						\stopStaff
						\startStaff
					}
				}
				{
					{
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 5/16 \sustainOn
					}
					{
						s1 * 3/16
						\sustainOff
						\LV
						\revert Stem.stemlet-length
					}
				}
			}
		>>
		\context PercussionStaffGroup = "Percussion Staff Group" <<
			\context PercussionStaff = "Percussion Staff" {
				\clef "percussion"
				\context Voice = "Percussion Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							b'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ]
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
							\set stemRightBeamCount = 1
							d'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
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
							cs'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8. ]
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
							b'8
						}
						{
							f'4
						}
						{
							d'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af'8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							bf'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b'16
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
							r4
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							bf'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
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
							af'16 ~
							af'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf'16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16 ]
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
							\set stemRightBeamCount = 1
							cs'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
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
							e'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8.
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
							e'8.
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							cs'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8. ]
							\bar "||"
							\revert Stem.stemlet-length
						}
					}
				}
			}
		>>
	>>
}