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
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b,8 \sfz
								af4 ~
							}
						}
						\tag #'Segment12bSaxophoneVoice3
						{
							\times 2/3 {
								af4
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									cs16 [ \(
									bf,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\pitchedTrill
								b,4 ~ \) \> \ff \startTrillSpan d
							}
						}
						\tag #'Segment12bSaxophoneVoice4
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								\afterGrace
								b,8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8 ~ \)
							}
						}
						\tag #'Segment12bSaxophoneVoice5
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								b,8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 [ \(
									cs'16
									bf16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								d'8 ~ ] \)
							}
						}
						\tag #'Segment12bSaxophoneVoice6
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 9/16 {
								d'2 \mf
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\pitchedTrill
								b,4 \sfz \) \startTrillSpan e
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice7
						{
							{
								r8.
								r4
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
								R1 * 1/4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									c16 \(
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\pitchedTrill
								a2 \sfz \) \startTrillSpan d'
								<> \stopTrillSpan
								b4 ~
							}
						}
						\tag #'Segment12bSaxophoneVoice11
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\afterGrace
								b4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af16 [ \(
									d16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\pitchedTrill
								a4 \) \startTrillSpan c'
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice12
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
						\tag #'Segment12bSaxophoneVoice13
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c8 \sfz \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								\pitchedTrill
								d'16 ~ ] \< \sfz \startTrillSpan g'
							}
						}
						\tag #'Segment12bSaxophoneVoice14
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								d'4
								<> \stopTrillSpan
								ef4 ~
							}
						}
						\tag #'Segment12bSaxophoneVoice15
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								ef2
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 [ \(
									af16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\pitchedTrill
								f4 \ff \) \startTrillSpan af
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice16
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
						\tag #'Segment12bSaxophoneVoice17
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\afterGrace
								\pitchedTrill
								f4 \sfz \) \startTrillSpan af
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 [ \(
									af16
									d'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								f'4 \)
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice18
						{
							{
								r8
							}
						}
						\tag #'Segment12bSaxophoneVoice19
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bSaxophoneVoice20
						{
							{
								\afterGrace
								R1 * 1/2
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
						\tag #'Segment12bSaxophoneVoice21
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								d4 \sfz \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\pitchedTrill
								d'2 ~ \) \startTrillSpan f'
							}
						}
						\tag #'Segment12bSaxophoneVoice22
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								d'8 [
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								af8 \f ~ ]
							}
						}
						\tag #'Segment12bSaxophoneVoice23
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\afterGrace
								af4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 [ \(
									af16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\pitchedTrill
								f4 \) \startTrillSpan bf
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment12bSaxophoneVoice24
						{
							{
								r8.
							}
						}
						\tag #'Segment12bSaxophoneVoice25
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bSaxophoneVoice26
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bSaxophoneVoice27
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
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
									^ \markup {
										\box
											\pad-around
												#0.5
												\large
													\bold
														\caps
															"Color Three"
										}
								\stopStaff
								\startStaff
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
								<e d'>8 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<ef' c''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice3
						{
							{
								r16
								r4
							}
						}
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
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bGuitarVoice6
						{
							{
								r2.
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice7
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<df c' ef' bf'>16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<ef' c''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice8
						{
							{
								r8
							}
						}
						\tag #'Segment12bGuitarVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice10
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bGuitarVoice11
						{
							{
								r2
								r8.
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice12
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								<d b>8 \p
								{
									af'16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<b fs' a' gs''>8 ] \)
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bGuitarVoice14
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bGuitarVoice15
						{
							{
								r2.
								r8
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice16
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								<ef' g' df''>16 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af'8 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice17
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice18
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<d b>8 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<g f'>16 ]
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice19
						{
							{
								r16
							}
						}
						\tag #'Segment12bGuitarVoice20
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12bGuitarVoice21
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bGuitarVoice22
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice23
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<g e'>16 \p [
								{
									b'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<e' d''>16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<g e'>16 ]
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice24
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bGuitarVoice25
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice26
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								c'8 \p [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8 ] \)
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice27
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice28
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<gf ef'>16 ]
							}
						}
					}
					{
						\tag #'Segment12bGuitarVoice29
						{
							{
								r16
							}
						}
						\tag #'Segment12bGuitarVoice30
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12bGuitarVoice31
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
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoRHVoice2
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoRHVoice3
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice4
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoRHVoice5
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice6
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
								\ottava #1
								\clef treble
								<g'' b'' d''' f'''>16 \p ~
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
								\set stemRightBeamCount = 2
								<g'' b'' d''' f'''>16
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<a'' c''' e'''>16 ]
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
						\tag #'Segment12bPianoRHVoice7
						{
							{
								r8.
								r4
							}
						}
						\tag #'Segment12bPianoRHVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice9
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice10
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bPianoRHVoice11
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice12
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoRHVoice13
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice14
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
								\set stemRightBeamCount = 1
								\pitchedTrill
								<d'' f'' a''>8 \p [ \startTrillSpan d'''
									^ \markup {
										\center-align
											\natural
										}
								<> \stopTrillSpan
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<a'' c''' e'''>16
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
						\tag #'Segment12bPianoRHVoice15
						{
							{
								r4
							}
						}
						\tag #'Segment12bPianoRHVoice16
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice17
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoRHVoice18
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoRHVoice19
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice20
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
								<d'' f'' a'' c''' e'''>16 \p [
									^ \markup {
										\center-align
											\flat
										}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice21
						{
							{
								r4
							}
						}
						\tag #'Segment12bPianoRHVoice22
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment12bPianoRHVoice23
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoRHVoice24
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoRHVoice25
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice26
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f''16 \p
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<a'' c''' e'''>16 ]
									^ \markup {
										\center-align
											\natural
										}
							}
						}
					}
					{
						\tag #'Segment12bPianoRHVoice27
						{
							{
								r8
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
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoLHVoice2
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoLHVoice3
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice4
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoLHVoice5
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef treble
								\pitchedTrill
								<d'' f''>16 \p ~ \startTrillSpan af''
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d'' f''>16
								<> \stopTrillSpan
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<cs'' e''>16 ]
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice7
						{
							{
								r8
							}
						}
						\tag #'Segment12bPianoLHVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice9
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoLHVoice10
						{
							{
								r2.
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<a' c''>16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice12
						{
							{
								r8
							}
						}
						\tag #'Segment12bPianoLHVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice14
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice15
						{
							{
								R1 * 1
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
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<f'' af''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
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
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPianoLHVoice21
						{
							{
								r2
								r8.
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice22
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<e' fs' g' c''>16 \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f''16 ]
							}
						}
					}
					{
						\tag #'Segment12bPianoLHVoice23
						{
							{
								r8.
							}
						}
						\tag #'Segment12bPianoLHVoice24
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12bPianoLHVoice25
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPianoLHVoice26
						{
							{
								R1 * 1/2
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
							R1 * 1/2
						}
					}
					\tag #'Segment12bPianoPedals2
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment12bPianoPedals3
					{
						{
							R1 * 1/4
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
							r4
							r8
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals6
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
					\tag #'Segment12bPianoPedals7
					{
						{
							r16
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals8
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/4 \sustainOn
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals9
					{
						{
							r8
						}
					}
					\tag #'Segment12bPianoPedals10
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals11
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals12
					{
						{
							r2.
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals13
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
					\tag #'Segment12bPianoPedals14
					{
						{
							r8
						}
					}
					\tag #'Segment12bPianoPedals15
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals16
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals17
					{
						{
							r2
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals18
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/4 \sustainOn
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals19
					{
						{
							r4
						}
					}
					\tag #'Segment12bPianoPedals20
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals21
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment12bPianoPedals22
					{
						{
							r8
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals23
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
					\tag #'Segment12bPianoPedals24
					{
						{
							r8
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals25
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
					\tag #'Segment12bPianoPedals26
					{
						{
							r4
						}
					}
					\tag #'Segment12bPianoPedals27
					{
						{
							r2
							r8.
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals28
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
					\tag #'Segment12bPianoPedals29
					{
						{
							r8.
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
							R1 * 1/4
						}
					}
					\tag #'Segment12bPianoPedals32
					{
						{
							R1 * 1/2
						}
					}
				}
				{
					\tag #'Segment12bPianoPedals33
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
					\tag #'Segment12bPianoPedals34
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
						\tag #'Segment12bPercussionShakerVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionShakerVoice2
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionShakerVoice3
						{
							{
								R1 * 1/4
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
								R1 * 1
							}
						}
						\tag #'Segment12bPercussionShakerVoice6
						{
							{
								R1 * 1/4
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
								R1 * 1
							}
						}
						\tag #'Segment12bPercussionShakerVoice9
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice10
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice11
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment12bPercussionShakerVoice12
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionShakerVoice13
						{
							{
								R1 * 1/2
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
								R1 * 1/2
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
								R1 * 1/2
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
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 -\accent \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice3
						{
							{
								r16
								r4
							}
						}
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
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice6
						{
							{
								r2.
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice7
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g'16 -\accent \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice8
						{
							{
								r8
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice10
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice11
						{
							{
								r2
								r8.
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice12
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 -\accent \mp ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice14
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice15
						{
							{
								r2.
								r8
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice16
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								a16 -\accent \mp [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32 -\staccato \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice17
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice18
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 -\accent \mp [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice19
						{
							{
								r16
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice20
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice21
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice22
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice23
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
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice24
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice25
						{
							{
								r4
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
						\tag #'Segment12bPercussionWoodblockVoice26
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 -\accent \mp \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment12bPercussionWoodblockVoice27
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
						\tag #'Segment12bPercussionWoodblockVoice28
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								g'8 -\accent \mp \) [
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
						\tag #'Segment12bPercussionWoodblockVoice29
						{
							{
								r16
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice30
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionWoodblockVoice31
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
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								a4 :32 -\accent \mp
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 \sfp ]
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice3
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								c'8 -\accent \mp [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 :64 ] \)
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice5
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
						\tag #'Segment12bPercussionDrumVoice6
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								c'4 :32 -\accent \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a2 -\accent ~ \)
							}
						}
						\tag #'Segment12bPercussionDrumVoice7
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								a8 \f [
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
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 :64 \p ] \)
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice8
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
						\tag #'Segment12bPercussionDrumVoice9
						{
							\times 2/3 {
								\afterGrace
								e'4 :32 -\accent \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								c'8 :64 -\accent ~ \)
							}
						}
						\tag #'Segment12bPercussionDrumVoice10
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\afterGrace
								c'4 :32
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
						\tag #'Segment12bPercussionDrumVoice11
						{
							{
								r8
								r2
							}
						}
						\tag #'Segment12bPercussionDrumVoice12
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
						\tag #'Segment12bPercussionDrumVoice13
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 -\accent \mp [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								c'16 :128 -\accent ~ ] \> \mp
							}
						}
						\tag #'Segment12bPercussionDrumVoice14
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								c'4 :32
								e'4 :32 -\accent ~
							}
						}
						\tag #'Segment12bPercussionDrumVoice15
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\afterGrace
								e'2 :32
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'4 \p \)
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice16
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice17
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								e'8 :64 -\accent [ \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								e'8 -\accent ~ ] \)
							}
						}
						\tag #'Segment12bPercussionDrumVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\afterGrace
								e'4.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'4 :32 \f \)
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice19
						{
							{
								r8
							}
						}
						\tag #'Segment12bPercussionDrumVoice20
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionDrumVoice21
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment12bPercussionDrumVoice22
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								a4 :32 -\accent \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'2 :32 -\accent ~ \)
							}
						}
						\tag #'Segment12bPercussionDrumVoice23
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								e'8 :64 \f [
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
								e'8 -\accent ~ ] \) \> \sfp
							}
						}
						\tag #'Segment12bPercussionDrumVoice24
						{
							{
								e'4
								c'4 :32 \!
								\revert Hairpin #'circled-tip
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
								R1 * 1/4
							}
						}
						\tag #'Segment12bPercussionDrumVoice26
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment12bPercussionDrumVoice27
						{
							{
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