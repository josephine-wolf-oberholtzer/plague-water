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
				\mark \markup { \override #'(box-padding . 0.5) \box 3B }
				\tempo 4=72
				\time 4/4
				s1 * 1
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				s1 * 1/4
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				s1 * 1/4
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				s1 * 1/2
			}
			{
				\time 4/4
				s1 * 1
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
						\tag #'Segment3bSaxophoneVoice1
						{
							{
								r4
								r8.
							}
						}
					}
					{
						\tag #'Segment3bSaxophoneVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								b,4 \sfz
								\pitchedTrill
								af2 ~ \startTrillSpan cf'
							}
						}
						\tag #'Segment3bSaxophoneVoice3
						{
							\times 2/3 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								af8 [
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 [ \(
									af16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								b,8 ~ ] \) \> \ff
							}
						}
						\tag #'Segment3bSaxophoneVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 11/16 {
								\afterGrace
								b,2
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								f2 ~ \)
							}
						}
						\tag #'Segment3bSaxophoneVoice5
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								\afterGrace
								f8. [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									bf16 [ \(
									b16
									af16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								\pitchedTrill
								a8 ] \mf \) \startTrillSpan d'
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment3bSaxophoneVoice6
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3bSaxophoneVoice7
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3bSaxophoneVoice8
						{
							{
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment3bSaxophoneVoice9
						{
							\times 2/3 {
								\afterGrace
								\pitchedTrill
								c2 \sfz \) \startTrillSpan f
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								c'4 \)
							}
						}
					}
					{
						\tag #'Segment3bSaxophoneVoice10
						{
							{
								r4
							}
						}
						\tag #'Segment3bSaxophoneVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3bSaxophoneVoice12
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment3bSaxophoneVoice13
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/8 {
								b4 \sfz
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								r8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 [ \(
									af16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d'8 \sfz ] \)
							}
						}
					}
					{
						\tag #'Segment3bSaxophoneVoice14
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment3bSaxophoneVoice15
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\pitchedTrill
								d4 \sfz \) \startTrillSpan f
								<> \stopTrillSpan
								e'4
							}
						}
					}
					{
						\tag #'Segment3bSaxophoneVoice16
						{
							{
								r8
							}
						}
						\tag #'Segment3bSaxophoneVoice17
						{
							{
								r2
								r8.
							}
						}
					}
					{
						\tag #'Segment3bSaxophoneVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f8 \sfz
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 [ \(
									af'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								f'4 ~ \)
							}
						}
						\tag #'Segment3bSaxophoneVoice19
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/12 {
								f'4
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\pitchedTrill
								f4 \f \) \startTrillSpan af
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment3bSaxophoneVoice20
						{
							{
								r16
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
						\tag #'Segment3bGuitarVoice1
						{
							{
								r2
									^ \markup {
										\box
											\pad-around
												#0.5
												\large
													\bold
														\caps
															"Color Three"
										}
								r8.
							}
						}
					}
					{
						\tag #'Segment3bGuitarVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								<d>4 -\tenuto \p
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<gf>8 -\tenuto [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment3bGuitarVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3bGuitarVoice4
						{
							{
								R1 * 1
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3bGuitarVoice5
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment3bGuitarVoice6
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<d>16 -\tenuto \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<b fs' gs''>16 -\tenuto \arpeggio
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment3bGuitarVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment3bGuitarVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3bGuitarVoice9
						{
							{
								R1 * 1
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3bGuitarVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment3bGuitarVoice11
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<ef' df''>16 -\tenuto \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af'16 -\tenuto ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment3bGuitarVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3bGuitarVoice13
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3bGuitarVoice14
						{
							{
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment3bGuitarVoice15
						{
							\times 2/3 {
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<f>8 -\tenuto \) \> \p
								<fs>4 -\tenuto
							}
						}
						\tag #'Segment3bGuitarVoice16
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								<af>8 -\tenuto [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af'8 -\tenuto ] \!
								\revert Hairpin #'circled-tip
							}
						}
					}
					{
						\tag #'Segment3bGuitarVoice17
						{
							{
								r2.
							}
						}
						\tag #'Segment3bGuitarVoice18
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
		\tag score.piano
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\context Voice = "Piano RH Voice" {
					{
						\tag #'Segment3bPianoRHVoice1
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment3bPianoRHVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\clef treble
								d'''16 \p [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''''16 ] )
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment3bPianoRHVoice3
						{
							{
								r4
							}
						}
						\tag #'Segment3bPianoRHVoice4
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3bPianoRHVoice5
						{
							{
								r2.
								r8
							}
						}
					}
					{
						\tag #'Segment3bPianoRHVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<f'' a'' c''' e'''>16 \p (
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								<f''' a''' c''''>32
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
							}
						}
						\tag #'Segment3bPianoRHVoice7
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
								<g'' b'' d'''>16
									^ \markup {
										\center-align
											\natural
										}
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<f'' a'' c'''>16 )
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment3bPianoRHVoice8
						{
							{
								r8
							}
						}
						\tag #'Segment3bPianoRHVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3bPianoRHVoice10
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3bPianoRHVoice11
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPianoRHVoice12
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPianoRHVoice13
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3bPianoRHVoice14
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3bPianoRHVoice15
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3bPianoRHVoice16
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
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment3bPianoLHVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment3bPianoLHVoice2
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPianoLHVoice3
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3bPianoLHVoice4
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPianoLHVoice5
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPianoLHVoice6
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3bPianoLHVoice7
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPianoLHVoice8
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPianoLHVoice9
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3bPianoLHVoice10
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3bPianoLHVoice11
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3bPianoLHVoice12
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
					\tag #'Segment3bPianoPedals1
					{
						{
							r2
							r8
						}
					}
				}
				{
					\tag #'Segment3bPianoPedals2
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
					\tag #'Segment3bPianoPedals3
					{
						{
							r4
						}
					}
					\tag #'Segment3bPianoPedals4
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment3bPianoPedals5
					{
						{
							r2.
							r8
						}
					}
				}
				{
					\tag #'Segment3bPianoPedals6
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/8 \sustainOn
						}
					}
					\tag #'Segment3bPianoPedals7
					{
						{
							s1 * 1/8
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment3bPianoPedals8
					{
						{
							r8
						}
					}
					\tag #'Segment3bPianoPedals9
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment3bPianoPedals10
					{
						{
							R1 * 1
						}
					}
					\tag #'Segment3bPianoPedals11
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment3bPianoPedals12
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment3bPianoPedals13
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment3bPianoPedals14
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment3bPianoPedals15
					{
						{
							R1 * 1
						}
					}
					\tag #'Segment3bPianoPedals16
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
						\tag #'Segment3bPercussionShakerVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment3bPercussionShakerVoice2
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPercussionShakerVoice3
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3bPercussionShakerVoice4
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPercussionShakerVoice5
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPercussionShakerVoice6
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3bPercussionShakerVoice7
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPercussionShakerVoice8
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3bPercussionShakerVoice9
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3bPercussionShakerVoice10
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3bPercussionShakerVoice11
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3bPercussionShakerVoice12
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
						\tag #'Segment3bPercussionWoodblockVoice1
						{
							{
								r2
								r8.
							}
						}
					}
					{
						\tag #'Segment3bPercussionWoodblockVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								f4 -\accent \mp
								c'4 -\staccato
							}
						}
					}
					{
						\tag #'Segment3bPercussionWoodblockVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3bPercussionWoodblockVoice4
						{
							{
								R1 * 1
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3bPercussionWoodblockVoice5
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment3bPercussionWoodblockVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								g'16 -\accent \mp [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment3bPercussionWoodblockVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment3bPercussionWoodblockVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3bPercussionWoodblockVoice9
						{
							{
								R1 * 1
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3bPercussionWoodblockVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment3bPercussionWoodblockVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 -\accent \mp
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment3bPercussionWoodblockVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3bPercussionWoodblockVoice13
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3bPercussionWoodblockVoice14
						{
							{
								\afterGrace
								r4
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
						\tag #'Segment3bPercussionWoodblockVoice15
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f8 -\accent \mp \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g'8 -\staccato \)
							}
						}
						\tag #'Segment3bPercussionWoodblockVoice16
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 -\accent \sfp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment3bPercussionWoodblockVoice17
						{
							{
								r2.
							}
						}
						\tag #'Segment3bPercussionWoodblockVoice18
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
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						\tag #'Segment3bPercussionDrumVoice1
						{
							{
								r4
									^ \markup {
										\box
											\pad-around
												#0.5
												\large
													\bold
														\caps
															Superball
										}
								r8
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								a2 -\accent \mp
								r4
								e'4 \sfp
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3bPercussionDrumVoice4
						{
							{
								r4
								r8.
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\afterGrace
								c'4 -\accent \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a4 \)
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice6
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice7
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								c'8 -\accent \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a4 \)
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3bPercussionDrumVoice9
						{
							{
								r2
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
						\tag #'Segment3bPercussionDrumVoice10
						{
							{
								c'4 -\accent \mp \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								\afterGrace
								R1 * 1/4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 -\accent \mp \) [
								\set stemLeftBeamCount = 1
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
								a16 \mp ] \)
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice13
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice14
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								e'4 -\accent \< \mp
								c'4 -\accent ~
							}
						}
						\tag #'Segment3bPercussionDrumVoice15
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								c'4.
								e'4 \f
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice16
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
						\tag #'Segment3bPercussionDrumVoice17
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 -\accent \mp \)
								e'4
							}
						}
					}
					{
						\tag #'Segment3bPercussionDrumVoice18
						{
							{
								r2.
							}
						}
						\tag #'Segment3bPercussionDrumVoice19
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
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