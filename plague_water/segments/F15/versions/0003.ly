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
				\mark \markup { \override #'(box-padding . 0.5) \box 15 }
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
				s1 * 1/2
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
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						\tag #'Segment15SaxophoneVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								a16 -\staccatissimo \p
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a32 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment15SaxophoneVoice2
						{
							{
								r8.
							}
						}
						\tag #'Segment15SaxophoneVoice3
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment15SaxophoneVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16 -\staccatissimo \pp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment15SaxophoneVoice5
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
						\tag #'Segment15SaxophoneVoice6
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment15SaxophoneVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment15SaxophoneVoice8
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment15SaxophoneVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 -\staccatissimo \p \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment15SaxophoneVoice10
						{
							{
								r8.
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
						\tag #'Segment15GuitarVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								a16 -\staccatissimo \ppp [
									^ \markup {
										\box
											\pad-around
												#0.5
												\large
													\bold
														\caps
															"Color Six"
										}
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<c' a'>16 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment15GuitarVoice2
						{
							{
								r8.
							}
						}
						\tag #'Segment15GuitarVoice3
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment15GuitarVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<d c'>16 -\staccatissimo \p [
								{
									c'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<f e' d''>16 -\staccatissimo \)
							}
						}
						\tag #'Segment15GuitarVoice5
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<d c'>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<g e'>32 -\staccatissimo
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment15GuitarVoice6
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment15GuitarVoice7
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment15GuitarVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<g, fs a e'>16 -\staccatissimo \pp ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<g, fs a e'>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<ef c'>16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment15GuitarVoice9
						{
							{
								r16
							}
						}
						\tag #'Segment15GuitarVoice10
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
			}
		>>
		\tag score.piano
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\context Voice = "Piano RH Voice" {
					{
						\tag #'Segment15PianoRHVoice1
						{
							\times 2/3 {
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #2
								\clef treble
								c''''8 -\staccatissimo [ \> \pp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<c'''' ef''''>16 -\staccatissimo
							}
						}
						\tag #'Segment15PianoRHVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<c'''' d'''' ef'''' af''''>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c''''16 -\staccatissimo \!
								\ottava #0
								\revert Hairpin #'circled-tip
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment15PianoRHVoice3
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment15PianoRHVoice4
						{
							\times 2/3 {
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								<c'''' e'''' g''''>16 -\staccatissimo \ppp [
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<
									\tweak #'color #red
									c''''
									ef''''
									f''''
								>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e''''16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment15PianoRHVoice5
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
						\tag #'Segment15PianoRHVoice6
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment15PianoRHVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								c''''16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<c'''' ef''''>16 -\staccatissimo
							}
						}
						\tag #'Segment15PianoRHVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<c'''' d'''' ef'''' af''''>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e''''32 -\staccatissimo
								\ottava #0
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment15PianoRHVoice9
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
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment15PianoLHVoice1
						{
							{
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\clef treble
								<b'' d''' f''' a'''>8 -\staccatissimo \p [
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'''16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment15PianoLHVoice2
						{
							{
								r8
							}
						}
						\tag #'Segment15PianoLHVoice3
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment15PianoLHVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								<a'' c'''>16 -\staccatissimo \pp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<
									e'''
									fs'''
									g'''
									\tweak #'color #red
									c''''
								>8 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment15PianoLHVoice5
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment15PianoLHVoice6
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a''16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'''16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<e'' g''>16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment15PianoLHVoice7
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment15PianoLHVoice8
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment15PianoLHVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e''16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e''16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment15PianoLHVoice10
						{
							{
								r8
							}
						}
						\tag #'Segment15PianoLHVoice11
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
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment15PianoPedals1
					{
						{
							s1 * 1/8 \sustainOn
						}
					}
					\tag #'Segment15PianoPedals2
					{
						{
							s1 * 3/16
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment15PianoPedals3
					{
						{
							r8.
							r8
						}
					}
				}
				{
					\tag #'Segment15PianoPedals4
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/8 \sustainOn
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment15PianoPedals5
					{
						{
							r16
						}
					}
				}
				{
					\tag #'Segment15PianoPedals6
					{
						{
							s1 * 1/8 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment15PianoPedals7
					{
						{
							r16
							r4
						}
					}
					\tag #'Segment15PianoPedals8
					{
						{
							r4
						}
					}
				}
				{
					\tag #'Segment15PianoPedals9
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/8 \sustainOn
						}
					}
					\tag #'Segment15PianoPedals10
					{
						{
							s1 * 1/8
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment15PianoPedals11
					{
						{
							R1 * 5/16
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
						\tag #'Segment15PercussionShakerVoice1
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo ~ \> \ppp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a16 -\staccatissimo
							}
						}
						\tag #'Segment15PercussionShakerVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 -\staccatissimo ] \!
								\revert Hairpin #'circled-tip
							}
						}
					}
					{
						\tag #'Segment15PercussionShakerVoice3
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment15PercussionShakerVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16 -\staccatissimo \pp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment15PercussionShakerVoice5
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
						\tag #'Segment15PercussionShakerVoice6
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment15PercussionShakerVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment15PercussionShakerVoice8
						{
							{
								r16
							}
						}
						\tag #'Segment15PercussionShakerVoice9
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
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						\tag #'Segment15PercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment15PercussionWoodblockVoice2
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment15PercussionWoodblockVoice3
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment15PercussionWoodblockVoice4
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment15PercussionWoodblockVoice5
						{
							{
								R1 * 5/16
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
						\tag #'Segment15PercussionDrumVoice1
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
						\tag #'Segment15PercussionDrumVoice2
						{
							{
								r8.
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment15PercussionDrumVoice3
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 \) [ \< \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								a16 ~ ]
							}
						}
						\tag #'Segment15PercussionDrumVoice4
						{
							\times 2/3 {
								\afterGrace
								a4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'2 ~ \)
							}
						}
						\tag #'Segment15PercussionDrumVoice5
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								c'16 \f [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 \sfp ]
							}
						}
					}
					{
						\tag #'Segment15PercussionDrumVoice6
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment15PercussionDrumVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 \) [ \< \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								a8 ~ ]
							}
						}
						\tag #'Segment15PercussionDrumVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								a4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 \f \)
								\bar "||"
							}
						}
					}
				}
			}
		>>
	>>
}