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
				\mark \markup { \override #'(box-padding . 0.5) \box 12B }
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
				\time 2/4
				s1 * 1/2
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
				\time 4/16
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
						\tag #'Segment12bSaxophoneVoice1
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 11/16 {
								b,2 \sfz
								\pitchedTrill
								d'2 \startTrillSpan f'
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice3
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d16 [ \(
									c16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								\pitchedTrill
								cs8 \sfz \) [ \startTrillSpan fs
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									bf16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								d'8 ~ ] \)
							}
						}
						\tag #'Segment12bSaxophoneVoice5
						{
							{
								\afterGrace
								d'4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af16 [ \(
									d16
									c16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								\pitchedTrill
								ef8 ~ \) \startTrillSpan gf
							}
						}
						\tag #'Segment12bSaxophoneVoice6
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 9/16 {
								\afterGrace
								ef2
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								f2 \)
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment12bSaxophoneVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bSaxophoneVoice9
						{
							{
								\afterGrace
								R1 * 1/2
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									bf16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice10
						{
							{
								a4. \sfz \)
								\pitchedTrill
								b4 ~ \startTrillSpan e'
							}
						}
						\tag #'Segment12bSaxophoneVoice11
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								b4
								<> \stopTrillSpan
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
								\set stemRightBeamCount = 1
								a8 ~ \) \< \sfz
							}
						}
						\tag #'Segment12bSaxophoneVoice12
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								a8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								\pitchedTrill
								af8 ] \ff \) \startTrillSpan cf'
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bSaxophoneVoice14
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bSaxophoneVoice15
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bSaxophoneVoice16
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice17
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\pitchedTrill
								g8 \sfz [ \startTrillSpan bf
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af8 \ff ]
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice18
						{
							{
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 [ \(
									af16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice19
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f8 \sfz \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								d'8 ~ \) \startTrillSpan f'
							}
						}
						\tag #'Segment12bSaxophoneVoice20
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								d'8 ]
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 [ \(
									af16
									d16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								e4 \)
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice21
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
						\tag #'Segment12bSaxophoneVoice22
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/8 {
								\afterGrace
								d4 \sfz \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								d'4 ~ \)
							}
						}
						\tag #'Segment12bSaxophoneVoice23
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								d'2
								\pitchedTrill
								af4 \startTrillSpan cf'
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice24
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
									b16 [ \(
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
						\tag #'Segment12bSaxophoneVoice25
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								\pitchedTrill
								f8. \sfz \) [ \startTrillSpan gf
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								f'8 ~ ] \)
							}
						}
						\tag #'Segment12bSaxophoneVoice26
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								f'4
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 \ff ]
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice27
						{
							{
								r8.
							}
						}
						\tag #'Segment12bSaxophoneVoice28
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bSaxophoneVoice29
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
		\tag score.guitar
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble"
				\transpose c c'
				\context Voice = "Guitar Voice" {
					{
						\tag #'Segment12bGuitarVoice1
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
						\tag #'Segment12bGuitarVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<bf>8 -\tenuto \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<ef'>16 -\tenuto
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment12bGuitarVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<af, g f'>8 -\tenuto \arpeggio \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<cf'>8 -\tenuto ]
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice4
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice5
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bGuitarVoice6
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice7
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bGuitarVoice8
						{
							{
								r2
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
						\tag #'Segment12bGuitarVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<c>8 -\tenuto \p \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<cs' gs' as''>8 -\tenuto \arpeggio
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment12bGuitarVoice10
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<f ef'>8 -\tenuto \pp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 -\tenuto ]
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice12
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice13
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bGuitarVoice14
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d>16 -\tenuto \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<g>16 -\tenuto ]
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice16
						{
							{
								r16
							}
						}
						\tag #'Segment12bGuitarVoice17
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice18
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bGuitarVoice19
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice20
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice21
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice22
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bGuitarVoice23
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice24
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<ef>16 -\tenuto \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<f>8 -\tenuto ]
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice25
						{
							{
								r8
							}
						}
						\tag #'Segment12bGuitarVoice26
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12bGuitarVoice27
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice28
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
						\tag #'Segment12bPianoRHVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment12bPianoRHVoice2
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoRHVoice3
						{
							{
								r2.
								r16
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
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
								\clef treble
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
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<d''' f''' a'''>16 ] )
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
						\tag #'Segment12bPianoRHVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment12bPianoRHVoice6
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice7
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoRHVoice8
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<f'' a'' c'''>16 \p (
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
								\set stemRightBeamCount = 0
								<g'' b'' d'''>16 ] )
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
						\tag #'Segment12bPianoRHVoice10
						{
							{
								r2
							}
						}
						\tag #'Segment12bPianoRHVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice12
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice13
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoRHVoice14
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoRHVoice15
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoRHVoice16
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice17
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<e'' g'' b'' d''' f'''>16 \p ~ (
									^ \markup {
										\center-align
											\flat
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
								<e'' g'' b'' d''' f'''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f'''16 ] )
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice18
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice19
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice20
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoRHVoice21
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice22
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
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<b' d'' f'' a''>8 \p [ (
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
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<d''' f''' a'''>16 )
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
								r16 ]
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice23
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment12bPianoRHVoice24
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice25
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice26
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoRHVoice27
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice28
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								ef''16 \p [ (
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d''' f''' a'''>16 )
									^ \markup {
										\center-align
											\natural
										}
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice29
						{
							{
								r16
							}
						}
						\tag #'Segment12bPianoRHVoice30
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
						\tag #'Segment12bPianoLHVoice1
						{
							{
								r2
								r8.
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef treble
								<e''>16 \p (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<d''>16 ] )
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice3
						{
							{
								r8.
							}
						}
						\tag #'Segment12bPianoLHVoice4
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice5
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bPianoLHVoice6
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice7
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoLHVoice8
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d''>16 \p (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a'16 ] )
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice10
						{
							{
								r8.
								r4
							}
						}
						\tag #'Segment12bPianoLHVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice12
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoLHVoice13
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice14
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<cs'' e''>16 \p ~ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<cs'' e''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<gf''>16 ] )
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice15
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoLHVoice16
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice17
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoLHVoice18
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice19
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 \p [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<af''>32 )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice20
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice21
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice22
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bPianoLHVoice23
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice24
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice25
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoLHVoice26
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice27
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
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment12bPianoPedals1
					{
						{
							r2
							r8.
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals2
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
					\tag #'Segment12bPianoPedals3
					{
						{
							r8.
						}
					}
					\tag #'Segment12bPianoPedals4
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals5
					{
						{
							r2.
							r16
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals6
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
					\tag #'Segment12bPianoPedals7
					{
						{
							r16
						}
					}
					\tag #'Segment12bPianoPedals8
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals9
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment12bPianoPedals10
					{
						{
							r4
							r8
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals11
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
					\tag #'Segment12bPianoPedals12
					{
						{
							r8.
							r4
						}
					}
					\tag #'Segment12bPianoPedals13
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals14
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals15
					{
						{
							r4
							r16
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals16
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
					\tag #'Segment12bPianoPedals17
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment12bPianoPedals18
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals19
					{
						{
							r4
							r16
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals20
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
					\tag #'Segment12bPianoPedals21
					{
						{
							r8
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals22
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
					\tag #'Segment12bPianoPedals23
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals24
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals25
					{
						{
							r2
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals26
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
					\tag #'Segment12bPianoPedals27
					{
						{
							r16
							r4
						}
					}
					\tag #'Segment12bPianoPedals28
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals29
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals30
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment12bPianoPedals31
					{
						{
							r16
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals32
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
					\tag #'Segment12bPianoPedals33
					{
						{
							r16
						}
					}
					\tag #'Segment12bPianoPedals34
					{
						{
							R1 * 1/4
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
						\tag #'Segment12bPercussionShakerVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment12bPercussionShakerVoice2
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice3
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bPercussionShakerVoice4
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice5
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionShakerVoice6
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bPercussionShakerVoice7
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice8
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice9
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionShakerVoice10
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionShakerVoice11
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice12
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionShakerVoice13
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice14
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice15
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice16
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bPercussionShakerVoice17
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice18
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice19
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionShakerVoice20
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice21
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
						\tag #'Segment12bPercussionWoodblockVoice1
						{
							{
								r2
								r16
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 -\accent ~ \< \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16 -\staccato
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice3
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g'8 -\accent
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 -\staccato ] \f
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice4
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice5
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice6
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice7
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice8
						{
							{
								r2
								r16
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f8 -\accent \mp [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c'16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice10
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8 -\accent \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice12
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice13
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice14
						{
							{
								r4
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 -\accent \mp \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice16
						{
							{
								r16
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice17
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice18
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice19
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice20
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice21
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice22
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice23
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice24
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 -\accent \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice25
						{
							{
								r8
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice26
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice27
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice28
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
						\tag #'Segment12bPercussionDrumVoice1
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
						\tag #'Segment12bPercussionDrumVoice2
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
						\tag #'Segment12bPercussionDrumVoice3
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
						\tag #'Segment12bPercussionDrumVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\afterGrace
								c'4 -\accent \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a4 -\accent ~ \)
							}
						}
						\tag #'Segment12bPercussionDrumVoice5
						{
							{
								a4.
								c'4 \f
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice6
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionDrumVoice7
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPercussionDrumVoice8
						{
							{
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
						\tag #'Segment12bPercussionDrumVoice9
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 11/12 {
								\afterGrace
								a4 -\accent \mp \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'2 \)
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice11
						{
							\times 2/3 {
								\afterGrace
								e'4 -\accent \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 -\accent ~ \) [
							}
						}
						\tag #'Segment12bPercussionDrumVoice12
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								c'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 -\accent ~ \)
							}
						}
						\tag #'Segment12bPercussionDrumVoice13
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 ]
								e'4 \f
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice14
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice15
						{
							{
								c'4 -\accent \mp
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 -\accent ~ \> \mp
							}
						}
						\tag #'Segment12bPercussionDrumVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								e'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								c'8 -\accent ~ ] \)
							}
						}
						\tag #'Segment12bPercussionDrumVoice17
						{
							{
								c'4
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 \p
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice18
						{
							{
								r8
							}
						}
						\tag #'Segment12bPercussionDrumVoice19
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionDrumVoice20
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionDrumVoice21
						{
							{
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
						\tag #'Segment12bPercussionDrumVoice22
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 11/16 {
								\afterGrace
								e'2 -\accent \) \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'2 -\accent ~ \)
							}
						}
						\tag #'Segment12bPercussionDrumVoice23
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								e'8. [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 -\accent ~
							}
						}
						\tag #'Segment12bPercussionDrumVoice24
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 \f
								\set stemLeftBeamCount = 1
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
								\set stemRightBeamCount = 0
								e'16 \p ] \)
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice25
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
						\tag #'Segment12bPercussionDrumVoice26
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 -\accent \) \< \mp
								c'4 -\accent ~
							}
						}
						\tag #'Segment12bPercussionDrumVoice27
						{
							\times 2/3 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								c'8 \f [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\override Hairpin #'circled-tip = ##t
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 -\accent ~ \> \sfp
							}
						}
						\tag #'Segment12bPercussionDrumVoice28
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 -\accent ~
							}
						}
						\tag #'Segment12bPercussionDrumVoice29
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								a8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 ] \! \)
								\bar "||"
								\revert Hairpin #'circled-tip
							}
						}
					}
				}
			}
		>>
	>>
}