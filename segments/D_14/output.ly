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
				\mark \markup { \override #'(box-padding . 0.5) \box 14 }
				\tempo 4=96
				\time 7/16
				s1 * 7/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				s1 * 3/16
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				s1 * 5/8
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 11/16
				s1 * 11/16
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				s1 * 3/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				s1 * 3/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
			{
				\time 7/16
				s1 * 7/16
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
							\set stemRightBeamCount = 1
							c,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b,16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b,16 ]
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef,16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d,16 ]
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
							cs,8. [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,8 ] ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							cs,8
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
							\set stemRightBeamCount = 2
							c,16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f,8. [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f,16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef8. ]
						}
						{
							f,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f,16
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
							f,16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f,16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs8. ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
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
							c,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d8 ]
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
							c,8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8. ]
						}
						{
							d,4
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
							d,16 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d,8 ]
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs16 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d8 ]
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
							af,8
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
							af,8 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af,8. ] ]
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
							bf,8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d8 ]
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
							\set stemRightBeamCount = 1
							af,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							af,8
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
							bf,16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf,16 ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
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
							d,16 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d,8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d,16 ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							b,8.
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
							d,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af,8 ]
						}
						{
							b,4
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
							\set stemRightBeamCount = 2
							bf,16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af,8 ]
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
							d,4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf,8.
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
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
							d,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf,8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf,16 ] ]
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
							e,4
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs16
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
							cs,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,8. ]
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
							e,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							cs,4
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
							cs,8
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
							e,8
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
							cs,8
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
							e,16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e,8 ]
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
							e,4
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
							e,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs,16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs,16 ] ]
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
							e,16 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e,8 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e,8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e,16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e,8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e,16 ] ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef''8. [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef''16 ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
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
							b'16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ] ]
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
							d''16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d''16 ] ]
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
							c''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs''8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''16
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
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							d''4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c''8.
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
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
							c''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef''8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef''16 ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef''8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f''8 ]
						}
						{
							ef''4
						}
						{
							b'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							b'8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef''8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef''16 ] ]
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
							d''16 ~
							d''4
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
							d''8
						}
						{
							b''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b''16
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
							d''16 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8. ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b''16
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
							r8
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							bf'8
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
							b'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d''16 ] ]
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
							b'16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
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
							af'16 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16 ] ]
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
							bf'16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d''16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8. ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ] ]
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
							bf'16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf'16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d''16 ] ]
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
							\set stemRightBeamCount = 1
							af'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8. ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d''8 ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d''16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf'8
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
							r16
						}
						{
							r8
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
							cs''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''16 ] ]
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
							\set stemRightBeamCount = 1
							cs''8 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''16 ]
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
							\set stemRightBeamCount = 1
							cs''8 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8 ] ]
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
							e''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''16
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs''16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r8
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
							cs''8
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
							e''8
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
							cs''8 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs''16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8. ]
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
							e''4
						}
						{
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							e''8 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e''8 ]
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
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
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
						{
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 [ \glissando
								^ \markup {
									\center-align
										\natural
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 \glissando
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f'16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f'16 \glissando
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							ef'16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b16 \glissando
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16 \glissando
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d'16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a'16 \glissando
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f''16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f'16 \glissando
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							ef''16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16 \glissando
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d''16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c''16 \glissando
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							g'16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f'16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							ef''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b'32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r8
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
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
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
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16
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
						r8
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" <<
				\clef "bass"
				\context Voice = "Piano LH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d,,8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,8 ]
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
							f,,8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c,8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f,,8 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef,,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f,,8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
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
							cs,,8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c,16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c,16 ] ]
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
							b,,,16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,,,16 ] ]
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
							b,,,8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b,,,8.
						}
						{
							c,4
						}
						{
							b,,,4
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
							cs,,8
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
							\set stemRightBeamCount = 2
							d,,16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef,,8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f,,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b,,16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b,,8 ] ]
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
							b,,,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f,,16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f,,8. ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b,,,16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b,,,8 ] ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							bf,,,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af,,8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d,,8. ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d,,8 ] ]
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
							af,,4
						}
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							bf,,8. [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,,,16 ]
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
							d,,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf,,8 ]
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
							bf,,,8 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf,,,16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d,16 ] ~
							d,4
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
							bf,,,16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf,,,16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d,16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d,16 ] ]
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
							b,,,16
						}
						{
							af,,4
						}
						{
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							af,,8 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af,,8 ] ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							bf,,,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b,,8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r8.
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b,,,16 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,,,8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b,,,16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							bf,,16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf,,16 ]
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af,,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d,,8. ]
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
							\set stemRightBeamCount = 2
							d,,16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf,,16 ]
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
							b,,,8 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,,,8 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs,8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,,8 ]
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
							\set stemRightBeamCount = 2
							e,,16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs,,8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e,,8. ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e,,8 ] ]
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
							\set stemRightBeamCount = 2
							e,,16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs,16 ]
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
							cs,,8 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,,8 ] ]
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
							e,,8
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
							cs,,16 ~
							cs,,4
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
							cs,,16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,,8. ]
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
							cs,,4
						}
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e,,8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,,16 ]
						}
						{
							cs,,4
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							cs,,8
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
							cs,,16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e,,8. ]
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
							e,,8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
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
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
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
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/16 \sustainOff \sustainOn
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
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
						<> \sustainOff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r8
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
							f'8
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
							c'16 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ] ]
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
							ef'8.
						}
						{
							b'4
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
							b'8. [
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
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							ef'16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef'16 ] ]
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
							cs'16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ] ]
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
							cs'16 ~
							cs'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8.
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
							d'8 [
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
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f'16 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8 ] ]
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
							r16
						}
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
							cs'16 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef'8 ]
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
							cs'16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef'16 ] ]
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
							b'16 [
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
							r8.
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
							b'8 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b'8 ] ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af'8 ]
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
							b'8 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b'16 ]
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af'16 ] ~
							af'4
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
							b'8
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
							\set stemRightBeamCount = 0
							bf'8 ]
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
							bf'8 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf'8 ] ]
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
							\set stemRightBeamCount = 1
							af'8. [
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
							r8
						}
						{
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							bf'8
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
							b'8
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
							r8
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
							b'16 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8. [
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
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ] ]
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
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							e'4
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ] ]
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
							e'16 [
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
							r4
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
							r16
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 [ ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16 ]
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8. ]
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
							cs'16 [ ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8 ] ]
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
							cs'8
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
							cs'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\bar "||"
							\stopStaff
							\startStaff
						}
					}
				}
			}
		>>
	>>
}