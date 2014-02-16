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
				\time 7/16
				s1 * 7/16
			}
			{
				\time 5/16
				s1 * 5/16
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
				\time 5/16
				s1 * 5/16
			}
			{
				\time 11/16
				s1 * 11/16
			}
			{
				s1 * 11/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				s1 * 7/16
			}
			{
				\time 7/8
				s1 * 7/8
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
				\time 3/16
				s1 * 3/16
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
								\afterGrace
								r16
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
						\tag #'Segment17bSaxophoneVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b,8 \)
								f4
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
								\afterGrace
								r16
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
						\tag #'Segment17bSaxophoneVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b,8 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice6
						{
							{
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice7
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f,8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								af,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f,8 ] \)
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice8
						{
							{
								r16
							}
						}
						\tag #'Segment17bSaxophoneVoice9
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
								\afterGrace
								f,16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ] \)
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice12
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice13
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								af,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ]
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
						\tag #'Segment17bSaxophoneVoice15
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice16
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								f,16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 [ \(
									b,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d32 ] \)
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice17
						{
							{
								\afterGrace
								r16
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
						\tag #'Segment17bSaxophoneVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d,8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c8 ]
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice19
						{
							{
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice20
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								bf,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs8 ] \)
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice21
						{
							{
								r16
							}
						}
						\tag #'Segment17bSaxophoneVoice22
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice23
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f16
							}
						}
						\tag #'Segment17bSaxophoneVoice24
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								c,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c,16 ] \)
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice25
						{
							{
								r8
							}
						}
						\tag #'Segment17bSaxophoneVoice26
						{
							{
								r8.
								r8
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
								c,16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs32 ]
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice28
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
						\tag #'Segment17bSaxophoneVoice29
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice30
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								c,8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice31
						{
							{
								r8
							}
						}
						\tag #'Segment17bSaxophoneVoice32
						{
							{
								\afterGrace
								r8
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
						\tag #'Segment17bSaxophoneVoice33
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a,16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice34
						{
							{
								r16
							}
						}
						\tag #'Segment17bSaxophoneVoice35
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice36
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a,16 ]
							}
						}
					}
					{
						\tag #'Segment17bSaxophoneVoice37
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
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 \(
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
								<a g'>16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<cf'' af''>32
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
									g'16 \(
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
								af'16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16
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
								f'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g'8 ]
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice6
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
						\tag #'Segment17bGuitarVoice7
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice8
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								<c' b' d'' a''>8
								{
									b'16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<f' d''>8 ] \)
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice9
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
					}
					{
						\tag #'Segment17bGuitarVoice10
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<fs e'>16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<cf'' af''>8 ]
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice11
						{
							{
								\afterGrace
								r4.
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
						\tag #'Segment17bGuitarVoice12
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice13
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment17bGuitarVoice14
						{
							{
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice15
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<g e'>16 \) [
								{
									b'16 [ \(
									f''16 ]
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<g d' f' e''>16 \)
								{
									af'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<bf' d'' af''>16 ] \)
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice16
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice17
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								bf'16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice18
						{
							{
								r4
							}
						}
						\tag #'Segment17bGuitarVoice19
						{
							{
								r8.
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice20
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								ef'8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<ef' c''>8 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice21
						{
							{
								r8
							}
						}
						\tag #'Segment17bGuitarVoice22
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice23
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<f ef'>16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								<ef' d'' c'''>32
							}
						}
						\tag #'Segment17bGuitarVoice24
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<g f'>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<cs' gs' b' as''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice25
						{
							{
								r16
							}
						}
						\tag #'Segment17bGuitarVoice26
						{
							{
								\afterGrace
								r8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #1
									af'16 [ \(
									b'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice27
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								cs''8 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs''8 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice28
						{
							{
								r16
							}
						}
						\tag #'Segment17bGuitarVoice29
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice30
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #1
								<f' d''>8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<f' ef''>8 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice31
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice32
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a'8 ]
							}
						}
					}
					{
						\tag #'Segment17bGuitarVoice33
						{
							{
								r16
							}
						}
						\tag #'Segment17bGuitarVoice34
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
						\tag #'Segment17bGuitarVoice35
						{
							{
								r16
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
								<bf g'>16
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a'32 ] \)
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
							}
						}
						\tag #'Segment17bPianoRHVoice2
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment17bPianoRHVoice3
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPianoRHVoice4
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice5
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
								cs''''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice6
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								b'''32 \glissando
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
						\tag #'Segment17bPianoRHVoice7
						{
							{
								r8
							}
						}
						\tag #'Segment17bPianoRHVoice8
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice9
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
								g'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice10
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
						\tag #'Segment17bPianoRHVoice11
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice12
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
						\tag #'Segment17bPianoRHVoice13
						{
							{
								r4
							}
						}
						\tag #'Segment17bPianoRHVoice14
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice15
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
						\tag #'Segment17bPianoRHVoice16
						{
							{
								r4..
								r16
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice17
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
								b'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice18
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g''''16 \glissando
							}
						}
						\tag #'Segment17bPianoRHVoice19
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								a'''32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f'''32 ] \stopTextSpan
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
								cs''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice22
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b'''16. \glissando
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
						\tag #'Segment17bPianoRHVoice23
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice24
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
								\ottava #1
								a'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice25
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b'''16. \glissando
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
						\tag #'Segment17bPianoRHVoice26
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment17bPianoRHVoice27
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
						\tag #'Segment17bPianoRHVoice28
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice29
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
						\tag #'Segment17bPianoRHVoice30
						{
							{
								r8
								r2
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice31
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
								f'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice32
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs''''8 \glissando
							}
						}
						\tag #'Segment17bPianoRHVoice33
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b'''16 \glissando
							}
						}
						\tag #'Segment17bPianoRHVoice34
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c''''32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g''''32 ] \stopTextSpan
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
								r8
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment17bPianoRHVoice36
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
								d''''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoRHVoice37
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								a'''32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f'''32 ] \stopTextSpan
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
						\tag #'Segment17bPianoRHVoice38
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
						\tag #'Segment17bPianoLHVoice1
						{
							{
								r4..
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
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPianoLHVoice5
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice6
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
						\tag #'Segment17bPianoLHVoice7
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
						\tag #'Segment17bPianoLHVoice8
						{
							{
								r16
							}
						}
						\tag #'Segment17bPianoLHVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17bPianoLHVoice10
						{
							{
								R1 * 7/8
							}
						}
						\tag #'Segment17bPianoLHVoice11
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPianoLHVoice12
						{
							{
								r4..
								r8
							}
						}
					}
					{
						\tag #'Segment17bPianoLHVoice13
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
						\tag #'Segment17bPianoLHVoice14
						{
							{
								r4..
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
								g,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoLHVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d,16 \glissando
							}
						}
						\tag #'Segment17bPianoLHVoice17
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								f,,32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs,,32 ] \stopTextSpan
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
						\tag #'Segment17bPianoLHVoice18
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment17bPianoLHVoice19
						{
							{
								r8.
								r8
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
								g,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17bPianoLHVoice21
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d,16. \glissando
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
								R1 * 5/16
							}
						}
						\tag #'Segment17bPianoLHVoice24
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment17bPianoLHVoice25
						{
							{
								R1 * 3/16
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
							R1 * 7/16
						}
					}
					\tag #'Segment17bPianoPedals3
					{
						{
							R1 * 5/16
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
							R1 * 3/16
						}
					}
					\tag #'Segment17bPianoPedals6
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17bPianoPedals7
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17bPianoPedals8
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment17bPianoPedals9
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment17bPianoPedals10
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment17bPianoPedals11
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment17bPianoPedals12
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17bPianoPedals13
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17bPianoPedals14
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment17bPianoPedals15
					{
						{
							R1 * 3/16
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
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
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
								\afterGrace
								r8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice6
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17bPercussionShakerVoice7
						{
							{
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
								r4.
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
								d'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8
							}
						}
						\tag #'Segment17bPercussionShakerVoice11
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								b32
							}
						}
						\tag #'Segment17bPercussionShakerVoice12
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice13
						{
							{
								r8.
							}
						}
						\tag #'Segment17bPercussionShakerVoice14
						{
							{
								r4..
								r16
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								g16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice16
						{
							{
								r16
							}
						}
						\tag #'Segment17bPercussionShakerVoice17
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 11/16
							}
						}
						\tag #'Segment17bPercussionShakerVoice18
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice19
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								d'4
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8
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
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice22
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								b16 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d'16 [ \(
									f'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								g16 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d'16 ] \)
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
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice25
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f'8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 ] \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionShakerVoice26
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment17bPercussionShakerVoice27
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice3
						{
							{
								r8
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice4
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
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
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice7
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								e'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8 \)
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice11
						{
							{
								R1 * 11/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice12
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice13
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								e'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								f4 \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice14
						{
							{
								r16
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice15
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice16
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice17
						{
							{
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 [ \(
									c'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice18
						{
							{
								\afterGrace
								e'4 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f8 \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionWoodblockVoice19
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice20
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice21
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment17bPercussionWoodblockVoice22
						{
							{
								R1 * 3/16
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
								a8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment17bPercussionDrumVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 ]
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
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice6
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment17bPercussionDrumVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17bPercussionDrumVoice9
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment17bPercussionDrumVoice10
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17bPercussionDrumVoice11
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice12
						{
							\times 2/3 {
								r4
								\afterGrace
								a4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'4 \)
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice13
						{
							{
								r16
							}
						}
						\tag #'Segment17bPercussionDrumVoice14
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
						\tag #'Segment17bPercussionDrumVoice15
						{
							{
								r8.
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice16
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8
								c'4
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice17
						{
							{
								r16
							}
						}
						\tag #'Segment17bPercussionDrumVoice18
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 11/16
							}
						}
						\tag #'Segment17bPercussionDrumVoice19
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice20
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/12 {
								\afterGrace
								e'2
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'4 \)
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
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16
							}
						}
						\tag #'Segment17bPercussionDrumVoice23
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 ]
							}
						}
					}
					{
						\tag #'Segment17bPercussionDrumVoice24
						{
							{
								r8.
							}
						}
						\tag #'Segment17bPercussionDrumVoice25
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
							}
						}
						\tag #'Segment17bPercussionDrumVoice26
						{
							{
								R1 * 3/16
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