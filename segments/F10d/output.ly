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
				\mark \markup { \override #'(box-padding . 0.5) \box 10D }
				\tempo 8=48
				\time 2/4
				s1 * 1/2
			}
			{
				s1 * 1/2
			}
			{
				\time 4/8
				s1 * 1/2
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 2/4
				s1 * 1/2
			}
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						\tag #'Segment10dSaxophoneVoice1
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a16 -\staccatissimo
							}
						}
						\tag #'Segment10dSaxophoneVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo
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
						\tag #'Segment10dSaxophoneVoice3
						{
							{
								r4
							}
						}
						\tag #'Segment10dSaxophoneVoice4
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
						\tag #'Segment10dSaxophoneVoice5
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10dSaxophoneVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 -\staccatissimo \pp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10dSaxophoneVoice7
						{
							{
								r4
							}
						}
						\tag #'Segment10dSaxophoneVoice8
						{
							{
								\afterGrace
								r4
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
						\tag #'Segment10dSaxophoneVoice9
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 -\staccatissimo \ppp \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10dSaxophoneVoice10
						{
							{
								r16
							}
						}
						\tag #'Segment10dSaxophoneVoice11
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
						\tag #'Segment10dSaxophoneVoice12
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment10dSaxophoneVoice13
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								e32 -\staccatissimo \p [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								\afterGrace
								r32
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment10dSaxophoneVoice14
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment10dSaxophoneVoice15
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e16 -\staccatissimo \pp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10dSaxophoneVoice16
						{
							{
								r8
							}
						}
						\tag #'Segment10dSaxophoneVoice17
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
						\tag #'Segment10dGuitarVoice1
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
								<g>16 -\staccatissimo \)
							}
						}
						\tag #'Segment10dGuitarVoice2
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<fs>16 -\staccatissimo
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<g>32 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10dGuitarVoice3
						{
							{
								r4
							}
						}
						\tag #'Segment10dGuitarVoice4
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
						\tag #'Segment10dGuitarVoice5
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
						\tag #'Segment10dGuitarVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo \p \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<bf g''>16 -\staccatissimo \arpeggio ]
							}
						}
					}
					{
						\tag #'Segment10dGuitarVoice7
						{
							{
								r4
							}
						}
						\tag #'Segment10dGuitarVoice8
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment10dGuitarVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<d>16 -\staccatissimo \pp
								{
									a'16 \(
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								<ef'>32 -\staccatissimo \)
							}
						}
						\tag #'Segment10dGuitarVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<g, fs e'>16 -\staccatissimo \arpeggio
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<g>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment10dGuitarVoice11
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
						\tag #'Segment10dGuitarVoice12
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment10dGuitarVoice13
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<g, fs e'>16 -\staccatissimo \arpeggio \ppp [
								{
									a'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<ef'>16 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment10dGuitarVoice14
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment10dGuitarVoice15
						{
							{
								R1 * 1/2
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
						\tag #'Segment10dPianoRHVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								\clef treble
								e''''16 -\staccatissimo \pp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<c'''''>32 -\staccatissimo
								\ottava #0
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment10dPianoRHVoice2
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment10dPianoRHVoice3
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
						\tag #'Segment10dPianoRHVoice4
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10dPianoRHVoice5
						{
							{
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								<b''' c'''' f''''>16 -\staccatissimo [ \> \ppp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c''''16 -\staccatissimo
							}
						}
						\tag #'Segment10dPianoRHVoice6
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<g''''>16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<fs'''' g'''' c'''''>16 -\staccatissimo \!
								\ottava #0
								\revert Hairpin #'circled-tip
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment10dPianoRHVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment10dPianoRHVoice8
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment10dPianoRHVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								e''''16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a''''16 -\staccatissimo
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment10dPianoRHVoice10
						{
							{
								r16
							}
						}
						\tag #'Segment10dPianoRHVoice11
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
						\tag #'Segment10dPianoRHVoice12
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment10dPianoRHVoice13
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								c''''16 -\staccatissimo \pp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<ef''''>16 -\staccatissimo
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment10dPianoRHVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #2
								<d'''' ef'''' af''''>8 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a'''16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10dPianoRHVoice15
						{
							{
								r8.
							}
						}
						\tag #'Segment10dPianoRHVoice16
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
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment10dPianoLHVoice1
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
								c'''16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10dPianoLHVoice2
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment10dPianoLHVoice3
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
						\tag #'Segment10dPianoLHVoice4
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10dPianoLHVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<ef'''>16 -\staccatissimo \pp ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<ef'''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'''16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10dPianoLHVoice6
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment10dPianoLHVoice7
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment10dPianoLHVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								a''8 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<g'''>8 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10dPianoLHVoice9
						{
							{
								r16
							}
						}
						\tag #'Segment10dPianoLHVoice10
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
						\tag #'Segment10dPianoLHVoice11
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment10dPianoLHVoice12
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								e'''16 -\staccatissimo \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a'''16 -\staccatissimo ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment10dPianoLHVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment10dPianoLHVoice14
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment10dPianoPedals1
					{
						{
							s1 * 1/8 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment10dPianoPedals2
					{
						{
							r8
							r4
						}
					}
					\tag #'Segment10dPianoPedals3
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment10dPianoPedals4
					{
						{
							r8
						}
					}
				}
				{
					\tag #'Segment10dPianoPedals5
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/8 \sustainOn
						}
					}
					\tag #'Segment10dPianoPedals6
					{
						{
							s1 * 3/16
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment10dPianoPedals7
					{
						{
							r16
						}
					}
					\tag #'Segment10dPianoPedals8
					{
						{
							r4
						}
					}
				}
				{
					\tag #'Segment10dPianoPedals9
					{
						{
							s1 * 3/16 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment10dPianoPedals10
					{
						{
							r16
						}
					}
					\tag #'Segment10dPianoPedals11
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment10dPianoPedals12
					{
						{
							r8.
							r8
						}
					}
				}
				{
					\tag #'Segment10dPianoPedals13
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/8 \sustainOn
						}
					}
					\tag #'Segment10dPianoPedals14
					{
						{
							s1 * 1/8
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment10dPianoPedals15
					{
						{
							r8.
						}
					}
					\tag #'Segment10dPianoPedals16
					{
						{
							R1 * 1/2
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
						\tag #'Segment10dPercussionShakerVoice1
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10dPercussionShakerVoice2
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment10dPercussionShakerVoice3
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
						\tag #'Segment10dPercussionShakerVoice4
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment10dPercussionShakerVoice5
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 -\staccatissimo \pp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a16 -\staccatissimo
							}
						}
						\tag #'Segment10dPercussionShakerVoice6
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a16 -\staccatissimo
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
						\tag #'Segment10dPercussionShakerVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment10dPercussionShakerVoice8
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment10dPercussionShakerVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10dPercussionShakerVoice10
						{
							{
								r8
							}
						}
						\tag #'Segment10dPercussionShakerVoice11
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
						\tag #'Segment10dPercussionShakerVoice12
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment10dPercussionShakerVoice13
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo \ppp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment10dPercussionShakerVoice14
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment10dPercussionShakerVoice15
						{
							{
								R1 * 1/2
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
						\tag #'Segment10dPercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment10dPercussionWoodblockVoice2
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment10dPercussionWoodblockVoice3
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment10dPercussionWoodblockVoice4
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment10dPercussionWoodblockVoice5
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment10dPercussionWoodblockVoice6
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment10dPercussionWoodblockVoice7
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment10dPercussionWoodblockVoice8
						{
							{
								R1 * 1/2
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
						\tag #'Segment10dPercussionDrumVoice1
						{
							\times 2/3 {
								\afterGrace
								e'2 \< \mp
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
								c'4 ~ \)
							}
						}
						\tag #'Segment10dPercussionDrumVoice2
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								c'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ] \f
							}
						}
					}
					{
						\tag #'Segment10dPercussionDrumVoice3
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment10dPercussionDrumVoice4
						{
							{
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
						\tag #'Segment10dPercussionDrumVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								a4 \mp \)
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 \mp ]
							}
						}
					}
					{
						\tag #'Segment10dPercussionDrumVoice6
						{
							{
								\afterGrace
								r4
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
						\tag #'Segment10dPercussionDrumVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 \) [ \< \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 ~
							}
						}
						\tag #'Segment10dPercussionDrumVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								c'8.
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
						\tag #'Segment10dPercussionDrumVoice9
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment10dPercussionDrumVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 \mp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 ~
							}
						}
						\tag #'Segment10dPercussionDrumVoice11
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 ~ \) \> \sfp
							}
						}
						\tag #'Segment10dPercussionDrumVoice12
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 ] \!
								\revert Hairpin #'circled-tip
							}
						}
					}
					{
						\tag #'Segment10dPercussionDrumVoice13
						{
							{
								r4
								\bar "||"
							}
						}
					}
				}
			}
		>>
	>>
}