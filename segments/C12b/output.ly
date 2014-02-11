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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b,8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c8
						}
						{
							b4
						}
						{
							d4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af16
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							af8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf8
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
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 ~
							b4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 [
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
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
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
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8 ]
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							e4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8. ]
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8 ~ [
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8
						}
						{
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef'8
						}
						{
							cs''4
						}
						{
							f'4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef'8 [
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							bf'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf'8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							bf8 [
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 ~
							d'4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 [
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
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							e'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8.
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
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
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\context Voice = "Piano RH Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							c'''8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'''16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							b''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'''8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'''16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b''16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b''8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							d'''8
						}
						{
							c'''4
						}
						{
							b''4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							d'''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'''8 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af''8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							bf''16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf''16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b''8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'''8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af''16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af''16 ~
							af''4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af''16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf''16 ]
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
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
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							\ottava #1
							cs'''4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'''8.
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'''8 ]
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							e''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'''8. ]
							\revert Stem.stemlet-length
						}
					}
				}
			}
			\context Dynamics = "Piano Dynamics" {
				{
					{
						c'4 ~ \> \f
						c'32
						c'32 \p
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
						c'8 ~ \< \ppp
						c'32
						c'32 \!
						\revert Hairpin #'stencil
					}
				}
				{
					{
						r8.
					}
				}
				{
					{
						c'8 \< \sfp
					}
					{
						c'8
					}
					{
						c'32
						c'32 \ff
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
						c'8.. \> \f
						c'32 \p
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
						c'8 \< \ppp
					}
					{
						c'4
					}
					{
						c'8..
						c'32 \!
						\revert Hairpin #'stencil
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						c'8 \< \sfp
					}
					{
						c'16.
						c'32 \ff
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						c'8 \> \f
					}
					{
						c'16
					}
					{
						c'4
					}
					{
						c'16.
						c'32 \p
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
						c'8 \< \ppp
					}
					{
						c'8 ~
						c'32
						c'32 \!
						\revert Hairpin #'stencil
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						c'16. \< \sfp
						c'32 \ff
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						c'8 \> \f
					}
					{
						c'8
					}
					{
						c'32
						c'32 \p
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
						c'4 ~ \< \ppp
						c'32
						c'32 \!
						\revert Hairpin #'stencil
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
						c'16 \< \sfp
					}
					{
						c'32
						c'32 \ff
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
						c'16. \> \f
						c'32 \p
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
						c'16. \< \ppp
						c'32 \!
						\revert Hairpin #'stencil
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
						c'8.. \< \sfp
						c'32 \ff
					}
				}
				{
					{
						r8.
					}
				}
				{
					{
						c'4 \> \f
					}
					{
						c'8 ~
						c'32
						c'32 \p
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
						c'8 ~ \< \ppp
						c'32
						c'32 \!
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
						c'8 \< \sfp
					}
					{
						c'16.
						c'32 \ff
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
						c'4 \> \f
					}
					{
						c'16.
						c'32 \p
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
						c'4 ~ \< \ppp
						c'16
					}
					{
						c'8 ~
						c'32
						c'32 \!
						\revert Hairpin #'stencil
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef'8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef'16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f''8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef'16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs''16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8
						}
						{
							ef''4
						}
						{
							cs''4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef''8 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf'8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
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
							\override Stem.stemlet-length = 1.5
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
							d''8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af''8
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
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf'16 ~
							bf'4
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
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
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							e'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8.
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e''8 ]
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							cs''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e''8. ]
							\revert Stem.stemlet-length
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						s1 * 5/16 \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 3/16 \sustainOn
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r8.
					}
				}
				{
					{
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16
						<> \sustainOff
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
						s1 * 1/4 \sustainOn
						<> \sustainOff
						\LV
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
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/4 \sustainOff \sustainOn
					}
					{
						s1 * 1/4
						<> \sustainOff
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r8
					}
				}
				{
					{
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 3/16
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						s1 * 1/8 \sustainOn
						<> \sustainOff
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8 \sustainOn
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8
					}
					{
						s1 * 1/16
						<> \sustainOff
						\LV
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
						s1 * 5/16 \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/16 \sustainOn
					}
					{
						s1 * 1/16
						<> \sustainOff
						\LV
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
						s1 * 1/8 \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8 \sustainOn
						<> \sustainOff
						\LV
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
						s1 * 1/4 \sustainOn
						<> \sustainOff
					}
				}
				{
					{
						r8.
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/4 \sustainOn
					}
					{
						s1 * 3/16
						<> \sustainOff
						\LV
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
						s1 * 3/16 \sustainOn
						<> \sustainOff
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
						\LV
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
						s1 * 1/4 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 5/16 \sustainOn
					}
					{
						s1 * 3/16
						\LV
					}
				}
			}
		>>
		\context PercussionStaffGroup = "Percussion Staff Group" <<
			\context PercussionShakerStaff = "Percussion Shaker Staff" {
				\clef "percussion"
				\context Voice = "Percussion Shaker Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
							g4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8
						}
						{
							f'4
						}
						{
							g4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 [
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							b8
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 ~
							b4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 [
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
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
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
							\override Stem.stemlet-length = 1.5
							f'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g8.
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							b8.
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 [
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
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							g16
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
							\override Stem.stemlet-length = 1.5
							d'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8. ]
							\revert Stem.stemlet-length
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
							f4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g'16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8
						}
						{
							c'4
						}
						{
							e'4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g'16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							c'8
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 ~
							a4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g'16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
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
							\override Stem.stemlet-length = 1.5
							c'4
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							g'8.
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16
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
							\override Stem.stemlet-length = 1.5
							g'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							g'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8. ]
							\revert Stem.stemlet-length
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
							a4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8
						}
						{
							c'4
						}
						{
							e'4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 [
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16
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
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8. ]
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							e'8
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 ~
							a4
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 ~ [
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
							\override Stem.stemlet-length = 1.5
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
							\override Stem.stemlet-length = 1.5
							a4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8.
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 [
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
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
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
							a16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
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
							\override Stem.stemlet-length = 1.5
							c'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16 [
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