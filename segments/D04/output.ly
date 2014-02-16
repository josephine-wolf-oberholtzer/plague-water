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
				\mark \markup { \override #'(box-padding . 0.5) \box 4 }
				\tempo 4=96
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				s1 * 7/16
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 7/16
				s1 * 7/16
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
				\time 5/8
				s1 * 5/8
			}
			{
				s1 * 5/8
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
				\time 3/16
				s1 * 3/16
			}
			{
				s1 * 3/16
			}
			{
				\time 11/16
				s1 * 11/16
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
				\time 3/16
				s1 * 3/16
			}
			{
				s1 * 3/16
			}
			{
				\time 7/16
				s1 * 7/16
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
				\time 5/16
				s1 * 5/16
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
						\tag #'Segment4SaxophoneVoice1
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
						\tag #'Segment4SaxophoneVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b,16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice3
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f,8 ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
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
						\tag #'Segment4SaxophoneVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment4SaxophoneVoice6
						{
							{
								r4.
								\afterGrace
								r8
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
						\tag #'Segment4SaxophoneVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b,16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice8
						{
							{
								r4
							}
						}
						\tag #'Segment4SaxophoneVoice9
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice11
						{
							{
								r16
							}
						}
						\tag #'Segment4SaxophoneVoice12
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice13
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 \(
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
						\tag #'Segment4SaxophoneVoice14
						{
							{
								r16
							}
						}
						\tag #'Segment4SaxophoneVoice15
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
					{
						\tag #'Segment4SaxophoneVoice16
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e16
							}
						}
						\tag #'Segment4SaxophoneVoice17
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								af,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d8 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice18
						{
							{
								r4
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
						\tag #'Segment4SaxophoneVoice19
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								d,8 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 [ \(
									af,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice20
						{
							{
								r8
								r4
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice21
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice22
						{
							{
								r16
							}
						}
						\tag #'Segment4SaxophoneVoice23
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
						\tag #'Segment4SaxophoneVoice24
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice25
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d8 ] \)
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice26
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment4SaxophoneVoice27
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice28
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								af,16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
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
						\tag #'Segment4SaxophoneVoice29
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment4SaxophoneVoice30
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
						\tag #'Segment4SaxophoneVoice31
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice32
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								cs,8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs16 ] \)
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice33
						{
							{
								r8
								r2
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice34
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								ef,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								c16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c,16 \)
							}
						}
						\tag #'Segment4SaxophoneVoice35
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice36
						{
							{
								r16
							}
						}
						\tag #'Segment4SaxophoneVoice37
						{
							{
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
						\tag #'Segment4SaxophoneVoice38
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								c,8 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c8 ] \)
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice39
						{
							{
								r16
								\afterGrace
								r4
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
						\tag #'Segment4SaxophoneVoice40
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								c,16 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c16 ] \)
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice41
						{
							{
								r4
								r4
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice42
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								ef16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice43
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment4SaxophoneVoice44
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice45
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								b,8 [
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
						\tag #'Segment4SaxophoneVoice46
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice47
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice48
						{
							{
								r16
							}
						}
						\tag #'Segment4SaxophoneVoice49
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
						\tag #'Segment4SaxophoneVoice50
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								b,16
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
						\tag #'Segment4SaxophoneVoice51
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f,16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice52
						{
							{
								r16
								r2
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice53
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g,16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a,16
							}
						}
						\tag #'Segment4SaxophoneVoice54
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								a,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a,8 ] \)
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice55
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice56
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								g,16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								a,32 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice57
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment4SaxophoneVoice58
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
		>>
		\tag score.guitar
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble"
				\transpose c c'
				\context Voice = "Guitar Voice" {
					{
						\tag #'Segment4GuitarVoice1
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
															"Color Four"
										}
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
						\tag #'Segment4GuitarVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<bf af'>16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<d'' b''>32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice3
						{
							{
								r4
								\afterGrace
								r16
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
						\tag #'Segment4GuitarVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								af'16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g''16
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice5
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice6
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								<d' cs'' e'' b''>8
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<f' d''>8 \)
								\ottava #0
							}
						}
						\tag #'Segment4GuitarVoice7
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<fs' e''>16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<af' f''>32 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice8
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
					}
					{
						\tag #'Segment4GuitarVoice9
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								<f' e'' d'''>8
								{
									af''16 \(
								}
								<f' d''>4 \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice10
						{
							{
								r8
							}
						}
						\tag #'Segment4GuitarVoice11
						{
							{
								\afterGrace
								r16
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
						\tag #'Segment4GuitarVoice12
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								f''4 \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af''8
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice13
						{
							{
								r4
							}
						}
						\tag #'Segment4GuitarVoice14
						{
							{
								r8.
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #1
									f''16 [ \(
									g'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<df'' f'' cf'''>16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<g' e''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<af g' f''>16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice16
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice17
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								e''16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice18
						{
							{
								r8.
							}
						}
						\tag #'Segment4GuitarVoice19
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4GuitarVoice20
						{
							{
								\afterGrace
								R1 * 3/16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									b'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice21
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<f' d''>16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<g d' f' e''>16 ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice22
						{
							{
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice23
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<c'' e'' bf''>16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<c'' e'' bf''>16
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice24
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice25
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								<ef' c''>16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<f' ef''>16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice26
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice27
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								bf'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 [ \(
									b''16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs''8 \)
							}
						}
						\tag #'Segment4GuitarVoice28
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								bf'16
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af'8 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice29
						{
							{
								r16
							}
						}
						\tag #'Segment4GuitarVoice30
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice31
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								<cf' bf' af''>8
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<d' c''>8 ] \)
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice32
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4GuitarVoice33
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice34
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								f''16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c''32 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice35
						{
							{
								r16
								r4
								\afterGrace
								r16
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
						\tag #'Segment4GuitarVoice36
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<d' a' c'' b''>16 \) [
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<af' c'' gf''>32 \)
								\ottava #0
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice37
						{
							{
								r16
							}
						}
						\tag #'Segment4GuitarVoice38
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice39
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								<d' b'>8 [
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<ds' cs''>8 \)
								\ottava #0
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice40
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment4GuitarVoice41
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice42
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								c''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice43
						{
							{
								r16
							}
						}
						\tag #'Segment4GuitarVoice44
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4GuitarVoice45
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4GuitarVoice46
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice47
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								<f' d''>16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								ef''8
							}
						}
						\tag #'Segment4GuitarVoice48
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice49
						{
							{
								r16
							}
						}
						\tag #'Segment4GuitarVoice50
						{
							{
								\afterGrace
								r8.
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
						\tag #'Segment4GuitarVoice51
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								cs''8 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice52
						{
							{
								r4
								\afterGrace
								r16
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
						\tag #'Segment4GuitarVoice53
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<c' a'>16 \) [
								{
									af''16 [ \(
									b''16 ]
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<b' a''>16 \)
								{
									af'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<c' a'>16 ] \)
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice54
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice55
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								g'8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a''8 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice56
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment4GuitarVoice57
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice58
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								g'8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a''8 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice59
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
		\tag score.piano
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\context Voice = "Piano RH Voice" {
					{
						\tag #'Segment4PianoRHVoice1
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
						\tag #'Segment4PianoRHVoice2
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice3
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
								\clef treble
								a'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice4
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f''''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment4PianoRHVoice6
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice7
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
						\tag #'Segment4PianoRHVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d''''8 \glissando
							}
						}
						\tag #'Segment4PianoRHVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice11
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
						\tag #'Segment4PianoRHVoice12
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment4PianoRHVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/8
							}
						}
						\tag #'Segment4PianoRHVoice14
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PianoRHVoice15
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice16
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
						\tag #'Segment4PianoRHVoice17
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f'''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice18
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice19
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
								\ottava #1
								b'''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice20
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c''''32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice21
						{
							{
								r8
							}
						}
						\tag #'Segment4PianoRHVoice22
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice23
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
						\tag #'Segment4PianoRHVoice24
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								a'''32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice25
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment4PianoRHVoice26
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
						\tag #'Segment4PianoRHVoice27
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice28
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
						\tag #'Segment4PianoRHVoice29
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a'''16. \glissando
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
						\tag #'Segment4PianoRHVoice30
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice31
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
								cs''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice32
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b'''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice33
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice34
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
								\ottava #1
								g'''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice35
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								d''''32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice36
						{
							{
								r8
							}
						}
						\tag #'Segment4PianoRHVoice37
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
						\tag #'Segment4PianoRHVoice38
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice39
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
								\ottava #1
								\pitchedTrill
								<b''' d'''' f'''' a''''>8 \p [ \startTrillSpan c'''''
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								<> \stopTrillSpan
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\once \override TrillSpanner.bound-details.left.text = \markup {
									\null
									}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								\pitchedTrill
								<b'' d''' f'''>8 ] \startTrillSpan bf'''
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\ottava #0
								<> \stopTrillSpan
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice40
						{
							{
								r8
							}
						}
						\tag #'Segment4PianoRHVoice41
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice42
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
								\ottava #1
								d''''16. [ \glissando \startTextSpan
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
						\tag #'Segment4PianoRHVoice43
						{
							{
								r16
								r8.
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice44
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
								f''''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice45
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs'''32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice46
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice47
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
								\ottava #1
								c''''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice48
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								g'''32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d'''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice49
						{
							{
								r8
							}
						}
						\tag #'Segment4PianoRHVoice50
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoRHVoice51
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment4PianoRHVoice52
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoRHVoice53
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice54
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
								g'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice55
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d''''8 \glissando
							}
						}
						\tag #'Segment4PianoRHVoice56
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice57
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice58
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
								cs''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice59
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b'''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice60
						{
							{
								r8
							}
						}
						\tag #'Segment4PianoRHVoice61
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice62
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
								a'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice63
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f'''16 \glissando
							}
						}
						\tag #'Segment4PianoRHVoice64
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs'''32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice65
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
						\tag #'Segment4PianoLHVoice1
						{
							{
								r4.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice2
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
								\ottava #-1
								\clef bass
								c,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoLHVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g,16. \glissando
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
						\tag #'Segment4PianoLHVoice4
						{
							{
								r4
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice5
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
								\ottava #-1
								cs,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice6
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
						\tag #'Segment4PianoLHVoice7
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e,,16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<b,, d, f,>16 ]
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
						\tag #'Segment4PianoLHVoice9
						{
							{
								r16
							}
						}
						\tag #'Segment4PianoLHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/8
							}
						}
						\tag #'Segment4PianoLHVoice11
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PianoLHVoice12
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice13
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
								\ottava #-1
								c,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoLHVoice14
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d,16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a,32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice15
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment4PianoLHVoice16
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoLHVoice17
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice18
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
								f,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b,32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice19
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice20
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
								c,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice21
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/8
							}
						}
						\tag #'Segment4PianoLHVoice22
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoLHVoice23
						{
							{
								R1 * 7/8
							}
						}
						\tag #'Segment4PianoLHVoice24
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PianoLHVoice25
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice26
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
								f,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice27
						{
							{
								r4..
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice28
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
								b,,,16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoLHVoice29
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g,32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice30
						{
							{
								r16
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice31
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
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<g,, b,, d,>8 \p
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
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<d, f, a,>8 ]
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
						\tag #'Segment4PianoLHVoice32
						{
							{
								r8.
							}
						}
						\tag #'Segment4PianoLHVoice33
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment4PianoLHVoice34
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoLHVoice35
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoLHVoice36
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment4PianoLHVoice37
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice38
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
								a,,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice39
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice40
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
								cs,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoLHVoice41
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b,,16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c,32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice42
						{
							{
								r8
							}
						}
						\tag #'Segment4PianoLHVoice43
						{
							{
								r4.
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice44
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
								\ottava #-1
								c,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice45
						{
							{
								r16
							}
						}
						\tag #'Segment4PianoLHVoice46
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment4PianoLHVoice47
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
					\tag #'Segment4PianoPedals1
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment4PianoPedals2
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment4PianoPedals3
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment4PianoPedals4
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment4PianoPedals5
					{
						{
							R1 * 5/8
						}
					}
					\tag #'Segment4PianoPedals6
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment4PianoPedals7
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment4PianoPedals8
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals9
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals10
					{
						{
							R1 * 5/8
						}
					}
					\tag #'Segment4PianoPedals11
					{
						{
							R1 * 5/8
						}
					}
					\tag #'Segment4PianoPedals12
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals13
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment4PianoPedals14
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals15
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals16
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment4PianoPedals17
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment4PianoPedals18
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment4PianoPedals19
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals20
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals21
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment4PianoPedals22
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals23
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment4PianoPedals24
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment4PianoPedals25
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment4PianoPedals26
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
						\tag #'Segment4PercussionShakerVoice1
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice3
						{
							{
								r8.
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f'8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8
							}
						}
						\tag #'Segment4PercussionShakerVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								b8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d'16 \(
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
						\tag #'Segment4PercussionShakerVoice6
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment4PercussionShakerVoice7
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
						\tag #'Segment4PercussionShakerVoice8
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice10
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
						\tag #'Segment4PercussionShakerVoice11
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice12
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f'16 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice13
						{
							{
								r8
							}
						}
						\tag #'Segment4PercussionShakerVoice14
						{
							{
								r4.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice15
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								b32
							}
						}
						\tag #'Segment4PercussionShakerVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g16 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice17
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
						\tag #'Segment4PercussionShakerVoice18
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice19
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice20
						{
							{
								r16
							}
						}
						\tag #'Segment4PercussionShakerVoice21
						{
							{
								r4.
								\afterGrace
								r16
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
						\tag #'Segment4PercussionShakerVoice22
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								g16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice23
						{
							{
								r16
							}
						}
						\tag #'Segment4PercussionShakerVoice24
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
						\tag #'Segment4PercussionShakerVoice25
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice26
						{
							\times 2/3 {
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
						\tag #'Segment4PercussionShakerVoice27
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16
							}
						}
						\tag #'Segment4PercussionShakerVoice28
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment4PercussionShakerVoice29
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice30
						{
							{
								\afterGrace
								r2
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
						\tag #'Segment4PercussionShakerVoice31
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								g8 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								d'4 \)
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice32
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment4PercussionShakerVoice33
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
						\tag #'Segment4PercussionShakerVoice34
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice35
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f'8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g16
							}
						}
						\tag #'Segment4PercussionShakerVoice36
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16
							}
						}
						\tag #'Segment4PercussionShakerVoice37
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g8 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice38
						{
							{
								r4
							}
						}
						\tag #'Segment4PercussionShakerVoice39
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
						\tag #'Segment4PercussionShakerVoice40
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice41
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								b16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g16
							}
						}
						\tag #'Segment4PercussionShakerVoice42
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d'16 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice43
						{
							{
								r8
							}
						}
						\tag #'Segment4PercussionShakerVoice44
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice45
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								f'16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice46
						{
							{
								r8.
								r4
							}
						}
						\tag #'Segment4PercussionShakerVoice47
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment4PercussionShakerVoice48
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
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						\tag #'Segment4PercussionWoodblockVoice1
						{
							{
								r4.
								\afterGrace
								r4
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
						\tag #'Segment4PercussionWoodblockVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment4PercussionWoodblockVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								e'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 \(
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
						\tag #'Segment4PercussionWoodblockVoice4
						{
							{
								r4
								r2
							}
						}
						\tag #'Segment4PercussionWoodblockVoice5
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice6
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice7
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g'8
							}
						}
						\tag #'Segment4PercussionWoodblockVoice8
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice10
						{
							{
								r4.
							}
						}
						\tag #'Segment4PercussionWoodblockVoice11
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
						\tag #'Segment4PercussionWoodblockVoice12
						{
							{
								\afterGrace
								r4
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
						\tag #'Segment4PercussionWoodblockVoice13
						{
							\times 2/3 {
								\afterGrace
								f4 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 [ \(
									c'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'2 \)
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice14
						{
							{
								r8
							}
						}
						\tag #'Segment4PercussionWoodblockVoice15
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice16
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice17
						{
							{
								R1 * 5/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PercussionWoodblockVoice18
						{
							{
								\afterGrace
								r8
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
						\tag #'Segment4PercussionWoodblockVoice19
						{
							{
								f4 \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 [
							}
						}
						\tag #'Segment4PercussionWoodblockVoice20
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e'16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice21
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								g'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice22
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
						\tag #'Segment4PercussionWoodblockVoice23
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								e'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f16 \)
							}
						}
						\tag #'Segment4PercussionWoodblockVoice24
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								a16
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
								g'16 ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice25
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 11/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PercussionWoodblockVoice26
						{
							{
								r4.
								\afterGrace
								r4
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
						\tag #'Segment4PercussionWoodblockVoice27
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
							}
						}
						\tag #'Segment4PercussionWoodblockVoice28
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 ~
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
								\set stemRightBeamCount = 0
								f8 ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice29
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice30
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice31
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice32
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice33
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								a4
								c'4
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice34
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment4PercussionWoodblockVoice35
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice36
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 ~
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
								\set stemRightBeamCount = 0
								f8 ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice37
						{
							{
								r8.
							}
						}
						\tag #'Segment4PercussionWoodblockVoice38
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice39
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
						\tag #'Segment4PercussionDrumVoice1
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
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
						\tag #'Segment4PercussionDrumVoice3
						{
							{
								r8.
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment4PercussionDrumVoice6
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								\afterGrace
								R1 * 7/8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice7
						{
							{
								e'4 \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice8
						{
							{
								r16
							}
						}
						\tag #'Segment4PercussionDrumVoice9
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
						\tag #'Segment4PercussionDrumVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice11
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
								a16 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice12
						{
							{
								r4.
							}
						}
						\tag #'Segment4PercussionDrumVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								\afterGrace
								R1 * 7/16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice14
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice15
						{
							{
								r8
								r2
							}
						}
						\tag #'Segment4PercussionDrumVoice16
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
						\tag #'Segment4PercussionDrumVoice17
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
							}
						}
						\tag #'Segment4PercussionDrumVoice18
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								c'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
							}
						}
						\tag #'Segment4PercussionDrumVoice19
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
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
						\tag #'Segment4PercussionDrumVoice20
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment4PercussionDrumVoice21
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice22
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								e'32 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice23
						{
							{
								r4.
							}
						}
						\tag #'Segment4PercussionDrumVoice24
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
						\tag #'Segment4PercussionDrumVoice25
						{
							{
								r4.
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice26
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								a8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 \)
							}
						}
						\tag #'Segment4PercussionDrumVoice27
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
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
						\tag #'Segment4PercussionDrumVoice28
						{
							{
								r16
							}
						}
						\tag #'Segment4PercussionDrumVoice29
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
						\tag #'Segment4PercussionDrumVoice30
						{
							{
								r8.
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice31
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
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
						\tag #'Segment4PercussionDrumVoice32
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment4PercussionDrumVoice33
						{
							{
								r4.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice34
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								e'16 ]
							}
						}
						\tag #'Segment4PercussionDrumVoice35
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								a4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 [ \(
									e'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 \) [
							}
						}
						\tag #'Segment4PercussionDrumVoice36
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								c'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice37
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionDrumVoice38
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment4PercussionDrumVoice39
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice40
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								e'32 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice41
						{
							{
								r4
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice42
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								c'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice43
						{
							{
								r16
							}
						}
						\tag #'Segment4PercussionDrumVoice44
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment4PercussionDrumVoice45
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment4PercussionDrumVoice46
						{
							{
								R1 * 3/16
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