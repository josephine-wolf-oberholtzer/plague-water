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
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c,8
							}
						}
						\tag #'Segment6SaxophoneVoice2
						{
							{
								b,4
							}
						}
						\tag #'Segment6SaxophoneVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f,8
							}
						}
					}
					{
						\tag #'Segment6SaxophoneVoice4
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment6SaxophoneVoice5
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								ef,8 [
							}
						}
						\tag #'Segment6SaxophoneVoice6
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d8 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
							}
						}
					}
					{
						\tag #'Segment6SaxophoneVoice7
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment6SaxophoneVoice8
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment6SaxophoneVoice9
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
					}
					{
						\tag #'Segment6SaxophoneVoice10
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment6SaxophoneVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b,16 [
							}
						}
						\tag #'Segment6SaxophoneVoice12
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs8 ]
							}
						}
					}
					{
						\tag #'Segment6SaxophoneVoice13
						{
							{
								r4
							}
						}
						\tag #'Segment6SaxophoneVoice14
						{
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
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								ef8 ~ [
									^ \markup {
										\box
											\pad-around
												#0.5
												\large
													\bold
														\caps
															"Color Five"
										}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								ef16
							}
						}
						\tag #'Segment6GuitarVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
							}
						}
					}
					{
						\tag #'Segment6GuitarVoice3
						{
							{
								r16
							}
						}
						\tag #'Segment6GuitarVoice4
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment6GuitarVoice5
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
					}
					{
						\tag #'Segment6GuitarVoice6
						{
							{
								r16
							}
						}
						\tag #'Segment6GuitarVoice7
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment6GuitarVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b,16 ~
								b,4
							}
						}
						\tag #'Segment6GuitarVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af8
							}
						}
					}
					{
						\tag #'Segment6GuitarVoice10
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment6GuitarVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e,8 ~ [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e,16
							}
						}
						\tag #'Segment6GuitarVoice12
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs16 ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs8
							}
						}
						\tag #'Segment6GuitarVoice13
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e,16 ]
							}
						}
					}
					{
						\tag #'Segment6GuitarVoice14
						{
							{
								r16
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
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\clef treble
								d''8
							}
						}
						\tag #'Segment6PianoRHVoice2
						{
							{
								cs'''4
							}
						}
					}
					{
						\tag #'Segment6PianoRHVoice3
						{
							{
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment6PianoRHVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c''16 ~ [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c''16
							}
						}
						\tag #'Segment6PianoRHVoice5
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'''16
							}
						}
						\tag #'Segment6PianoRHVoice6
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af''16 ]
							}
						}
					}
					{
						\tag #'Segment6PianoRHVoice7
						{
							{
								r16
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment6PianoRHVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d''16 [
							}
						}
						\tag #'Segment6PianoRHVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								bf''8
							}
						}
						\tag #'Segment6PianoRHVoice10
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								af''8 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af''16
							}
						}
						\tag #'Segment6PianoRHVoice11
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d''16
							}
						}
						\tag #'Segment6PianoRHVoice12
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs'''8 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs'''16 ]
							}
						}
					}
					{
						\tag #'Segment6PianoRHVoice13
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment6PianoRHVoice14
						{
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
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment6PianoLHVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\clef bass
								f,8 [
							}
						}
						\tag #'Segment6PianoLHVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c8 ]
							}
						}
					}
					{
						\tag #'Segment6PianoLHVoice3
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment6PianoLHVoice4
						{
							{
								\set stemRightBeamCount = 1
								b,8
							}
						}
					}
					{
						\tag #'Segment6PianoLHVoice5
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment6PianoLHVoice6
						{
							{
								bf,4 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								bf,16
							}
						}
					}
					{
						\tag #'Segment6PianoLHVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment6PianoLHVoice8
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment6PianoLHVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d,16 ~ [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d,8
							}
						}
						\tag #'Segment6PianoLHVoice10
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								bf,8 ]
							}
						}
					}
					{
						\tag #'Segment6PianoLHVoice11
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment6PianoLHVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e,8 [
							}
						}
						\tag #'Segment6PianoLHVoice13
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs8
							}
						}
						\tag #'Segment6PianoLHVoice14
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e,16 ]
							}
						}
					}
					{
						\tag #'Segment6PianoLHVoice15
						{
							{
								r16
								r4
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
								g4
							}
						}
						\tag #'Segment6PercussionShakerVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8
							}
						}
					}
					{
						\tag #'Segment6PercussionShakerVoice3
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment6PercussionShakerVoice4
						{
							{
								d'4
							}
						}
						\tag #'Segment6PercussionShakerVoice5
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								f'8 ~ [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f'16 ]
							}
						}
					}
					{
						\tag #'Segment6PercussionShakerVoice6
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment6PercussionShakerVoice7
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment6PercussionShakerVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 [
							}
						}
						\tag #'Segment6PercussionShakerVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8
							}
						}
						\tag #'Segment6PercussionShakerVoice10
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d'16 ]
							}
						}
					}
					{
						\tag #'Segment6PercussionShakerVoice11
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment6PercussionShakerVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f'8 [
							}
						}
						\tag #'Segment6PercussionShakerVoice13
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g16 ]
							}
						}
					}
					{
						\tag #'Segment6PercussionShakerVoice14
						{
							{
								r16
								r8
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
								\set stemRightBeamCount = 1
								f8
							}
						}
					}
					{
						\tag #'Segment6PercussionWoodblockVoice2
						{
							{
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment6PercussionWoodblockVoice3
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 [
							}
						}
						\tag #'Segment6PercussionWoodblockVoice4
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
							}
						}
					}
					{
						\tag #'Segment6PercussionWoodblockVoice5
						{
							{
								r16
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment6PercussionWoodblockVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 [
							}
						}
						\tag #'Segment6PercussionWoodblockVoice7
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g'8 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g'16 ]
							}
						}
					}
					{
						\tag #'Segment6PercussionWoodblockVoice8
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment6PercussionWoodblockVoice9
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment6PercussionWoodblockVoice10
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
					}
					{
						\tag #'Segment6PercussionWoodblockVoice11
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment6PercussionWoodblockVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 [
							}
						}
						\tag #'Segment6PercussionWoodblockVoice13
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
							}
						}
						\tag #'Segment6PercussionWoodblockVoice14
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
							}
						}
						\tag #'Segment6PercussionWoodblockVoice15
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g'8 ]
							}
						}
					}
					{
						\tag #'Segment6PercussionWoodblockVoice16
						{
							{
								r4
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
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8
							}
						}
						\tag #'Segment6PercussionDrumVoice2
						{
							{
								c'4
							}
						}
					}
					{
						\tag #'Segment6PercussionDrumVoice3
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment6PercussionDrumVoice4
						{
							{
								e'4
							}
						}
					}
					{
						\tag #'Segment6PercussionDrumVoice5
						{
							{
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment6PercussionDrumVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 ~ [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8
							}
						}
						\tag #'Segment6PercussionDrumVoice7
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
							}
						}
					}
					{
						\tag #'Segment6PercussionDrumVoice8
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment6PercussionDrumVoice9
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
					}
					{
						\tag #'Segment6PercussionDrumVoice10
						{
							{
								r16
							}
						}
						\tag #'Segment6PercussionDrumVoice11
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment6PercussionDrumVoice12
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
					}
					{
						\tag #'Segment6PercussionDrumVoice13
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment6PercussionDrumVoice14
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment6PercussionDrumVoice15
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
					}
					{
						\tag #'Segment6PercussionDrumVoice16
						{
							{
								r16
								r8
								\bar "||"
							}
						}
					}
				}
			}
		>>
	>>
}