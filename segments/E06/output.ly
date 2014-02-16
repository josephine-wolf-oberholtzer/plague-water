\version "2.19.2"
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
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						\tag #'Segment6SaxophoneVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/8
							}
						}
						\tag #'Segment6SaxophoneVoice2
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6SaxophoneVoice3
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6SaxophoneVoice4
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6SaxophoneVoice5
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6SaxophoneVoice6
						{
							{
								R1 * 3/8
								\stopStaff
								\startStaff
							}
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
						\tag #'Segment6GuitarVoice1
						{
							{
								\override Hairpin #'circled-tip = ##t
								<g, e b d'>4. \arpeggio ~ \<
									^ \markup {
										\box
											\pad-around
												#0.5
												\large
													\bold
														\caps
															"Color Five"
										}
							}
						}
						\tag #'Segment6GuitarVoice2
						{
							{
								<g, e b d'>4. ~
							}
						}
						\tag #'Segment6GuitarVoice3
						{
							{
								<g, e b d'>4. ~
							}
						}
						\tag #'Segment6GuitarVoice4
						{
							{
								<g, e b d'>4. ~
							}
						}
						\tag #'Segment6GuitarVoice5
						{
							{
								<g, e b d'>4. ~
							}
						}
						\tag #'Segment6GuitarVoice6
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<g, e b d'>8 -\coda \fff
								\revert Hairpin #'circled-tip
							}
						}
					}
					{
						\tag #'Segment6GuitarVoice7
						{
							{
								r4
							}
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
						\tag #'Segment6PianoRHVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/8
							}
						}
						\tag #'Segment6PianoRHVoice2
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PianoRHVoice3
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PianoRHVoice4
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PianoRHVoice5
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PianoRHVoice6
						{
							{
								R1 * 3/8
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment6PianoLHVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/8
							}
						}
						\tag #'Segment6PianoLHVoice2
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PianoLHVoice3
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PianoLHVoice4
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PianoLHVoice5
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PianoLHVoice6
						{
							{
								R1 * 3/8
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment6PianoPedals1
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment6PianoPedals2
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment6PianoPedals3
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment6PianoPedals4
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment6PianoPedals5
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment6PianoPedals6
					{
						{
							R1 * 3/8
						}
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
						\tag #'Segment6PercussionShakerVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionShakerVoice2
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionShakerVoice3
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionShakerVoice4
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionShakerVoice5
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionShakerVoice6
						{
							{
								R1 * 3/8
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						\tag #'Segment6PercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionWoodblockVoice2
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionWoodblockVoice3
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionWoodblockVoice4
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionWoodblockVoice5
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionWoodblockVoice6
						{
							{
								R1 * 3/8
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						\tag #'Segment6PercussionDrumVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionDrumVoice2
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionDrumVoice3
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionDrumVoice4
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionDrumVoice5
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment6PercussionDrumVoice6
						{
							{
								R1 * 3/8
								\bar "||"
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
		>>
	>>
}