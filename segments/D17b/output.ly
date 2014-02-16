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
				\mark \markup { \override #'(box-padding . 0.5) \box 17B }
				\tempo 4=96
				\time 11/16
				s1 * 11/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				s1 * 3/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 5/8
				s1 * 5/8
			}
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						\tag #'Segment17bSaxophoneVoice1
						{
							{
								r16
									_ \markup {
										\pad-around
											#2
											\italic
												(sempre
										\dynamic
											ppp
										\italic
											)
										}
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								g,8 (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b,8 ] \) )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice3
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment17bSaxophoneVoice4
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice5
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g,16 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f32 ] )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice6
						{
							{
								\afterGrace
								r8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32 )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice8
						{
							{
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e,16 [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 )
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice10
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								af,16 (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ] \) )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								\afterGrace
								R1 * 3/16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									f,16 [ \(
									g,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice13
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f,8 \) (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								d4 \) )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice14
						{
							{
								r8
								r4
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice15
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								d,8 [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ] \) )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice16
						{
							{
								r16
							}
						}
						\tag #'Segment17bSaxophoneVoice17
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bSaxophoneVoice18
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice19
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c,16 [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								ef16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs,16 ] \) )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice20
						{
							{
								r16
								\afterGrace
								r8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 [ \(
									b,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice21
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								cs,16 \) [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs16 \)
							}
						}
						\tag #'Segment17bSaxophoneVoice22
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								af,32 ] )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice23
						{
							{
								r16
							}
						}
						\tag #'Segment17bSaxophoneVoice24
						{
							{
								\afterGrace
								r8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice25
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c,8 \) [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								ef8 ] )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice26
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice27
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f,16 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c32 ] )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice28
						{
							{
								r16
							}
						}
						\tag #'Segment17bSaxophoneVoice29
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								\afterGrace
								R1 * 3/16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice30
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								cs,8 \) [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 [ \(
									b,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs8 ] \) )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice31
						{
							{
								r16
							}
						}
						\tag #'Segment17bSaxophoneVoice32
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice33
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								ef,16 (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs16 \)
							}
						}
						\tag #'Segment17bSaxophoneVoice34
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8 ]
								f,4 )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice35
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice36
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								a,16 (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a,16 ] \) )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice37
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice38
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a,16 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g,32 ] )
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice39
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
						\tag #'Segment17bGuitarVoice1
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
															"Color Four"
										}
									_ \markup {
										\pad-around
											#2
											\italic
												(sempre
										\dynamic
											ppp
										\italic
											)
										}
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<cs'>16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<af'>32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice3
						{
							{
								r8
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #1
									f'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								g'16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af''16 -\staccato
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment17bGuitarVoice5
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice6
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice7
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d cs' b'>16 -\staccato \arpeggio
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<cf''>16 -\staccato
							}
						}
						\tag #'Segment17bGuitarVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<e'>16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<e'>16
								{
									af'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<f'>16 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice9
						{
							{
								r8
							}
						}
						\tag #'Segment17bGuitarVoice10
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice11
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<ef' c'''>16 -\staccato \arpeggio [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<g'>8 -\staccato
							}
						}
						\tag #'Segment17bGuitarVoice12
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<df' cf''>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<cf'>16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice13
						{
							{
								r16
							}
						}
						\tag #'Segment17bGuitarVoice14
						{
							{
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #1
									g'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f'8 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af''16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice16
						{
							{
								\afterGrace
								r2
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #1
									b'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice17
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<f'>16 -\staccato \) [
								{
									g''16 [ \(
									af''16 ]
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<e' b' cs'''>16 -\staccato \arpeggio \)
								{
									af'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<bf' af''>16 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice18
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice19
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								bf'16 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice20
						{
							{
								r8.
								r4
							}
						}
						\tag #'Segment17bGuitarVoice21
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice22
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								ef'8 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<ef'>8 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice23
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice24
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<e'>16 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								<c' a''>32 -\staccato \arpeggio
							}
						}
						\tag #'Segment17bGuitarVoice25
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<ds'>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<f c' d''>16 -\staccato \arpeggio
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice26
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bGuitarVoice27
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #1
									af'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice28
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								cs''8 -\staccato \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs''8 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice29
						{
							{
								r16
							}
						}
						\tag #'Segment17bGuitarVoice30
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice31
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<f'>8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<d'>8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice32
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice33
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice34
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment17bGuitarVoice35
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice36
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<bf>16 -\staccato
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a'32 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice37
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
						\tag #'Segment17bPianoRHVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 11/16
									_ \markup {
										\pad-around
											#2
											\italic
												(sempre
										\dynamic
											ppp
										\italic
											)
										}
							}
						}
						\tag #'Segment17bPianoRHVoice2
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice3
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\flat
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								\clef treble
								cs''''16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b'''32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice4
						{
							{
								r16
							}
						}
						\tag #'Segment17bPianoRHVoice5
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice6
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\natural
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								c''''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice7
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g''''16 \glissando
							}
						}
						\tag #'Segment17bPianoRHVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d''''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a'''32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice9
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice10
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\flat
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								f'''16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs''''32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice11
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment17bPianoRHVoice12
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice13
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
								<b'' d''' f''' a'''>16 \p
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
								<d'''' f'''' a''''>16 ]
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
						\tag #'Segment17bPianoRHVoice14
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice15
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\natural
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #2
								b'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g''''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a'''32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice17
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice18
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\natural
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								f'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice19
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs''''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b'''32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice20
						{
							{
								r8
								r8
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice21
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\flat
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #2
								d''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice22
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f''''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs''''32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice23
						{
							{
								r8
							}
						}
						\tag #'Segment17bPianoRHVoice24
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17bPianoRHVoice25
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPianoRHVoice26
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice27
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
								\ottava #2
								<g''' b''' d''''>16 \p [
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
								<d'''' f'''' a''''>16
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
						\tag #'Segment17bPianoRHVoice28
						{
							{
								r8
								r2
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice29
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\natural
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								d''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice30
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a'''8 \glissando
							}
						}
						\tag #'Segment17bPianoRHVoice31
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f'''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs''''32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice32
						{
							{
								r16
							}
						}
						\tag #'Segment17bPianoRHVoice33
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice34
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\flat
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								b'''16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c''''32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice35
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
						\tag #'Segment17bPianoLHVoice1
						{
							{
								r4..
									_ \markup {
										\pad-around
											#2
											\italic
												(sempre
										\dynamic
											ppp
										\italic
											)
										}
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice2
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\flat
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #-1
								\clef bass
								c,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g,,32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice3
						{
							{
								r8
							}
						}
						\tag #'Segment17bPianoLHVoice4
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice5
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\natural
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #-1
								d,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoLHVoice6
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a,,16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f,,32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17bPianoLHVoice8
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment17bPianoLHVoice9
						{
							{
								R1 * 7/8
							}
						}
						\tag #'Segment17bPianoLHVoice10
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPianoLHVoice11
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice12
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\flat
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #-1
								c,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d,32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice13
						{
							{
								r8.
							}
						}
						\tag #'Segment17bPianoLHVoice14
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice15
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\natural
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #-1
								c,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoLHVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g,,16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a,,,32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice17
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment17bPianoLHVoice18
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPianoLHVoice19
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice20
						{
							{
								\override Accidental #'stencil = ##f
								\override Glissando #'bound-details #'left #'padding = #1.5
								\override Glissando #'bound-details #'right #'end-on-accidental = ##f
								\override Glissando #'bound-details #'right #'padding = #1.5
								\override NoteHead #'style = #'cross
								\override TextSpanner #'bound-details #'left #'text = \markup {
									\center-align
										\natural
									}
								\override TextSpanner #'bound-details #'right #'text = \markup {
									\draw-line
										#'(0 . -1)
									}
								\override TextSpanner #'bound-details #'right-broken #'text = ##f
								\override TextSpanner #'dash-fraction = #1
								\override TextSpanner #'direction = #up
								\override Tie #'stencil = ##f
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #-1
								b,,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoLHVoice21
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c,16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g,,32 ] \stopTextSpan
								\ottava #0
								\revert Accidental #'stencil
								\revert Glissando #'bound-details
								\revert NoteHead #'style
								\revert TextSpanner #'bound-details
								\revert TextSpanner #'dash-fraction
								\revert TextSpanner #'direction
								\revert Tie #'stencil
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice22
						{
							{
								r4
								r2
							}
						}
						\tag #'Segment17bPianoLHVoice23
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
							}
						}
						\tag #'Segment17bPianoLHVoice24
						{
							{
								R1 * 5/8
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment17bPianoPedals1
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment17bPianoPedals2
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17bPianoPedals3
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17bPianoPedals4
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17bPianoPedals5
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17bPianoPedals6
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17bPianoPedals7
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17bPianoPedals8
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17bPianoPedals9
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17bPianoPedals10
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17bPianoPedals11
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17bPianoPedals12
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment17bPianoPedals13
					{
						{
							R1 * 5/8
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
						\tag #'Segment17bPercussionShakerVoice1
						{
							{
								r16
									_ \markup {
										\pad-around
											#2
											\italic
												(sempre
										\dynamic
											ppp
										\italic
											)
										}
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								g16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d'16 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice3
						{
							{
								r4.
							}
						}
						\tag #'Segment17bPercussionShakerVoice4
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice5
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f'8 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice6
						{
							{
								r8.
								r4
							}
						}
						\tag #'Segment17bPercussionShakerVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17bPercussionShakerVoice8
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionShakerVoice9
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice10
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8 -\staccato
							}
						}
						\tag #'Segment17bPercussionShakerVoice11
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8 -\staccato ]
								b4 -\staccato
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionShakerVoice13
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f'16 -\staccato
							}
						}
						\tag #'Segment17bPercussionShakerVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice16
						{
							{
								r8
							}
						}
						\tag #'Segment17bPercussionShakerVoice17
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f'16 -\staccato
							}
						}
						\tag #'Segment17bPercussionShakerVoice19
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice20
						{
							{
								r8
							}
						}
						\tag #'Segment17bPercussionShakerVoice21
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice22
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f'8 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice23
						{
							{
								r16
							}
						}
						\tag #'Segment17bPercussionShakerVoice24
						{
							{
								r8.
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d'16 [ \(
									f'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice25
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								g16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment17bPercussionShakerVoice26
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								d'16 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g16 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice27
						{
							{
								r2
							}
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						\tag #'Segment17bPercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								\afterGrace
								R1 * 11/16
									_ \markup {
										\pad-around
											#2
											\italic
												(sempre
										\dynamic
											ppp
										\italic
											)
										}
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice2
						{
							{
								g'4 -\staccato \)
								c'4 -\staccato
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice3
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								e'8 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g'8 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice4
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice5
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice6
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice7
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice8
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e'16 -\staccato
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8 -\staccato ]
								c'4 -\staccato
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice10
						{
							{
								r8
								r2
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice11
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice12
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 -\staccato
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice13
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								a8 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f16 -\staccato \)
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice14
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								g'16 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 [ \(
									e'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice15
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice16
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice17
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g'8 -\staccato ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								g'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice19
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/8
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
						\tag #'Segment17bPercussionDrumVoice1
						{
							{
								r16
									^ \markup {
										\box
											\pad-around
												#0.5
												\large
													\bold
														\caps
															Brush
										}
									_ \markup {
										\pad-around
											#2
											\italic
												(sempre
										\dynamic
											ppp
										\italic
											)
										}
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 :64 -\accent [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 :64
							}
						}
						\tag #'Segment17bPercussionDrumVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 :64 -\accent
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a16 :128
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice4
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment17bPercussionDrumVoice5
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 :128 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c'32 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice7
						{
							{
								r2
							}
						}
						\tag #'Segment17bPercussionDrumVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17bPercussionDrumVoice9
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionDrumVoice10
						{
							{
								\afterGrace
								r8.
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
						\tag #'Segment17bPercussionDrumVoice11
						{
							{
								e'4 :32 \)
								c'4 :32
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice12
						{
							{
								r8.
							}
						}
						\tag #'Segment17bPercussionDrumVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionDrumVoice14
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 :64 -\accent
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 :64 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice16
						{
							{
								r4
							}
						}
						\tag #'Segment17bPercussionDrumVoice17
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionDrumVoice18
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice19
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								a16 ]
							}
						}
						\tag #'Segment17bPercussionDrumVoice20
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								e'4 :32
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 :64 \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice21
						{
							{
								r4.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice22
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 :128 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								e'32
							}
						}
						\tag #'Segment17bPercussionDrumVoice23
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c'16 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice24
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment17bPercussionDrumVoice25
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice26
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 :128 -\accent [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice27
						{
							{
								r4
									_ \markup {
										\italic
											\right-column
												{
													" "
													" "
													" "
													"Jamaica Plain"
													"December 2013 - February 2014"
												}
										}
								\bar "|."
							}
						}
					}
				}
			}
		>>
	>>
}