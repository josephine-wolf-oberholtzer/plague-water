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
				\mark \markup { \override #'(box-padding . 0.5) \box 2 }
				\tempo 4=80
				\time 3/4
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				\time 6/8
				s1 * 3/4
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				\time 6/8
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
						\tag #'Segment2SaxophoneVoice1
						{
							{
								\afterGrace
								r4
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
						\tag #'Segment2SaxophoneVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								fs4 -\accent \) \< \mp
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d'8 -\tenuto [
							}
						}
						\tag #'Segment2SaxophoneVoice3
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								c8 -\accent
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8 -\tenuto \)
							}
						}
						\tag #'Segment2SaxophoneVoice4
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								cs'8 -\accent \f \startTrillSpan e'
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment2SaxophoneVoice5
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment2SaxophoneVoice6
						{
							{
								\pitchedTrill
								b,4 -\accent \< \mp \startTrillSpan e
								<> \stopTrillSpan
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 -\tenuto [
							}
						}
						\tag #'Segment2SaxophoneVoice7
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								b,8. -\accent
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8 -\tenuto \)
							}
						}
						\tag #'Segment2SaxophoneVoice8
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								a8 -\accent
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 [ \(
									fs,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8. -\tenuto \)
							}
						}
						\tag #'Segment2SaxophoneVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a,16 -\accent
							}
						}
						\tag #'Segment2SaxophoneVoice10
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								b,8. -\accent \startTrillSpan d
								<> \stopTrillSpan
							}
						}
						\tag #'Segment2SaxophoneVoice11
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e16 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af16 -\tenuto ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								af8 ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								af16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e16 -\tenuto
							}
						}
						\tag #'Segment2SaxophoneVoice12
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f,16 -\accent
							}
						}
						\tag #'Segment2SaxophoneVoice13
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e,8 -\accent \f
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment2SaxophoneVoice14
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								\afterGrace
								R1 * 3/4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									ef,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment2SaxophoneVoice15
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								af,4 \) \< \mp
								\pitchedTrill
								c4 ~ \startTrillSpan ef
							}
						}
						\tag #'Segment2SaxophoneVoice16
						{
							\times 2/3 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								\afterGrace
								c8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								bf,4 \f \)
							}
						}
					}
					{
						\tag #'Segment2SaxophoneVoice17
						{
							{
								r8
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
						\tag #'Segment2GuitarVoice1
						{
							{
								\afterGrace
								r4
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
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment2GuitarVoice2
						{
							{
								af4 -\accent \) \< \mp
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs'16 - \bendAfter #'-4.0 [
							}
						}
						\tag #'Segment2GuitarVoice3
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								ef8. -\accent
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									fs16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d8 - \bendAfter #'-4.0 \)
							}
						}
						\tag #'Segment2GuitarVoice4
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 -\accent
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								\pitchedTrill
								b,8. - \bendAfter #'-4.0 ] \f \startTrillSpan d
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment2GuitarVoice5
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment2GuitarVoice6
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								\pitchedTrill
								a4 -\accent \< \mp \startTrillSpan d'
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b8 - \bendAfter #'4.0 \) [
							}
						}
						\tag #'Segment2GuitarVoice7
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								a,8 -\accent
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 [ \(
									fs16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8 - \bendAfter #'4.0 \)
							}
						}
						\tag #'Segment2GuitarVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								af8 -\accent
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								b,8 - \bendAfter #'4.0 \) \startTrillSpan d
								<> \stopTrillSpan
							}
						}
						\tag #'Segment2GuitarVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								af,16 -\accent
							}
						}
						\tag #'Segment2GuitarVoice10
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a,16 -\accent
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								af8. - \bendAfter #'4.0
							}
						}
						\tag #'Segment2GuitarVoice11
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f16 -\accent ]
								d4 - \bendAfter #'4.0
							}
						}
						\tag #'Segment2GuitarVoice12
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								af,16 -\accent [
							}
						}
						\tag #'Segment2GuitarVoice13
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8. -\accent \f
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment2GuitarVoice14
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
						\tag #'Segment2GuitarVoice15
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment2GuitarVoice16
						{
							{
								\afterGrace
								ef4 -\accent \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									fs16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								bf16 - \bendAfter #'-4.0 \)
							}
						}
					}
					{
						\tag #'Segment2GuitarVoice17
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
						\tag #'Segment2PianoRHVoice1
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment2PianoRHVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef treble
								cs'16 -\accent \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<af''>16 -\staccato
							}
						}
						\tag #'Segment2PianoRHVoice3
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<f' gf' cf''>8 -\accent
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								<d' f' a'>16 -\staccato ]
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
						\tag #'Segment2PianoRHVoice4
						{
							\times 2/3 {
								r4
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								<g' b' d'' f''>4 -\accent \p
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								<d' gf'>4 -\staccato
							}
						}
					}
					{
						\tag #'Segment2PianoRHVoice5
						{
							{
								r8
							}
						}
						\tag #'Segment2PianoRHVoice6
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
						\tag #'Segment2PianoRHVoice7
						{
							{
								r4
								r8.
							}
						}
					}
					{
						\tag #'Segment2PianoRHVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<e' f' bf'>16 -\accent \p ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<e' f' bf'>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment2PianoRHVoice9
						{
							{
								r16
							}
						}
						\tag #'Segment2PianoRHVoice10
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
						\tag #'Segment2PianoRHVoice11
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment2PianoRHVoice12
						{
							{
								<af'>4 -\accent \p
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								cs''8 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment2PianoRHVoice13
						{
							{
								r16
							}
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment2PianoLHVoice1
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
						\tag #'Segment2PianoLHVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/8 {
								\clef bass
								d,4 -\accent \p
								<e fs>4 -\staccato
							}
						}
					}
					{
						\tag #'Segment2PianoLHVoice3
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment2PianoLHVoice4
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
						\tag #'Segment2PianoLHVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f,16 -\accent \p ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<d>16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment2PianoLHVoice6
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment2PianoLHVoice7
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
						\tag #'Segment2PianoLHVoice8
						{
							{
								f,4 -\accent \p
								<c' df' gf'>4 -\staccato
							}
						}
					}
					{
						\tag #'Segment2PianoLHVoice9
						{
							{
								r4
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment2PianoPedals1
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment2PianoPedals2
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment2PianoPedals3
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment2PianoPedals4
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment2PianoPedals5
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment2PianoPedals6
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
						\tag #'Segment2PercussionShakerVoice1
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
						\tag #'Segment2PercussionShakerVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/12 {
								g2 -\staccatissimo \p
								f'4 -\staccatissimo
							}
						}
					}
					{
						\tag #'Segment2PercussionShakerVoice3
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment2PercussionShakerVoice4
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
						\tag #'Segment2PercussionShakerVoice5
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b16 -\staccatissimo \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16 -\staccatissimo
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f'16 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment2PercussionShakerVoice6
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment2PercussionShakerVoice7
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
						\tag #'Segment2PercussionShakerVoice8
						{
							{
								d'4 -\staccatissimo \p
								g4 -\staccatissimo
							}
						}
					}
					{
						\tag #'Segment2PercussionShakerVoice9
						{
							{
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
						\tag #'Segment2PercussionWoodblockVoice1
						{
							{
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f8 -\staccatissimo [ \> \p
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								a8 -\staccatissimo ] \)
							}
						}
						\tag #'Segment2PercussionWoodblockVoice2
						{
							{
								g'4 -\staccatissimo
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 -\staccatissimo \! [
								\revert Hairpin #'circled-tip
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment2PercussionWoodblockVoice3
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment2PercussionWoodblockVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\staccatissimo \p ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								e'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 -\staccatissimo ] \)
							}
						}
					}
					{
						\tag #'Segment2PercussionWoodblockVoice5
						{
							{
								r8.
							}
						}
						\tag #'Segment2PercussionWoodblockVoice6
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
						\tag #'Segment2PercussionWoodblockVoice7
						{
							{
								\afterGrace
								e'4 -\staccatissimo \p \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'4 -\staccatissimo \)
							}
						}
					}
					{
						\tag #'Segment2PercussionWoodblockVoice8
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment2PercussionWoodblockVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 -\staccatissimo \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g'8 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment2PercussionWoodblockVoice10
						{
							{
								r8
							}
						}
						\tag #'Segment2PercussionWoodblockVoice11
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment2PercussionWoodblockVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 -\staccatissimo \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 -\staccatissimo ]
							}
						}
					}
					{
						\tag #'Segment2PercussionWoodblockVoice13
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment2PercussionWoodblockVoice14
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 -\staccatissimo ~ \> \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f8 -\staccatissimo ] \!
								\revert Hairpin #'circled-tip
							}
						}
					}
					{
						\tag #'Segment2PercussionWoodblockVoice15
						{
							{
								r4.
							}
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						\tag #'Segment2PercussionDrumVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
							}
						}
						\tag #'Segment2PercussionDrumVoice2
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment2PercussionDrumVoice3
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment2PercussionDrumVoice4
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment2PercussionDrumVoice5
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment2PercussionDrumVoice6
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