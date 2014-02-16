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
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						\tag #'Segment7SaxophoneVoice1
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
						\tag #'Segment7SaxophoneVoice2
						{
							{
								r8.
							}
						}
						\tag #'Segment7SaxophoneVoice3
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
						\tag #'Segment7SaxophoneVoice4
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment7SaxophoneVoice5
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
						}
						\tag #'Segment7SaxophoneVoice6
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								a16 -\staccatissimo
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
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
					}
					{
						\tag #'Segment7SaxophoneVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment7SaxophoneVoice8
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
					}
					{
						\tag #'Segment7SaxophoneVoice9
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
					}
					{
						\tag #'Segment7SaxophoneVoice10
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
						\tag #'Segment7GuitarVoice1
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
									c''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<g e'>16 -\staccatissimo \)
							}
						}
						\tag #'Segment7GuitarVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d c'>16 -\staccatissimo
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<g e'>32 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment7GuitarVoice3
						{
							{
								r16
							}
						}
						\tag #'Segment7GuitarVoice4
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
						\tag #'Segment7GuitarVoice5
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
						\tag #'Segment7GuitarVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<df c' bf'>16 -\staccatissimo \p \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<b a'>16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment7GuitarVoice7
						{
							{
								r4
							}
						}
						\tag #'Segment7GuitarVoice8
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
					}
					{
						\tag #'Segment7GuitarVoice9
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d cs' e' b'>16 -\staccatissimo \pp ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d cs' e' b'>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<ef' c''>16 -\staccatissimo
							}
						}
						\tag #'Segment7GuitarVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<d a c' b'>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<c' e' bf'>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
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
						\tag #'Segment7PianoRHVoice1
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								\clef treble
								e''''16 -\staccatissimo \pp [
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
						\tag #'Segment7PianoRHVoice2
						{
							{
								r8.
							}
						}
						\tag #'Segment7PianoRHVoice3
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
						\tag #'Segment7PianoRHVoice4
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment7PianoRHVoice5
						{
							{
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								e''''16 -\staccatissimo [ \> \ppp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<c'''' ef''''>8 -\staccatissimo
							}
						}
						\tag #'Segment7PianoRHVoice6
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
						\tag #'Segment7PianoRHVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment7PianoRHVoice8
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
					}
					{
						\tag #'Segment7PianoRHVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #2
								e''''8 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<a'''' c'''''>16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment7PianoRHVoice10
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
						\tag #'Segment7PianoLHVoice1
						{
							{
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
								<e'' g'' b'' d'''>8 -\staccatissimo [ \> \p
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
								a'''16 -\staccatissimo
							}
						}
						\tag #'Segment7PianoLHVoice2
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
						\tag #'Segment7PianoLHVoice3
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
						\tag #'Segment7PianoLHVoice4
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment7PianoLHVoice5
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
					}
					{
						\tag #'Segment7PianoLHVoice6
						{
							{
								r4
							}
						}
						\tag #'Segment7PianoLHVoice7
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
					}
					{
						\tag #'Segment7PianoLHVoice8
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
								<c''' ef'''>16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment7PianoLHVoice9
						{
							{
								r8.
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment7PianoPedals1
					{
						{
							s1 * 3/16 \sustainOn
						}
					}
					\tag #'Segment7PianoPedals2
					{
						{
							s1 * 1/8
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment7PianoPedals3
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment7PianoPedals4
					{
						{
							r8
						}
					}
				}
				{
					\tag #'Segment7PianoPedals5
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 3/16 \sustainOn
						}
					}
					\tag #'Segment7PianoPedals6
					{
						{
							s1 * 1/8
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment7PianoPedals7
					{
						{
							r16
						}
					}
					\tag #'Segment7PianoPedals8
					{
						{
							R1 * 3/4
						}
					}
				}
				{
					\tag #'Segment7PianoPedals9
					{
						{
							s1 * 1/8 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment7PianoPedals10
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
						\tag #'Segment7PercussionShakerVoice1
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
					}
					{
						\tag #'Segment7PercussionShakerVoice2
						{
							{
								r8.
							}
						}
						\tag #'Segment7PercussionShakerVoice3
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
						\tag #'Segment7PercussionShakerVoice4
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment7PercussionShakerVoice5
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
						}
						\tag #'Segment7PercussionShakerVoice6
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment7PercussionShakerVoice7
						{
							{
								r8
							}
						}
						\tag #'Segment7PercussionShakerVoice8
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
					}
					{
						\tag #'Segment7PercussionShakerVoice9
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
					}
					{
						\tag #'Segment7PercussionShakerVoice10
						{
							{
								r8.
							}
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						\tag #'Segment7PercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment7PercussionWoodblockVoice2
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment7PercussionWoodblockVoice3
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment7PercussionWoodblockVoice4
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment7PercussionWoodblockVoice5
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
						\tag #'Segment7PercussionDrumVoice1
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
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								c'8 ~ ] \) \> \sfp
							}
						}
						\tag #'Segment7PercussionDrumVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								c'4
								c'4 \!
								\revert Hairpin #'circled-tip
							}
						}
					}
					{
						\tag #'Segment7PercussionDrumVoice3
						{
							{
								r8
							}
						}
						\tag #'Segment7PercussionDrumVoice4
						{
							{
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
						\tag #'Segment7PercussionDrumVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								e'4 \) \< \mp
								a4 ~
							}
						}
						\tag #'Segment7PercussionDrumVoice6
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
								c'2 \f \)
							}
						}
					}
					{
						\tag #'Segment7PercussionDrumVoice7
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment7PercussionDrumVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\afterGrace
								e'4 \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
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
			}
		>>
	>>
}