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
				\mark \markup { \override #'(box-padding . 0.5) \box 12A }
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
				\time 2/8
				s1 * 1/4
			}
			{
				\time 2/4
				s1 * 1/2
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
				\time 2/8
				s1 * 1/4
			}
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						\tag #'Segment12aSaxophoneVoice1
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice2
						{
							{
								b,4 \sfz
								\pitchedTrill
								c'4 \startTrillSpan ef'
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice3
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
									b,16 [ \(
									af,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice4
						{
							\times 2/3 {
								\afterGrace
								\pitchedTrill
								b,4 \sfz \) \startTrillSpan e
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								ef2 ~ \)
							}
						}
						\tag #'Segment12aSaxophoneVoice5
						{
							\times 2/3 {
								ef4
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 [ \(
									af,16
									d16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\pitchedTrill
								a,4 \f \) \startTrillSpan c
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice6
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
									b,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice7
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								a,2 \sfz \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\pitchedTrill
								c'4 ~ \) \startTrillSpan f'
							}
						}
						\tag #'Segment12aSaxophoneVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								c'4
								<> \stopTrillSpan
								d4
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12aSaxophoneVoice10
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aSaxophoneVoice11
						{
							{
								\afterGrace
								R1 * 1/2
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									b,16 [ \(
									af16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\pitchedTrill
								d8 \sfz \) [ \startTrillSpan f
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								d'16 ~ ] \) \> \ff
							}
						}
						\tag #'Segment12aSaxophoneVoice13
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								d'4
								\pitchedTrill
								e4 \mf \startTrillSpan a
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice14
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice15
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f8 \sfz [
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
								\pitchedTrill
								d'8 ] \) \startTrillSpan f'
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice16
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
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice17
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/12 {
								\afterGrace
								f4 \sfz \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 [ \(
									af16
									d'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								f'2 \)
							}
						}
					}
					{
						\tag #'Segment12aSaxophoneVoice18
						{
							{
								r16
							}
						}
						\tag #'Segment12aSaxophoneVoice19
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
						\tag #'Segment12aGuitarVoice1
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
								r16
							}
						}
					}
					{
						\tag #'Segment12aGuitarVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<bf, af>8 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<f d'>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment12aGuitarVoice3
						{
							{
								r8.
							}
						}
						\tag #'Segment12aGuitarVoice4
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
						\tag #'Segment12aGuitarVoice5
						{
							{
								r2.
								r16
							}
						}
					}
					{
						\tag #'Segment12aGuitarVoice6
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<g, fs a e'>16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d' b'>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment12aGuitarVoice7
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment12aGuitarVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<c a>16 \p
								{
									b'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<b fs' a' gs''>16 ] \)
							}
						}
					}
					{
						\tag #'Segment12aGuitarVoice9
						{
							{
								r16
							}
						}
						\tag #'Segment12aGuitarVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment12aGuitarVoice11
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12aGuitarVoice12
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment12aGuitarVoice13
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<ef g df'>16 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af'8 ]
							}
						}
					}
					{
						\tag #'Segment12aGuitarVoice14
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12aGuitarVoice15
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12aGuitarVoice16
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment12aGuitarVoice17
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<f d'>8 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<fs e'>16
							}
						}
						\tag #'Segment12aGuitarVoice18
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<cf af>16 \pp
								{
									b16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d'16 ] \)
							}
						}
					}
					{
						\tag #'Segment12aGuitarVoice19
						{
							{
								r16
							}
						}
						\tag #'Segment12aGuitarVoice20
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12aGuitarVoice21
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12aGuitarVoice22
						{
							{
								R1 * 1/4
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
						\tag #'Segment12aPianoRHVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment12aPianoRHVoice2
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12aPianoRHVoice3
						{
							{
								r2.
								r8
							}
						}
					}
					{
						\tag #'Segment12aPianoRHVoice4
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
								\set stemRightBeamCount = 1
								\clef treble
								<e'' g'' b'' d'''>8 \p [
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
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<g'' b'' d'''>16 ]
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
					}
					{
						\tag #'Segment12aPianoRHVoice5
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
						\tag #'Segment12aPianoRHVoice6
						{
							{
								r2.
								r8
							}
						}
					}
					{
						\tag #'Segment12aPianoRHVoice7
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
								<c'' e'' g''>16 \p [
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
								<d''' f''' a'''>16
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
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<f'' a'' c''' e''' g'''>16 ]
									^ \markup {
										\center-align
											\flat
										}
							}
						}
					}
					{
						\tag #'Segment12aPianoRHVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12aPianoRHVoice9
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPianoRHVoice10
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12aPianoRHVoice11
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPianoRHVoice12
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12aPianoRHVoice13
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPianoRHVoice14
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12aPianoRHVoice15
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment12aPianoRHVoice16
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								c'''16 \p [
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<c''' e''' g'''>16 ]
									^ \markup {
										\center-align
											\natural
										}
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment12aPianoRHVoice17
						{
							{
								r16
							}
						}
						\tag #'Segment12aPianoRHVoice18
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
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment12aPianoLHVoice1
						{
							{
								r2
								r8.
							}
						}
					}
					{
						\tag #'Segment12aPianoLHVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\clef treble
								<c'' ef''>8 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<ef'' gf''>8 ]
							}
						}
					}
					{
						\tag #'Segment12aPianoLHVoice3
						{
							{
								r8
							}
						}
						\tag #'Segment12aPianoLHVoice4
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
						\tag #'Segment12aPianoLHVoice5
						{
							{
								r2.
								r8
							}
						}
					}
					{
						\tag #'Segment12aPianoLHVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b'16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<a' c''>16 ]
							}
						}
					}
					{
						\tag #'Segment12aPianoLHVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12aPianoLHVoice8
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12aPianoLHVoice9
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPianoLHVoice10
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPianoLHVoice11
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12aPianoLHVoice12
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12aPianoLHVoice13
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment12aPianoLHVoice14
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16 \p
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<af'' cf'''>32 ]
							}
						}
					}
					{
						\tag #'Segment12aPianoLHVoice15
						{
							{
								r8
							}
						}
						\tag #'Segment12aPianoLHVoice16
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12aPianoLHVoice17
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPianoLHVoice18
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12aPianoLHVoice19
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<f' g' af' df''>16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c''16 ]
							}
						}
					}
					{
						\tag #'Segment12aPianoLHVoice20
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
					\tag #'Segment12aPianoPedals1
					{
						{
							r2
							r8.
						}
					}
				}
				{
					\tag #'Segment12aPianoPedals2
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
					\tag #'Segment12aPianoPedals3
					{
						{
							r8
						}
					}
					\tag #'Segment12aPianoPedals4
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12aPianoPedals5
					{
						{
							r2.
							r8
						}
					}
				}
				{
					\tag #'Segment12aPianoPedals6
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
					\tag #'Segment12aPianoPedals7
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12aPianoPedals8
					{
						{
							r2.
							r8
						}
					}
				}
				{
					\tag #'Segment12aPianoPedals9
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
					\tag #'Segment12aPianoPedals10
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12aPianoPedals11
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12aPianoPedals12
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment12aPianoPedals13
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12aPianoPedals14
					{
						{
							r4
						}
					}
				}
				{
					\tag #'Segment12aPianoPedals15
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
					\tag #'Segment12aPianoPedals16
					{
						{
							r8
						}
					}
					\tag #'Segment12aPianoPedals17
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12aPianoPedals18
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12aPianoPedals19
					{
						{
							r4
							r16
						}
					}
				}
				{
					\tag #'Segment12aPianoPedals20
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
					\tag #'Segment12aPianoPedals21
					{
						{
							r16
						}
					}
				}
				{
					\tag #'Segment12aPianoPedals22
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
					\tag #'Segment12aPianoPedals23
					{
						{
							r8
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
						\tag #'Segment12aPercussionShakerVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment12aPercussionShakerVoice2
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPercussionShakerVoice3
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12aPercussionShakerVoice4
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPercussionShakerVoice5
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12aPercussionShakerVoice6
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPercussionShakerVoice7
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPercussionShakerVoice8
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12aPercussionShakerVoice9
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPercussionShakerVoice10
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12aPercussionShakerVoice11
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPercussionShakerVoice12
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12aPercussionShakerVoice13
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12aPercussionShakerVoice14
						{
							{
								R1 * 1/4
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
						\tag #'Segment12aPercussionWoodblockVoice1
						{
							{
								r2
								r16
							}
						}
					}
					{
						\tag #'Segment12aPercussionWoodblockVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f8 -\accent \mp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment12aPercussionWoodblockVoice3
						{
							{
								r8.
							}
						}
						\tag #'Segment12aPercussionWoodblockVoice4
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
						\tag #'Segment12aPercussionWoodblockVoice5
						{
							{
								r2.
								r16
							}
						}
					}
					{
						\tag #'Segment12aPercussionWoodblockVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g'16 -\accent \mp
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c'32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment12aPercussionWoodblockVoice7
						{
							{
								\afterGrace
								r16
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
						\tag #'Segment12aPercussionWoodblockVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f8 -\accent \mp \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment12aPercussionWoodblockVoice9
						{
							{
								r16
							}
						}
						\tag #'Segment12aPercussionWoodblockVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment12aPercussionWoodblockVoice11
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12aPercussionWoodblockVoice12
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment12aPercussionWoodblockVoice13
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								c'16 -\accent \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment12aPercussionWoodblockVoice14
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12aPercussionWoodblockVoice15
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12aPercussionWoodblockVoice16
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment12aPercussionWoodblockVoice17
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g'16 -\accent \< \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16 -\staccato
							}
						}
						\tag #'Segment12aPercussionWoodblockVoice18
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								e'8 -\accent
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 -\staccato ] \f \)
							}
						}
					}
					{
						\tag #'Segment12aPercussionWoodblockVoice19
						{
							{
								r16
							}
						}
						\tag #'Segment12aPercussionWoodblockVoice20
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12aPercussionWoodblockVoice21
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12aPercussionWoodblockVoice22
						{
							{
								R1 * 1/4
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
						\tag #'Segment12aPercussionDrumVoice1
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment12aPercussionDrumVoice2
						{
							{
								a4 :32 -\accent \mp
								e'4 :32
							}
						}
					}
					{
						\tag #'Segment12aPercussionDrumVoice3
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
					}
					{
						\tag #'Segment12aPercussionDrumVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								c'4 -\accent \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a2 :32 -\accent ~ \)
							}
						}
						\tag #'Segment12aPercussionDrumVoice5
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								a8 :64 \f [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 :64 \mp ]
							}
						}
					}
					{
						\tag #'Segment12aPercussionDrumVoice6
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
						\tag #'Segment12aPercussionDrumVoice7
						{
							{
								r2
								\afterGrace
								r8.
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
						\tag #'Segment12aPercussionDrumVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								a4 :32 -\accent \) \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 -\accent ~ \) [
							}
						}
						\tag #'Segment12aPercussionDrumVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 :64 ] \f
							}
						}
					}
					{
						\tag #'Segment12aPercussionDrumVoice10
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
						\tag #'Segment12aPercussionDrumVoice11
						{
							{
								c'4 :32 -\accent \mp \)
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
								\set stemRightBeamCount = 0
								a8 :64 \sfp ] \)
							}
						}
					}
					{
						\tag #'Segment12aPercussionDrumVoice12
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
					}
					{
						\tag #'Segment12aPercussionDrumVoice13
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								e'4 -\accent \mp
								c'4 :32
							}
						}
					}
					{
						\tag #'Segment12aPercussionDrumVoice14
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment12aPercussionDrumVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								e'8 -\accent \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'4 :32 -\accent ~ \)
							}
						}
						\tag #'Segment12aPercussionDrumVoice16
						{
							\times 2/3 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								c'8 :64 \f [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 \p ]
							}
						}
					}
					{
						\tag #'Segment12aPercussionDrumVoice17
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
						\tag #'Segment12aPercussionDrumVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/12 {
								\afterGrace
								e'2 :32 -\accent \mp \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'4 :32 \)
							}
						}
					}
					{
						\tag #'Segment12aPercussionDrumVoice19
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
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