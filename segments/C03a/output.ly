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
				\mark \markup { \override #'(box-padding . 0.5) \box 3A }
				\tempo 4=72
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
				\time 4/16
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
				s1 * 1/2
			}
			{
				\time 4/4
				s1 * 1
			}
			{
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
				\time 4/16
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
				\time 2/8
				s1 * 1/4
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				\time 4/16
				s1 * 1/4
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							c,4
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							b,8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d,16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b,8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d16 ]
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							c8
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							b,8
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							d8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							d4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf,8 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							bf,8 [
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af16 ]
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						{
							af,4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf8.
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
							\set stemRightBeamCount = 1
							bf,8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							bf,8
						}
						{
							b4
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e8 ]
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							e8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e8. ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e8. [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
						}
					}
					{
						{
							r8.
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
							ef'4
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							cs'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
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
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ]
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							ef'8
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							cs'8
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							f'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							af4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf'8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							bf'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf'16 ]
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						{
							bf4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b'8.
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
							\set stemRightBeamCount = 1
							b8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8
						}
						{
							d'4
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8 ]
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							cs'8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8. ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8. [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
						}
					}
					{
						{
							r8.
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
							\ottava #1
							\clef treble
							d'''4
							\ottava #0
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							\ottava #1
							c'''8
							\ottava #0
						}
					}
					{
						{
							r8
						}
					}
					{
						{
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
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							b''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'''8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'''8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'''8 ]
							\ottava #0
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b''8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b''16 ]
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							\ottava #1
							d'''8
							\ottava #0
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							\ottava #1
							c'''8
							\ottava #0
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							b''8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							bf''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b''8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'''8 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						{
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b''16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b''16 ]
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						{
							\ottava #1
							b''4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'''8.
							\ottava #0
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
							\set stemRightBeamCount = 1
							\ottava #1
							d'''8
							\ottava #0
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							d'''8
						}
						{
							af'''4
							\ottava #0
						}
					}
					{
						{
							r8
						}
					}
					{
						{
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e''8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e''16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e''8 ]
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							e''8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'''8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e''8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e''8. ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e''8. [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'''16 ]
						}
					}
					{
						{
							r8.
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						{
							\clef treble
							f'4
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							ef'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
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
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f''8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs''8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ]
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							f'8
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							ef'8
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							cs''8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							b'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af'8 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						{
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d''16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d''16 ]
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						{
							d''4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af''8.
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
							\set stemRightBeamCount = 1
							af'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							af'8
						}
						{
							bf'4
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs''8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs''16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8 ]
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							cs''8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e''8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs''8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8. ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs''8. [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''16 ]
						}
					}
					{
						{
							r8.
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						\stopStaff
						\once \override Staff.StaffSymbol.line-count = 1
						\startStaff
						R1 * 1/4
					}
					{
						R1 * 1/2
					}
					{
						R1 * 1/4
					}
					{
						R1 * 1/4
					}
					{
						R1 * 1
					}
					{
						R1 * 1/2
					}
					{
						R1 * 1/2
					}
					{
						R1 * 1
					}
					{
						R1 * 1
					}
					{
						R1 * 1/2
					}
					{
						R1 * 1/4
					}
					{
						R1 * 1/4
					}
					{
						R1 * 1/4
					}
					{
						R1 * 1/2
					}
					{
						R1 * 1
					}
					{
						R1 * 1/4
					}
					{
						R1 * 1
					}
					{
						R1 * 1/4
						\stopStaff
						\startStaff
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
							g4
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							b8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
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
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16 ]
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							b8
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							d'8
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							f'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							g4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							g16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ]
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						{
							g4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8.
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
							\set stemRightBeamCount = 1
							d'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8
						}
						{
							g4
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8 ]
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							d'8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8. ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8. [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16 ]
						}
					}
					{
						{
							r8.
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						{
							f4
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							a8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
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
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							g'8
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							f8
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							a8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							c'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f8 [
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 ~ [
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
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						{
							f4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8.
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
							\set stemRightBeamCount = 1
							c'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8
						}
						{
							g'4
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8 ]
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							f8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8. ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f8. [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
						}
					}
					{
						{
							r8.
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						{
							a4
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							c'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
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
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							a8
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							c'8
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							e'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							a4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						{
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						{
							e'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8.
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
							\set stemRightBeamCount = 1
							c'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8
						}
						{
							a4
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
						}
					}
					{
						{
							r8
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							a8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8. ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8. [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
						}
					}
					{
						{
							r8.
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}