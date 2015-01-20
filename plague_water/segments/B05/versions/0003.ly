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
				\mark \markup { \override #'(box-padding . 0.5) \box 5 }
				\tempo 4=80
				\time 3/4
				s1 * 3/4
			}
			{
				\time 6/16
				s1 * 3/8
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 9/16
				s1 * 9/16
			}
			{
				s1 * 9/16
			}
			{
				\time 3/4
				s1 * 3/4
			}
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						\tag #'Segment5SaxophoneVoice1
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment5SaxophoneVoice2
						{
							\times 4/5 {
								bf4 \) \< \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs'16 [
							}
						}
						\tag #'Segment5SaxophoneVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								ef16
							}
						}
						\tag #'Segment5SaxophoneVoice4
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								\pitchedTrill
								cs'8 \startTrillSpan e'
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								fs'16 \)
							}
						}
						\tag #'Segment5SaxophoneVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								af8.
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs8 ] \f
							}
						}
					}
					{
						\tag #'Segment5SaxophoneVoice6
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
					{
						\tag #'Segment5SaxophoneVoice7
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								\pitchedTrill
								f4 \mp \startTrillSpan bf
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs'8 \)
							}
						}
					}
					{
						\tag #'Segment5SaxophoneVoice8
						{
							{
								r16
							}
						}
						\tag #'Segment5SaxophoneVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
							}
						}
						\tag #'Segment5SaxophoneVoice10
						{
							{
								R1 * 3/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment5SaxophoneVoice11
						{
							{
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 [ \(
									bf,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment5SaxophoneVoice12
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								f4 \) \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f8 \) [
							}
						}
						\tag #'Segment5SaxophoneVoice13
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af,16 ] \f
							}
						}
					}
					{
						\tag #'Segment5SaxophoneVoice14
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 9/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment5SaxophoneVoice15
						{
							{
								\afterGrace
								r8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment5SaxophoneVoice16
						{
							\times 2/3 {
								f,4 \mp \)
								r4
								\pitchedTrill
								f4 \sfp \startTrillSpan af
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment5SaxophoneVoice17
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
						\tag #'Segment5GuitarVoice1
						{
							{
								\afterGrace
								r16
									^ \markup {
										\box
											\pad-around
												#0.5
												\large
													\bold
														\caps
															"Color Two"
										}
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									cs'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice2
						{
							{
								ef'4 \) \< \mp
							}
						}
						\tag #'Segment5GuitarVoice3
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								bf'16 [
							}
						}
						\tag #'Segment5GuitarVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								ef'8. \startTrillSpan gf'
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								af16
							}
						}
						\tag #'Segment5GuitarVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								ef'8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									bf16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ] \f \)
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice6
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice7
						{
							\times 4/5 {
								\pitchedTrill
								ef'4 \mp \startTrillSpan af'
								<> \stopTrillSpan
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice8
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice9
						{
							{
								\afterGrace
								b4 \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs'16 \)
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice10
						{
							{
								r16
							}
						}
						\tag #'Segment5GuitarVoice11
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
						\tag #'Segment5GuitarVoice12
						{
							{
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 [ \(
									bf16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice13
						{
							\times 4/5 {
								\pitchedTrill
								a4 \mp \) \startTrillSpan c'
								<> \stopTrillSpan
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice14
						{
							{
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice15
						{
							{
								f4 \) \< \mp
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d'16 [
							}
						}
						\tag #'Segment5GuitarVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								\pitchedTrill
								f8 ] \f \startTrillSpan af
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice17
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 9/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment5GuitarVoice18
						{
							{
								\afterGrace
								r8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice19
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								f4 \) \< \mp
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d8 [
							}
						}
						\tag #'Segment5GuitarVoice20
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								af,8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e16 ] \f
							}
						}
					}
					{
						\tag #'Segment5GuitarVoice21
						{
							{
								r8
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
						\tag #'Segment5PianoRHVoice1
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
						\tag #'Segment5PianoRHVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\clef treble
								<fs' gs' a' d''>8 \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d''8 ]
							}
						}
					}
					{
						\tag #'Segment5PianoRHVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/8
							}
						}
						\tag #'Segment5PianoRHVoice4
						{
							{
								R1 * 3/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment5PianoRHVoice5
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<a' b' c'' f''>16 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b''8 ]
							}
						}
					}
					{
						\tag #'Segment5PianoRHVoice6
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment5PianoRHVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 9/16
							}
						}
						\tag #'Segment5PianoRHVoice8
						{
							{
								R1 * 9/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment5PianoRHVoice9
						{
							\times 2/3 {
								<af' bf' cf'' ff''>2 \p
								e''4
							}
						}
					}
					{
						\tag #'Segment5PianoRHVoice10
						{
							{
								r4
							}
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment5PianoLHVoice1
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment5PianoLHVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\clef bass
								bf,8 \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<ef gf>8 ]
							}
						}
					}
					{
						\tag #'Segment5PianoLHVoice3
						{
							{
								r8
							}
						}
						\tag #'Segment5PianoLHVoice4
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/8
							}
						}
						\tag #'Segment5PianoLHVoice5
						{
							{
								R1 * 3/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment5PianoLHVoice6
						{
							{
								r4
								r8.
							}
						}
					}
					{
						\tag #'Segment5PianoLHVoice7
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #-1
								a,,8 \> \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<b,, d,>8
							}
						}
						\tag #'Segment5PianoLHVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a,,8
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<g,, b,, d,>16 ] \!
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
						\tag #'Segment5PianoLHVoice9
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment5PianoLHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 9/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment5PianoLHVoice11
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment5PianoLHVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #-1
								e,,16 \p ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e,,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<d, f,>16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment5PianoLHVoice13
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment5PianoLHVoice14
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\ottava #-1
								f,,4 \p
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e,8 [
								\ottava #0
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment5PianoLHVoice15
						{
							{
								r8.
								r4
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment5PianoPedals1
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment5PianoPedals2
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment5PianoPedals3
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment5PianoPedals4
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment5PianoPedals5
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment5PianoPedals6
					{
						{
							R1 * 9/16
						}
					}
					\tag #'Segment5PianoPedals7
					{
						{
							R1 * 9/16
						}
					}
					\tag #'Segment5PianoPedals8
					{
						{
							R1 * 3/4
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
						\tag #'Segment5PercussionShakerVoice1
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment5PercussionShakerVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8 ]
							}
						}
					}
					{
						\tag #'Segment5PercussionShakerVoice3
						{
							{
								r8
							}
						}
						\tag #'Segment5PercussionShakerVoice4
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/8
							}
						}
						\tag #'Segment5PercussionShakerVoice5
						{
							{
								R1 * 3/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment5PercussionShakerVoice6
						{
							{
								r4
								r8.
							}
						}
					}
					{
						\tag #'Segment5PercussionShakerVoice7
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8 ~ \> \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8
							}
						}
						\tag #'Segment5PercussionShakerVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16 \!
								\revert Hairpin #'circled-tip
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment5PercussionShakerVoice9
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment5PercussionShakerVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 9/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment5PercussionShakerVoice11
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment5PercussionShakerVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 ]
							}
						}
					}
					{
						\tag #'Segment5PercussionShakerVoice13
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment5PercussionShakerVoice14
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8 \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g8 ]
							}
						}
					}
					{
						\tag #'Segment5PercussionShakerVoice15
						{
							{
								r8.
								r4
							}
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						\tag #'Segment5PercussionWoodblockVoice1
						{
							\times 2/3 {
								r4
								\afterGrace
								f4 \p
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
						\tag #'Segment5PercussionWoodblockVoice2
						{
							{
								r4
							}
						}
						\tag #'Segment5PercussionWoodblockVoice3
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment5PercussionWoodblockVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g'16 \p ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
							}
						}
					}
					{
						\tag #'Segment5PercussionWoodblockVoice5
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
						\tag #'Segment5PercussionWoodblockVoice6
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment5PercussionWoodblockVoice7
						{
							{
								\afterGrace
								e'4 \p
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment5PercussionWoodblockVoice8
						{
							{
								r8.
							}
						}
						\tag #'Segment5PercussionWoodblockVoice9
						{
							{
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 [ \(
									a16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment5PercussionWoodblockVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 \p \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment5PercussionWoodblockVoice11
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								e'16 \> \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								g'16 ] \)
							}
						}
						\tag #'Segment5PercussionWoodblockVoice12
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								c'4
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 \pp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment5PercussionWoodblockVoice13
						{
							{
								r16
							}
						}
						\tag #'Segment5PercussionWoodblockVoice14
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment5PercussionWoodblockVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f16
							}
						}
						\tag #'Segment5PercussionWoodblockVoice16
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g'8 \pp ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 ]
							}
						}
					}
					{
						\tag #'Segment5PercussionWoodblockVoice17
						{
							{
								r8.
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
						\tag #'Segment5PercussionDrumVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
							}
						}
						\tag #'Segment5PercussionDrumVoice2
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment5PercussionDrumVoice3
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment5PercussionDrumVoice4
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment5PercussionDrumVoice5
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment5PercussionDrumVoice6
						{
							{
								R1 * 9/16
							}
						}
						\tag #'Segment5PercussionDrumVoice7
						{
							{
								R1 * 9/16
							}
						}
						\tag #'Segment5PercussionDrumVoice8
						{
							{
								R1 * 3/4
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