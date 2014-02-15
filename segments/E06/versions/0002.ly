\version "2.19.1"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/plague-water-header.ily"
\include "../../stylesheets/plague-water-layout.ily"
\include "../../stylesheets/plague-water-paper.ily"

\score {
	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket #'color = #red
	} <<
		\tag score.saxophone.guitar.piano.percussion
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\mark \markup { \override #'(box-padding . 0.5) \box 6 }
				\tempo 4=112
				\time 3/8
				s1 * 3/8
			}
			{
				s1 * 3/8
			}
			{
				s1 * 3/8
			}
			{
				s1 * 3/8
			}
			{
				s1 * 3/8
			}
			{
				s1 * 3/8
			}
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c''
				\context Voice = "Saxophone Voice" {
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c,8
						}
						{
							b,4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f,8
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
							ef,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b,16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 ]
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
							b,16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs8 ]
						}
					}
					{
						{
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/8
							\stopStaff
							\startStaff
						}
					}
				}
			}
		>>
		\tag score.guitar
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble"
				\transpose c c'
				\context Voice = "Guitar Voice" {
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							ef16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d16 ]
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
							\set stemRightBeamCount = 2
							cs16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs16 ]
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
							\set stemRightBeamCount = 2
							b,16 ~
							b,4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af8
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e,8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e,16 ]
						}
					}
					{
						{
							r16
							r4
						}
					}
				}
			}
		>>
		\tag score.piano
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\context Voice = "Piano RH Voice" {
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\clef treble
							d''8
						}
						{
							cs'''4
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
							c''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c''16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d'''16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af''16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf''8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af''8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af''16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'''8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'''16 ]
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
							R1 * 3/8
							\stopStaff
							\startStaff
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\clef bass
							f,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c8 ]
						}
					}
					{
						{
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
							bf,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf,16
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
							\set stemRightBeamCount = 2
							d,16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d,8
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
							e,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e,16 ]
						}
					}
					{
						{
							r16
							r4
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						R1 * 3/8
					}
					{
						R1 * 3/8
					}
					{
						R1 * 3/8
					}
					{
						R1 * 3/8
					}
					{
						R1 * 3/8
					}
					{
						R1 * 3/8
					}
				}
			}
		>>
		\tag score.percussion
		\context PercussionStaffGroup = "Percussion Staff Group" <<
			\context PercussionShakerStaff = "Percussion Shaker Staff" {
				\clef "percussion"
				\context Voice = "Percussion Shaker Voice" {
					{
						{
							g4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
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
							d'4
						}
						{
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							f'8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ]
						}
					}
					{
						{
							r16
							r8
						}
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16 ]
						}
					}
					{
						{
							r16
							r8
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 ]
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
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8 ]
						}
					}
					{
						{
							r4
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8
						}
						{
							c'4
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							e'4
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
							\set stemRightBeamCount = 0
							e'16 ]
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
							r8
						}
						{
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
							r8
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}