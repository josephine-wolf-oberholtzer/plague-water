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
				\mark \markup { \override #'(box-padding . 0.5) \box 15 }
				\tempo 8=48
				\time 2/4
				s1 * 1/2
			}
			{
				s1 * 1/2
			}
			{
				\time 5/16
				s1 * 5/16
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							r4
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
								\revert Stem.stemlet-length
							}
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
							R1 * 1/2
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs'8 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r16
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
							{
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 [
								\grace {
									\override Stem #'length = #8
									ef'16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d'16 ] \)
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r8
							r4
						}
						{
							r4
							r8
						}
					}
					{
						{
							{
								\grace {
									\override Stem #'length = #8
									c'16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs'16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
							\stopStaff
							\startStaff
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
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\clef "treble"
								d''''8 [
								\grace {
									\override Stem #'length = #8
									c''''16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d''''8 \)
								\ottava #0
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\ottava #1
								af'''16
								\grace {
									\override Stem #'length = #8
									c''''16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d''''16 \)
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e''''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs''''32
								\ottava #0
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\ottava #1
								e''''16
								\grace {
									\override Stem #'length = #8
									c''''16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs''''16 \)
								\ottava #0
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								e''''16
								\grace {
									\override Stem #'length = #8
									c''''16 [ \(
									ef''''16 ]
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs''''32 ] \)
								\ottava #0
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r16
						}
					}
				}
			}
			\context Dynamics = "Piano Dynamics" {
				{
					{
						r4
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
						r8
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						c'4 \< \ppp
					}
					{
						c'8
					}
					{
						c'8
					}
					{
						c'8
					}
					{
						c'16.
						c'32 \!
						\revert Hairpin #'stencil
					}
				}
				{
					{
						r16
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						{
							r4
						}
					}
					{
						{
							{
								\grace {
									\override Stem #'length = #8
									b''16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\clef "treble"
								cs'''16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								ef'''16 ]
								\ottava #0
								\revert Stem.stemlet-length
							}
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
							R1 * 1/2
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\grace {
									\override Stem #'length = #8
									c''16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs''8 \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e''8 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r16
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
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
						s1 * 1/4 \sustainOn
					}
					{
						s1 * 1/8
					}
					{
						s1 * 1/8
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8
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
				}
			}
		>>
		\context PercussionStaffGroup = "Percussion Staff Group" <<
			\context PercussionShakerStaff = "Percussion Shaker Staff" {
				\clef "percussion"
				\context Voice = "Percussion Shaker Voice" {
					{
						{
							r4
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 ]
								\revert Stem.stemlet-length
							}
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
							R1 * 1/2
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
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
							R1 * 1/2
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
					{
						{
							{
								\grace {
									\override Stem #'length = #8
									f16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\grace {
									\override Stem #'length = #8
									e'16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g'8 ] \)
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
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
						{
							r4
							r8
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
						}
						{
							R1 * 5/16
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