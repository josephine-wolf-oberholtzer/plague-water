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
				\mark \markup { \override #'(box-padding . 0.5) \box 13 }
				\tempo 4=80
				\time 3/4
				s1 * 3/4
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
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
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
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
						\tag #'Segment13SaxophoneVoice1
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice2
						{
							\times 4/5 {
								b,4 \) \< \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a16 [
							}
						}
						\tag #'Segment13SaxophoneVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b,16
							}
						}
						\tag #'Segment13SaxophoneVoice4
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								\pitchedTrill
								a,8 \startTrillSpan c
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a16 \)
							}
						}
						\tag #'Segment13SaxophoneVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8. \f
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice6
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice7
						{
							{
								\pitchedTrill
								af,4 \mp \startTrillSpan df
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice8
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice9
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								f4 \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d8 \)
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice10
						{
							{
								r16
							}
						}
						\tag #'Segment13SaxophoneVoice11
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
									a,16 [ \(
									b,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice12
						{
							{
								\afterGrace
								\pitchedTrill
								g,4 \) \< \mp \startTrillSpan bf,
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e16 \) [
							}
						}
						\tag #'Segment13SaxophoneVoice13
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f,16
							}
						}
						\tag #'Segment13SaxophoneVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ] \f
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice15
						{
							{
								r4
							}
						}
						\tag #'Segment13SaxophoneVoice16
						{
							{
								\afterGrace
								r8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice17
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c8 \) [ \< \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								f8 ~ \startTrillSpan af
							}
						}
						\tag #'Segment13SaxophoneVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f8 ]
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								f,4 \f \)
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice19
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice20
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\pitchedTrill
								b,8 \mp [ \startTrillSpan e
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs8 ]
							}
						}
					}
					{
						\tag #'Segment13SaxophoneVoice21
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
						\tag #'Segment13GuitarVoice1
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
									a,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice2
						{
							{
								b,4 \) \< \mp
							}
						}
						\tag #'Segment13GuitarVoice3
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								a16 [
							}
						}
						\tag #'Segment13GuitarVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								b,8. \startTrillSpan d
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a,16
							}
						}
						\tag #'Segment13GuitarVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								b8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ] \f \)
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice6
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice7
						{
							\times 4/5 {
								\pitchedTrill
								f4 \mp \startTrillSpan bf
								<> \stopTrillSpan
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice8
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice9
						{
							{
								e4 \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice10
						{
							{
								r16
							}
						}
						\tag #'Segment13GuitarVoice11
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
									a,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice12
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								\pitchedTrill
								g,4 \) \< \mp \startTrillSpan bf,
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 [ \(
									b16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 \) [
							}
						}
						\tag #'Segment13GuitarVoice13
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af,16
							}
						}
						\tag #'Segment13GuitarVoice14
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								ef16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ] \f \)
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice15
						{
							{
								r4
							}
						}
						\tag #'Segment13GuitarVoice16
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice17
						{
							{
								\afterGrace
								ef4 \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f16 \) [
							}
						}
						\tag #'Segment13GuitarVoice18
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								\pitchedTrill
								b,8 ] \f \startTrillSpan d
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice19
						{
							{
								r8
							}
						}
						\tag #'Segment13GuitarVoice20
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice21
						{
							\times 4/5 {
								cs4 \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								bf16
							}
						}
					}
					{
						\tag #'Segment13GuitarVoice22
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
						\tag #'Segment13PianoRHVoice1
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment13PianoRHVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\clef treble
								a'16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<e'' g''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								r16 ]
							}
						}
						\tag #'Segment13PianoRHVoice3
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								<d' f' a'>4 \p
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								<c' d' f'>4
							}
						}
					}
					{
						\tag #'Segment13PianoRHVoice4
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
						\tag #'Segment13PianoRHVoice5
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment13PianoRHVoice6
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af16 \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<b' d''>16
							}
						}
						\tag #'Segment13PianoRHVoice7
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef bass
								<af bf cf' ff'>16 \< \pp
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								b32
							}
						}
						\tag #'Segment13PianoRHVoice8
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<f a c'>8 \p
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment13PianoRHVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\clef treble
								f'16 \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<ef' gf' af'>16 ]
							}
						}
					}
					{
						\tag #'Segment13PianoRHVoice10
						{
							{
								r4
							}
						}
						\tag #'Segment13PianoRHVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
							}
						}
						\tag #'Segment13PianoRHVoice12
						{
							{
								R1 * 3/4
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
						\tag #'Segment13PianoLHVoice1
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment13PianoLHVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef bass
								<f, g, af, df>16 \> \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af,16
							}
						}
						\tag #'Segment13PianoLHVoice3
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<e, g, a,>16
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<a,, c, e, g,>8
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
						\tag #'Segment13PianoLHVoice4
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<ds, e, g,>8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<af,, cf,>8 \!
								\revert Hairpin #'circled-tip
							}
						}
						\tag #'Segment13PianoLHVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #-1
								d,16 \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af,,16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment13PianoLHVoice6
						{
							{
								r4
							}
						}
						\tag #'Segment13PianoLHVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
							}
						}
						\tag #'Segment13PianoLHVoice8
						{
							{
								R1 * 3/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment13PianoLHVoice9
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment13PianoLHVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #-1
								<g,, b,, d, f,>8 \> \p
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<d, ef, gf,>8
							}
						}
						\tag #'Segment13PianoLHVoice11
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f,,8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<c, ef,>16 ] \!
								\ottava #0
								\revert Hairpin #'circled-tip
							}
						}
					}
					{
						\tag #'Segment13PianoLHVoice12
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment13PianoLHVoice13
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment13PianoLHVoice14
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #-1
								<b,,, cs,, d,, g,,>16 \p ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<b,,, cs,, d,, g,,>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af,,16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment13PianoLHVoice15
						{
							{
								r8
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment13PianoPedals1
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment13PianoPedals2
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment13PianoPedals3
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment13PianoPedals4
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment13PianoPedals5
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment13PianoPedals6
					{
						{
							R1 * 3/8
						}
					}
					\tag #'Segment13PianoPedals7
					{
						{
							R1 * 3/4
						}
					}
					\tag #'Segment13PianoPedals8
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
						\tag #'Segment13PercussionShakerVoice1
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment13PercussionShakerVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								g16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f'16
							}
						}
						\tag #'Segment13PercussionShakerVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
							}
						}
						\tag #'Segment13PercussionShakerVoice4
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8 \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8
							}
						}
						\tag #'Segment13PercussionShakerVoice5
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16 \pp
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b32 ]
							}
						}
					}
					{
						\tag #'Segment13PercussionShakerVoice6
						{
							{
								r4
							}
						}
						\tag #'Segment13PercussionShakerVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
							}
						}
						\tag #'Segment13PercussionShakerVoice8
						{
							{
								R1 * 3/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment13PercussionShakerVoice9
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment13PercussionShakerVoice10
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16 ~ \> \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g16
							}
						}
						\tag #'Segment13PercussionShakerVoice11
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16 \!
								\revert Hairpin #'circled-tip
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment13PercussionShakerVoice12
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment13PercussionShakerVoice13
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment13PercussionShakerVoice14
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d'8 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8 ]
							}
						}
					}
					{
						\tag #'Segment13PercussionShakerVoice15
						{
							{
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
						\tag #'Segment13PercussionWoodblockVoice1
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
						\tag #'Segment13PercussionWoodblockVoice2
						{
							{
								r4
							}
						}
						\tag #'Segment13PercussionWoodblockVoice3
						{
							{
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment13PercussionWoodblockVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g'16 \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
							}
						}
					}
					{
						\tag #'Segment13PercussionWoodblockVoice5
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment13PercussionWoodblockVoice6
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 \p ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								e'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f8 ] \)
							}
						}
					}
					{
						\tag #'Segment13PercussionWoodblockVoice7
						{
							{
								r2
								\afterGrace
								r16
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
						\tag #'Segment13PercussionWoodblockVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								e'8 \p \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e'16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment13PercussionWoodblockVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g'8 ]
							}
						}
					}
					{
						\tag #'Segment13PercussionWoodblockVoice10
						{
							{
								r8
							}
						}
						\tag #'Segment13PercussionWoodblockVoice11
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment13PercussionWoodblockVoice12
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								r8 ]
							}
						}
						\tag #'Segment13PercussionWoodblockVoice13
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/8 {
								\afterGrace
								c'4 \pp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								g'4 \)
							}
						}
					}
					{
						\tag #'Segment13PercussionWoodblockVoice14
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment13PercussionWoodblockVoice15
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment13PercussionWoodblockVoice16
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 ]
							}
						}
					}
					{
						\tag #'Segment13PercussionWoodblockVoice17
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
						\tag #'Segment13PercussionDrumVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/4
							}
						}
						\tag #'Segment13PercussionDrumVoice2
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment13PercussionDrumVoice3
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment13PercussionDrumVoice4
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment13PercussionDrumVoice5
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment13PercussionDrumVoice6
						{
							{
								R1 * 3/8
							}
						}
						\tag #'Segment13PercussionDrumVoice7
						{
							{
								R1 * 3/4
							}
						}
						\tag #'Segment13PercussionDrumVoice8
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