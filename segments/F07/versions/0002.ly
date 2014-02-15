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
				\mark \markup { \override #'(box-padding . 0.5) \box 7 }
				\tempo 8=48
				\time 5/16
				s1 * 5/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 5/16
				s1 * 5/16
			}
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c''
				\context Voice = "Saxophone Voice" {
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a,16 -\staccatissimo \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 -\staccatissimo ] \)
						}
					}
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							e32 -\staccatissimo \pp [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e16 -\staccatissimo
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\afterGrace
							a16 -\staccatissimo
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								e16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a16 -\staccatissimo \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 -\staccatissimo ]
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a16 -\staccatissimo \ppp
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a32 -\staccatissimo ]
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
		\tag score.guitar
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble"
				\transpose c c'
				\context Voice = "Guitar Voice" {
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							c'16 -\staccatissimo \ppp [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								c''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16 -\staccatissimo \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c'16 -\staccatissimo
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							e'32 -\staccatissimo ]
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
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 \p \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 -\staccatissimo \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a'16 -\staccatissimo ]
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 -\staccatissimo \pp ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c''16 -\staccatissimo
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c'16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							\clef treble
							e''''16 -\staccatissimo \pp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a''''16 -\staccatissimo
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
					{
						{
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							e''''16 -\staccatissimo [ \> \ppp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''''8 -\staccatissimo
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c''''16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''''16 -\staccatissimo ] \!
							\ottava #0
							\revert Hairpin #'circled-tip
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							e''''8 -\staccatissimo \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a''''16 -\staccatissimo ]
							\ottava #0
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
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							\clef treble
							a''8 -\staccatissimo [ \> \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a'''16 -\staccatissimo
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'''16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a''16 -\staccatissimo ] \!
							\ottava #0
							\revert Hairpin #'circled-tip
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							a''16 -\staccatissimo \pp [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a'''8 -\staccatissimo ]
							\ottava #0
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							a''16 -\staccatissimo \ppp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c''''16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'''16 -\staccatissimo ]
							\ottava #0
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
						s1 * 3/16 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
					}
				}
				{
					{
						R1 * 7/16
					}
					{
						r8
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 3/16 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r16
					}
					{
						R1 * 3/4
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
						r8.
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 -\staccatissimo \ppp
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							e'32 -\staccatissimo ]
						}
					}
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c'16 -\staccatissimo \pp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16 -\staccatissimo
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c'16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 -\staccatissimo ]
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 -\staccatissimo \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 -\staccatissimo ]
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
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
						}
						{
							R1 * 7/16
						}
						{
							R1 * 1/2
						}
						{
							R1 * 3/4
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 \mp [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								\override Hairpin #'circled-tip = ##t
								a16 \> \sfp \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							c'8 ~ ] \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							c'4
							c'4 \!
							\revert Hairpin #'circled-tip
						}
					}
					{
						{
							r8
						}
						{
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								c'16 \< \mp \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							e'4 \)
							a4 ~
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\afterGrace
							a4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							c'2 \f \)
						}
					}
					{
						{
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							\afterGrace
							e'4 \mp
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							a4 \)
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}