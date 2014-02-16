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
				\mark \markup { \override #'(box-padding . 0.5) \box 10A }
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
				s1 * 3/4
			}
			{
				\time 7/16
				s1 * 7/16
			}
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						\tag #'Segment10aSaxophoneVoice1
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e'16 -\staccatissimo \)
							}
						}
						\tag #'Segment10aSaxophoneVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a16 -\staccatissimo
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10aSaxophoneVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment10aSaxophoneVoice4
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment10aSaxophoneVoice5
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								c'32 -\staccatissimo \pp [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								\afterGrace
								r32
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment10aSaxophoneVoice6
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment10aSaxophoneVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo \ppp
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a32 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10aSaxophoneVoice8
						{
							{
								r8
							}
						}
						\tag #'Segment10aSaxophoneVoice9
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment10aSaxophoneVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a16 -\staccatissimo
							}
						}
						\tag #'Segment10aSaxophoneVoice11
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10aSaxophoneVoice12
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
		\tag score.guitar
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble"
				\transpose c c'
				\context Voice = "Guitar Voice" {
					{
						\tag #'Segment10aGuitarVoice1
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
								\set stemRightBeamCount = 0
								<ef' c''>16 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment10aGuitarVoice2
						{
							{
								r8.
							}
						}
						\tag #'Segment10aGuitarVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment10aGuitarVoice4
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment10aGuitarVoice5
						{
							{
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<f e' d''>16 -\staccatissimo [ \> \p
								{
									c''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<fs e'>16 -\staccatissimo \)
							}
						}
						\tag #'Segment10aGuitarVoice6
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<ef c'>8 -\staccatissimo
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<d cs' e' b'>16 -\staccatissimo \!
								\revert Hairpin #'circled-tip
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment10aGuitarVoice7
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment10aGuitarVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<g e'>16 -\staccatissimo \pp
								{
									c''16 \(
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<fs e'>32 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment10aGuitarVoice9
						{
							{
								r8
							}
						}
						\tag #'Segment10aGuitarVoice10
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment10aGuitarVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<d cs' e' b'>16 -\staccatissimo \ppp [
								{
									a'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<ef' c''>16 -\staccatissimo \)
							}
						}
						\tag #'Segment10aGuitarVoice12
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d a c' b'>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<f a ef'>16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10aGuitarVoice13
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
						\tag #'Segment10aPianoRHVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								\clef treble
								e''''16 -\staccatissimo \pp [
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								\ottava #2
								<c'''' ef''''>16 -\staccatissimo
							}
						}
						\tag #'Segment10aPianoRHVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<c'''' d'''' ef'''' af''''>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e''''16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10aPianoRHVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment10aPianoRHVoice4
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment10aPianoRHVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								a'''16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<a'''' c'''''>16 -\staccatissimo
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment10aPianoRHVoice6
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment10aPianoRHVoice7
						{
							\times 2/3 {
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								<a''' b''' c'''' f''''>16 -\staccatissimo [ \> \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a''''8 -\staccatissimo
							}
						}
						\tag #'Segment10aPianoRHVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a'''16 -\staccatissimo
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<a''' c'''' e''''>16 -\staccatissimo ] \!
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\ottava #0
								\revert Hairpin #'circled-tip
							}
						}
					}
					{
						\tag #'Segment10aPianoRHVoice9
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment10aPianoRHVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #2
								a'''8 -\staccatissimo \pp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<c'''' ef''''>16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10aPianoRHVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
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
						\tag #'Segment10aPianoLHVoice1
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
								\set stemRightBeamCount = 3
								e'''32 -\staccatissimo
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment10aPianoLHVoice2
						{
							{
								r8.
							}
						}
						\tag #'Segment10aPianoLHVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment10aPianoLHVoice4
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment10aPianoLHVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								c'''16 -\staccatissimo \pp [
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
						\tag #'Segment10aPianoLHVoice6
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment10aPianoLHVoice7
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<c''' ef'''>16 -\staccatissimo \ppp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<e''' fs''' g''' c''''>16 -\staccatissimo
								\ottava #0
							}
						}
						\tag #'Segment10aPianoLHVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								a''16 -\staccatissimo
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<c''' e''' g'''>32 -\staccatissimo ]
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10aPianoLHVoice9
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment10aPianoLHVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								c'''8 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'''16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10aPianoLHVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment10aPianoPedals1
					{
						{
							s1 * 3/16 \sustainOn
						}
					}
					\tag #'Segment10aPianoPedals2
					{
						{
							s1 * 1/8
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment10aPianoPedals3
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment10aPianoPedals4
					{
						{
							r4
							r8
						}
					}
				}
				{
					\tag #'Segment10aPianoPedals5
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
					\tag #'Segment10aPianoPedals6
					{
						{
							r2
						}
					}
				}
				{
					\tag #'Segment10aPianoPedals7
					{
						{
							s1 * 1/8 \sustainOn
						}
					}
					\tag #'Segment10aPianoPedals8
					{
						{
							s1 * 1/8
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment10aPianoPedals9
					{
						{
							r2
							r8
						}
					}
				}
				{
					\tag #'Segment10aPianoPedals10
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
					\tag #'Segment10aPianoPedals11
					{
						{
							R1 * 7/16
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
						\tag #'Segment10aPercussionShakerVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a16 -\staccatissimo
							}
						}
						\tag #'Segment10aPercussionShakerVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo
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
						\tag #'Segment10aPercussionShakerVoice3
						{
							{
								r16
							}
						}
						\tag #'Segment10aPercussionShakerVoice4
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment10aPercussionShakerVoice5
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment10aPercussionShakerVoice6
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo \pp [
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
						\tag #'Segment10aPercussionShakerVoice7
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment10aPercussionShakerVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10aPercussionShakerVoice9
						{
							{
								r16
							}
						}
						\tag #'Segment10aPercussionShakerVoice10
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment10aPercussionShakerVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								e'32 -\staccatissimo \ppp [
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
						\tag #'Segment10aPercussionShakerVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
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
						\tag #'Segment10aPercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment10aPercussionWoodblockVoice2
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment10aPercussionWoodblockVoice3
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment10aPercussionWoodblockVoice4
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment10aPercussionWoodblockVoice5
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment10aPercussionWoodblockVoice6
						{
							{
								R1 * 7/16
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
						\tag #'Segment10aPercussionDrumVoice1
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								e'4 \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								c'8 ~ \)
							}
						}
						\tag #'Segment10aPercussionDrumVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								c'4
								a4 \f
							}
						}
					}
					{
						\tag #'Segment10aPercussionDrumVoice3
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
						\tag #'Segment10aPercussionDrumVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								e'4 \mp \)
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 \mp ]
							}
						}
					}
					{
						\tag #'Segment10aPercussionDrumVoice5
						{
							{
								r8.
							}
						}
						\tag #'Segment10aPercussionDrumVoice6
						{
							{
								\afterGrace
								r2
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment10aPercussionDrumVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 \) [ \< \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 ~
							}
						}
						\tag #'Segment10aPercussionDrumVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								e'8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 ] \f \)
							}
						}
					}
					{
						\tag #'Segment10aPercussionDrumVoice9
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment10aPercussionDrumVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 [ \< \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								e'8 ~ ]
							}
						}
						\tag #'Segment10aPercussionDrumVoice11
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/12 {
								e'4 \f
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'4 \sfp \)
								\bar "||"
							}
						}
					}
				}
			}
		>>
	>>
}