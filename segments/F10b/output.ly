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
				\mark \markup { \override #'(box-padding . 0.5) \box 10B }
				\tempo 8=48
				\time 2/4
				s1 * 1/2
			}
			{
				s1 * 1/2
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				\time 2/4
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
						\tag #'Segment10bSaxophoneVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								a16 -\staccatissimo \p [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10bSaxophoneVoice2
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment10bSaxophoneVoice3
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bSaxophoneVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								a16 -\staccatissimo \pp [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment10bSaxophoneVoice5
						{
							{
								r4
							}
						}
						\tag #'Segment10bSaxophoneVoice6
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment10bSaxophoneVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16 -\staccatissimo
							}
						}
						\tag #'Segment10bSaxophoneVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								e16 -\staccatissimo
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								e32 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment10bSaxophoneVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment10bSaxophoneVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bSaxophoneVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								e32 -\staccatissimo \p [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10bSaxophoneVoice12
						{
							{
								r4
							}
						}
						\tag #'Segment10bSaxophoneVoice13
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
		\tag score.guitar
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble"
				\transpose c c'
				\context Voice = "Guitar Voice" {
					{
						\tag #'Segment10bGuitarVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								c'16 -\staccatissimo \ppp [
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
									a'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<ef'>16 -\staccatissimo \)
							}
						}
						\tag #'Segment10bGuitarVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<fs>16 -\staccatissimo ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<fs>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<g>16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10bGuitarVoice3
						{
							{
								r8.
							}
						}
						\tag #'Segment10bGuitarVoice4
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bGuitarVoice5
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								c'16 -\staccatissimo \p [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a'16 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment10bGuitarVoice6
						{
							{
								r4
							}
						}
						\tag #'Segment10bGuitarVoice7
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment10bGuitarVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<f d''>16 -\staccatissimo \arpeggio \pp
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								<b>32 -\staccatissimo
							}
						}
						\tag #'Segment10bGuitarVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<g>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<g, fs e'>16 -\staccatissimo \arpeggio
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment10bGuitarVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment10bGuitarVoice11
						{
							{
								\afterGrace
								r8
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
						\tag #'Segment10bGuitarVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<bf, a g'>16 -\staccatissimo \arpeggio \ppp \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<c'>16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10bGuitarVoice13
						{
							{
								r4
							}
						}
						\tag #'Segment10bGuitarVoice14
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
						\tag #'Segment10bPianoRHVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								\clef treble
								e''''16 -\staccatissimo \pp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<g''''>32 -\staccatissimo
								\ottava #0
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment10bPianoRHVoice2
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment10bPianoRHVoice3
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bPianoRHVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								<fs'''' g'''' c'''''>16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c''''16 -\staccatissimo
							}
						}
						\tag #'Segment10bPianoRHVoice5
						{
							\times 2/3 {
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<a''' c'''' e''''>16 -\staccatissimo
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
								<c'''' d''''>16 -\staccatissimo
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment10bPianoRHVoice6
						{
							{
								r8
							}
						}
						\tag #'Segment10bPianoRHVoice7
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment10bPianoRHVoice8
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								a'''16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<c'''''>16 -\staccatissimo
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment10bPianoRHVoice9
						{
							{
								r8
							}
						}
						\tag #'Segment10bPianoRHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment10bPianoRHVoice11
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bPianoRHVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								e''''16 -\staccatissimo \pp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<ef''''>16 -\staccatissimo
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment10bPianoRHVoice13
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #2
								<d'''' ef'''' af''''>8 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c''''16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10bPianoRHVoice14
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
						\tag #'Segment10bPianoLHVoice1
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
								\set stemRightBeamCount = 2
								\clef treble
								<e'' g'' b'' d'''>16 -\staccatissimo \p [
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
								a'''16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10bPianoLHVoice2
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment10bPianoLHVoice3
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bPianoLHVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<g'''>16 -\staccatissimo \pp
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								<
									b'''
									\tweak #'color #red
									c''''
									f''''
								>32 -\staccatissimo
							}
						}
						\tag #'Segment10bPianoLHVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e'''16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'''16 -\staccatissimo
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment10bPianoLHVoice6
						{
							{
								r8
							}
						}
						\tag #'Segment10bPianoLHVoice7
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment10bPianoLHVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								c'''8 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'''8 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10bPianoLHVoice9
						{
							{
								r16
							}
						}
						\tag #'Segment10bPianoLHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment10bPianoLHVoice11
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bPianoLHVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								e'''16 -\staccatissimo \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'''16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10bPianoLHVoice13
						{
							{
								r8.
							}
						}
						\tag #'Segment10bPianoLHVoice14
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
					\tag #'Segment10bPianoPedals1
					{
						{
							s1 * 1/8 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment10bPianoPedals2
					{
						{
							r8
							r4
						}
					}
					\tag #'Segment10bPianoPedals3
					{
						{
							r8
						}
					}
				}
				{
					\tag #'Segment10bPianoPedals4
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/8 \sustainOn
						}
					}
					\tag #'Segment10bPianoPedals5
					{
						{
							s1 * 1/8
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment10bPianoPedals6
					{
						{
							r8
						}
					}
					\tag #'Segment10bPianoPedals7
					{
						{
							r2
						}
					}
				}
				{
					\tag #'Segment10bPianoPedals8
					{
						{
							s1 * 3/16 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment10bPianoPedals9
					{
						{
							r16
						}
					}
					\tag #'Segment10bPianoPedals10
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment10bPianoPedals11
					{
						{
							r8
						}
					}
				}
				{
					\tag #'Segment10bPianoPedals12
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 3/16 \sustainOn
						}
					}
					\tag #'Segment10bPianoPedals13
					{
						{
							s1 * 3/16
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment10bPianoPedals14
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
						\tag #'Segment10bPercussionShakerVoice1
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10bPercussionShakerVoice2
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment10bPercussionShakerVoice3
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bPercussionShakerVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 -\staccatissimo \pp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10bPercussionShakerVoice5
						{
							{
								r4
							}
						}
						\tag #'Segment10bPercussionShakerVoice6
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment10bPercussionShakerVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10bPercussionShakerVoice8
						{
							{
								r16
							}
						}
						\tag #'Segment10bPercussionShakerVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment10bPercussionShakerVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bPercussionShakerVoice11
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 -\staccatissimo
							}
						}
						\tag #'Segment10bPercussionShakerVoice12
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								e'32 -\staccatissimo
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10bPercussionShakerVoice13
						{
							{
								r16
							}
						}
						\tag #'Segment10bPercussionShakerVoice14
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
						\tag #'Segment10bPercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment10bPercussionWoodblockVoice2
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment10bPercussionWoodblockVoice3
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment10bPercussionWoodblockVoice4
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment10bPercussionWoodblockVoice5
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment10bPercussionWoodblockVoice6
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
						\tag #'Segment10bPercussionDrumVoice1
						{
							{
								\afterGrace
								e'4 \mp
									^ \markup {
										\box
											\pad-around
												#0.5
												\large
													\bold
														\caps
															Styrofoam
										,
										}
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 \)
							}
						}
					}
					{
						\tag #'Segment10bPercussionDrumVoice2
						{
							{
								r8
							}
						}
						\tag #'Segment10bPercussionDrumVoice3
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bPercussionDrumVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								c'4 \mp
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								r8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								a8 ~ ] \) \> \mp
							}
						}
						\tag #'Segment10bPercussionDrumVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								a4
								c'4 \p
							}
						}
					}
					{
						\tag #'Segment10bPercussionDrumVoice6
						{
							{
								\afterGrace
								r8.
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
						\tag #'Segment10bPercussionDrumVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 \) [ \< \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								c'8 ~ ]
							}
						}
						\tag #'Segment10bPercussionDrumVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 9/10 {
								\afterGrace
								c'4.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'4 \f \)
							}
						}
					}
					{
						\tag #'Segment10bPercussionDrumVoice9
						{
							{
								r8.
							}
						}
						\tag #'Segment10bPercussionDrumVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10bPercussionDrumVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								c'8 \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a4 ~ \)
							}
						}
						\tag #'Segment10bPercussionDrumVoice12
						{
							\times 2/3 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								a8 \f [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 \sfp ]
							}
						}
					}
					{
						\tag #'Segment10bPercussionDrumVoice13
						{
							{
								r16
								\bar "||"
							}
						}
					}
				}
			}
		>>
	>>
}