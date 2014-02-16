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
				\mark \markup { \override #'(box-padding . 0.5) \box 10C }
				\tempo 8=48
				\time 2/4
				s1 * 1/2
			}
			{
				\time 3/4
				s1 * 3/4
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
						\tag #'Segment10cSaxophoneVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								c'16 -\staccatissimo \p
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
						\tag #'Segment10cSaxophoneVoice2
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment10cSaxophoneVoice3
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment10cSaxophoneVoice4
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
								a16 -\staccatissimo
							}
						}
						\tag #'Segment10cSaxophoneVoice5
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10cSaxophoneVoice6
						{
							{
								r8
							}
						}
						\tag #'Segment10cSaxophoneVoice7
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
						\tag #'Segment10cSaxophoneVoice8
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment10cSaxophoneVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								r16
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
						\tag #'Segment10cSaxophoneVoice10
						{
							{
								r8
							}
						}
						\tag #'Segment10cSaxophoneVoice11
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
						\tag #'Segment10cGuitarVoice1
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								a8 -\staccatissimo \ppp [
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
									c''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<g e'>8 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment10cGuitarVoice2
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment10cGuitarVoice3
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment10cGuitarVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<f e' d''>16 -\staccatissimo \p [
								{
									e'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<b a'>16 -\staccatissimo \)
							}
						}
						\tag #'Segment10cGuitarVoice5
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<c a>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<g, fs a e'>32 -\staccatissimo
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment10cGuitarVoice6
						{
							{
								r8
							}
						}
						\tag #'Segment10cGuitarVoice7
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
						\tag #'Segment10cGuitarVoice8
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment10cGuitarVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<d cs' e' b'>16 -\staccatissimo \pp
								{
									c''16 \(
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<g e'>32 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment10cGuitarVoice10
						{
							{
								r8
							}
						}
						\tag #'Segment10cGuitarVoice11
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
						\tag #'Segment10cPianoRHVoice1
						{
							\times 2/3 {
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								\clef treble
								c''''16 -\staccatissimo [ \> \pp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<a'''' c'''''>8 -\staccatissimo
							}
						}
						\tag #'Segment10cPianoRHVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<c'''' d'''' ef'''' af''''>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e''''16 -\staccatissimo ] \!
								\ottava #0
								\revert Hairpin #'circled-tip
							}
						}
					}
					{
						\tag #'Segment10cPianoRHVoice3
						{
							{
								r4
							}
						}
						\tag #'Segment10cPianoRHVoice4
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment10cPianoRHVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #2
								a'''8 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<c'''' ef''''>16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10cPianoRHVoice6
						{
							{
								r4
							}
						}
						\tag #'Segment10cPianoRHVoice7
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
						\tag #'Segment10cPianoRHVoice8
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment10cPianoRHVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								e''''16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<a'''' c'''''>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<a''' b''' c'''' f''''>16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10cPianoRHVoice10
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment10cPianoRHVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								a'''16 -\staccatissimo \pp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c''''16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10cPianoRHVoice12
						{
							{
								r8.
							}
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment10cPianoLHVoice1
						{
							\times 2/3 {
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\clef treble
								<b'' d''' f''' a'''>8 -\staccatissimo [ \> \p
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'''16 -\staccatissimo
							}
						}
						\tag #'Segment10cPianoLHVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<e''' g'''>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<a'' b'' c''' f'''>16 -\staccatissimo ] \!
								\ottava #0
								\revert Hairpin #'circled-tip
							}
						}
					}
					{
						\tag #'Segment10cPianoLHVoice3
						{
							{
								r4
							}
						}
						\tag #'Segment10cPianoLHVoice4
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment10cPianoLHVoice5
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								c'''16 -\staccatissimo \pp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'''8 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10cPianoLHVoice6
						{
							{
								r8.
							}
						}
						\tag #'Segment10cPianoLHVoice7
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
						\tag #'Segment10cPianoLHVoice8
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment10cPianoLHVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								a''16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'''16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<c''' ef'''>16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10cPianoLHVoice10
						{
							{
								r16
							}
						}
						\tag #'Segment10cPianoLHVoice11
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
					\tag #'Segment10cPianoPedals1
					{
						{
							s1 * 1/8 \sustainOn
						}
					}
					\tag #'Segment10cPianoPedals2
					{
						{
							s1 * 1/8
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment10cPianoPedals3
					{
						{
							r4
						}
					}
					\tag #'Segment10cPianoPedals4
					{
						{
							r4
							r8
						}
					}
				}
				{
					\tag #'Segment10cPianoPedals5
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 3/16 \sustainOn
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment10cPianoPedals6
					{
						{
							r8.
						}
					}
					\tag #'Segment10cPianoPedals7
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment10cPianoPedals8
					{
						{
							r4
						}
					}
				}
				{
					\tag #'Segment10cPianoPedals9
					{
						{
							s1 * 3/16 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment10cPianoPedals10
					{
						{
							r16
						}
					}
				}
				{
					\tag #'Segment10cPianoPedals11
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
					\tag #'Segment10cPianoPedals12
					{
						{
							r8.
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
						\tag #'Segment10cPercussionShakerVoice1
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
								a32 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10cPercussionShakerVoice2
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment10cPercussionShakerVoice3
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment10cPercussionShakerVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo \pp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10cPercussionShakerVoice5
						{
							{
								r8.
							}
						}
						\tag #'Segment10cPercussionShakerVoice6
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
						\tag #'Segment10cPercussionShakerVoice7
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment10cPercussionShakerVoice8
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
								e'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10cPercussionShakerVoice9
						{
							{
								r16
							}
						}
						\tag #'Segment10cPercussionShakerVoice10
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
						\tag #'Segment10cPercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment10cPercussionWoodblockVoice2
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment10cPercussionWoodblockVoice3
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment10cPercussionWoodblockVoice4
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment10cPercussionWoodblockVoice5
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
						\tag #'Segment10cPercussionDrumVoice1
						{
							\times 2/3 {
								\afterGrace
								a4 \< \mp
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
						\tag #'Segment10cPercussionDrumVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								c'16 \f [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 \sfp ]
							}
						}
					}
					{
						\tag #'Segment10cPercussionDrumVoice3
						{
							{
								r8
								\afterGrace
								r8
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
						\tag #'Segment10cPercussionDrumVoice4
						{
							{
								a4 \) \< \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								c'8 ~
							}
						}
						\tag #'Segment10cPercussionDrumVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/8 {
								\afterGrace
								c'4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a4 \f \)
							}
						}
					}
					{
						\tag #'Segment10cPercussionDrumVoice6
						{
							{
								r16
							}
						}
						\tag #'Segment10cPercussionDrumVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment10cPercussionDrumVoice8
						{
							{
								R1 * 5/16
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