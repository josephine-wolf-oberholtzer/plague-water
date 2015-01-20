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
				\mark \markup { \override #'(box-padding . 0.5) \box 17A }
				\tempo 4=96
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
				\time 3/16
				s1 * 3/16
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
				\time 11/16
				s1 * 11/16
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
				\time 7/16
				s1 * 7/16
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
				\time 5/16
				s1 * 5/16
			}
			{
				\time 11/16
				s1 * 11/16
			}
			{
				\time 5/8
				s1 * 5/8
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
				\time 11/16
				s1 * 11/16
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
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
						\tag #'Segment17aSaxophoneVoice1
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
						\tag #'Segment17aSaxophoneVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b,16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af,16 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice3
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								f,16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af,16 \)
							}
						}
						\tag #'Segment17aSaxophoneVoice5
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g,8 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice6
						{
							{
								r8
							}
						}
						\tag #'Segment17aSaxophoneVoice7
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
						\tag #'Segment17aSaxophoneVoice8
						{
							\times 2/3 {
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
						\tag #'Segment17aSaxophoneVoice9
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice10
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16 ~
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
						\tag #'Segment17aSaxophoneVoice11
						{
							{
								r8
							}
						}
						\tag #'Segment17aSaxophoneVoice12
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
									g,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice13
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								f,4 \)
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								af,8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment17aSaxophoneVoice14
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								d,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d,8 ] \)
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice15
						{
							{
								r4..
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
						\tag #'Segment17aSaxophoneVoice16
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								d,16 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 [ \(
									b,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice17
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
						\tag #'Segment17aSaxophoneVoice18
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice19
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
								e16 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice20
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice21
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f,16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af,8 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice22
						{
							{
								r8
							}
						}
						\tag #'Segment17aSaxophoneVoice23
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
						\tag #'Segment17aSaxophoneVoice24
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
						\tag #'Segment17aSaxophoneVoice25
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d,8 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af,16
							}
						}
						\tag #'Segment17aSaxophoneVoice26
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f,16 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice27
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice28
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e,16 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice29
						{
							{
								\afterGrace
								r4..
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
						\tag #'Segment17aSaxophoneVoice30
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								cs,8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								bf,8 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice31
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
						\tag #'Segment17aSaxophoneVoice32
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								bf,16 [
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
						\tag #'Segment17aSaxophoneVoice33
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice34
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af,16 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice35
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment17aSaxophoneVoice36
						{
							{
								\afterGrace
								r4.
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
						\tag #'Segment17aSaxophoneVoice37
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
						\tag #'Segment17aSaxophoneVoice38
						{
							{
								r8
							}
						}
						\tag #'Segment17aSaxophoneVoice39
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice40
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice41
						{
							{
								r2
							}
						}
						\tag #'Segment17aSaxophoneVoice42
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
						\tag #'Segment17aSaxophoneVoice43
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice44
						{
							\times 2/3 {
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
						\tag #'Segment17aSaxophoneVoice45
						{
							{
								r8.
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice46
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								ef32 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice47
						{
							{
								r16
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
						\tag #'Segment17aSaxophoneVoice48
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								cs,16 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 [ \(
									b,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
							}
						}
						\tag #'Segment17aSaxophoneVoice49
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								b,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs,8 ] \)
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice50
						{
							{
								r16
							}
						}
						\tag #'Segment17aSaxophoneVoice51
						{
							{
								r4
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
						\tag #'Segment17aSaxophoneVoice52
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 \) [
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
						\tag #'Segment17aSaxophoneVoice53
						{
							{
								r8.
								r4
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice54
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a,16 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice55
						{
							{
								r16
							}
						}
						\tag #'Segment17aSaxophoneVoice56
						{
							{
								r4..
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice57
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a,8
								g,4
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice58
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								\afterGrace
								R1 * 5/16
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
						\tag #'Segment17aSaxophoneVoice59
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								a,8 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 [ \(
									b,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a,16 \)
							}
						}
						\tag #'Segment17aSaxophoneVoice60
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
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
						\tag #'Segment17aSaxophoneVoice61
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
						\tag #'Segment17aGuitarVoice1
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
						\tag #'Segment17aGuitarVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<a g'>8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<d' b'>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice3
						{
							{
								r16
								\afterGrace
								r4
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
						\tag #'Segment17aGuitarVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b'16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af''16
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice5
						{
							{
								r8
							}
						}
						\tag #'Segment17aGuitarVoice6
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
						\tag #'Segment17aGuitarVoice7
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice8
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<f e' g' d''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<af' f''>16 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice9
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
						\tag #'Segment17aGuitarVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<fs e'>16 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<af' f''>8 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice11
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice12
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								e'8 [
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
						\tag #'Segment17aGuitarVoice13
						{
							{
								r16
							}
						}
						\tag #'Segment17aGuitarVoice14
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
						\tag #'Segment17aGuitarVoice15
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<f e' d''>16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<af' f''>16
								{
									g'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<df' f' cf''>16 \)
							}
						}
						\tag #'Segment17aGuitarVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<cf' af'>16
								{
									f''16 [ \(
									g''16 ]
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<af g' f''>16 ] \)
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice17
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice18
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								e'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice19
						{
							{
								r16
							}
						}
						\tag #'Segment17aGuitarVoice20
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
						\tag #'Segment17aGuitarVoice21
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
						\tag #'Segment17aGuitarVoice22
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<g f'>8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<f' d''>8 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice23
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice24
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<f' d''>16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<f' d''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<g d' f' e''>16 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice25
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
						\tag #'Segment17aGuitarVoice26
						{
							{
								r8.
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
						\tag #'Segment17aGuitarVoice27
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f'8 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g''16 [ \(
									af''16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d''8 \)
								\ottava #0
							}
						}
						\tag #'Segment17aGuitarVoice28
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								af'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d''16
								\ottava #0
							}
						}
						\tag #'Segment17aGuitarVoice29
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								e''16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice30
						{
							{
								r4..
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice31
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<gf' bf' ff''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice32
						{
							{
								r8
							}
						}
						\tag #'Segment17aGuitarVoice33
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice34
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								af'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice35
						{
							{
								r4..
								r16
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice36
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								<e' cs''>16
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<ds' cs''>32 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice37
						{
							{
								r16
							}
						}
						\tag #'Segment17aGuitarVoice38
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice39
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\ottava #1
								<df' c'' bf''>4
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<f' ef''>8 [
								\ottava #0
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice40
						{
							{
								r16
							}
						}
						\tag #'Segment17aGuitarVoice41
						{
							{
								\afterGrace
								r8
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
						\tag #'Segment17aGuitarVoice42
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c''16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef''16
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice43
						{
							{
								r8
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice44
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								<e' cs''>16
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<ds' cs''>16 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice45
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
						\tag #'Segment17aGuitarVoice46
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								d''16 [
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
						\tag #'Segment17aGuitarVoice47
						{
							{
								r4..
								\afterGrace
								r8
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
						\tag #'Segment17aGuitarVoice48
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								<e' cs''>8 \) [
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice49
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
						\tag #'Segment17aGuitarVoice50
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice51
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								b'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<f' d''>16
								\ottava #0
							}
						}
						\tag #'Segment17aGuitarVoice52
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								<cs' b'>16
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<e' cs''>16 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice53
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice54
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								b'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice55
						{
							{
								r16
							}
						}
						\tag #'Segment17aGuitarVoice56
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
						\tag #'Segment17aGuitarVoice57
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice58
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								a'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice59
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice60
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								a'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								a'32 \)
							}
						}
						\tag #'Segment17aGuitarVoice61
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								g'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af'16 [ \(
									b'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a'8 \)
								\ottava #0
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice62
						{
							{
								r16
							}
						}
						\tag #'Segment17aGuitarVoice63
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								\afterGrace
								R1 * 5/16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									af'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice64
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								a'16 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 [ \(
									b'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<c' a'>16 ] \)
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice65
						{
							{
								r16
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
						\tag #'Segment17aPianoRHVoice1
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #2
								\clef treble
								f'''16 \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g''''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice3
						{
							{
								r8.
							}
						}
						\tag #'Segment17aPianoRHVoice4
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
						\tag #'Segment17aPianoRHVoice5
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice6
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
						\tag #'Segment17aPianoRHVoice7
						{
							{
								r4
							}
						}
						\tag #'Segment17aPianoRHVoice8
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice9
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
								c''''16. [ \glissando \startTextSpan
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
						\tag #'Segment17aPianoRHVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice11
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
								d''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoRHVoice12
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a'''16 \glissando
							}
						}
						\tag #'Segment17aPianoRHVoice13
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'''16 \glissando
							}
						}
						\tag #'Segment17aPianoRHVoice14
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
						\tag #'Segment17aPianoRHVoice15
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
					}
					{
						\tag #'Segment17aPianoRHVoice16
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
								\ottava #1
								<e''' g''' b''' d''''>16 \p [
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
								<b''' d'''' f''''>16
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
						\tag #'Segment17aPianoRHVoice17
						{
							{
								r4.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice18
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
						\tag #'Segment17aPianoRHVoice19
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g''''16. \glissando
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
						\tag #'Segment17aPianoRHVoice20
						{
							{
								r16
							}
						}
						\tag #'Segment17aPianoRHVoice21
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice22
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
						\tag #'Segment17aPianoRHVoice23
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
						\tag #'Segment17aPianoRHVoice24
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice25
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
						\tag #'Segment17aPianoRHVoice26
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d''''16. \glissando
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
						\tag #'Segment17aPianoRHVoice27
						{
							{
								r16
							}
						}
						\tag #'Segment17aPianoRHVoice28
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 11/16
							}
						}
						\tag #'Segment17aPianoRHVoice29
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPianoRHVoice30
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice31
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
								g'''16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d''''32 ] \stopTextSpan
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
						\tag #'Segment17aPianoRHVoice32
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice33
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
								a'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoRHVoice34
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f''''16. \glissando
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
						\tag #'Segment17aPianoRHVoice35
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice36
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
						\tag #'Segment17aPianoRHVoice37
						{
							{
								r4
							}
						}
						\tag #'Segment17aPianoRHVoice38
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice39
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
								<g''' b''' d''''>16 \p
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
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<a''' c'''' e''''>32 ]
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
						\tag #'Segment17aPianoRHVoice40
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment17aPianoRHVoice41
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPianoRHVoice42
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPianoRHVoice43
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice44
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
						\tag #'Segment17aPianoRHVoice45
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice46
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
								g'''16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d''''32 ] \stopTextSpan
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
						\tag #'Segment17aPianoRHVoice47
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice48
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
								a'''16. [ \glissando \startTextSpan
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
						\tag #'Segment17aPianoRHVoice49
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment17aPianoRHVoice50
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
						\tag #'Segment17aPianoRHVoice51
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice52
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
								a'''16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f''''32 ] \stopTextSpan
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
						\tag #'Segment17aPianoRHVoice53
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice54
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
								c''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoRHVoice55
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g''''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d''''32 ] \stopTextSpan
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
						\tag #'Segment17aPianoRHVoice56
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoRHVoice57
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice58
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
								a'''16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f''''32 ] \stopTextSpan
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
						\tag #'Segment17aPianoRHVoice59
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoRHVoice60
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17aPianoRHVoice61
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
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment17aPianoLHVoice1
						{
							{
								r4.
								r4
								r8.
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice2
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
								c,,16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoLHVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								g,,32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d,,32 ] \stopTextSpan
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
						\tag #'Segment17aPianoLHVoice4
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoLHVoice5
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice6
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
								a,,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs,32 ] \stopTextSpan
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
						\tag #'Segment17aPianoLHVoice7
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment17aPianoLHVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPianoLHVoice9
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment17aPianoLHVoice10
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPianoLHVoice11
						{
							{
								r4..
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice12
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
								c,,16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoLHVoice13
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g,,16 \glissando
							}
						}
						\tag #'Segment17aPianoLHVoice14
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d,,8 \glissando
							}
						}
						\tag #'Segment17aPianoLHVoice15
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a,,,16. \glissando
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
						\tag #'Segment17aPianoLHVoice16
						{
							{
								r4
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice17
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
						\tag #'Segment17aPianoLHVoice18
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c,16 \glissando
							}
						}
						\tag #'Segment17aPianoLHVoice19
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								d,,32 \glissando
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
						\tag #'Segment17aPianoLHVoice20
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoLHVoice21
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
						\tag #'Segment17aPianoLHVoice22
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice23
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
								a,,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoLHVoice24
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs,16 \glissando
							}
						}
						\tag #'Segment17aPianoLHVoice25
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								b,,,32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c,,32 ] \stopTextSpan
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
						\tag #'Segment17aPianoLHVoice26
						{
							{
								r8
								r2
							}
						}
						\tag #'Segment17aPianoLHVoice27
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
						\tag #'Segment17aPianoLHVoice28
						{
							{
								r4..
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice29
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
								cs,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoLHVoice30
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
						\tag #'Segment17aPianoLHVoice31
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice32
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
								f,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs,32 ] \stopTextSpan
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
						\tag #'Segment17aPianoLHVoice33
						{
							{
								r4.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice34
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
								\ottava #-2
								<e,,, g,,, b,,, d,, f,,>16 \p
									^ \markup {
										\center-align
											\flat
										}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f,,16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice35
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPianoLHVoice36
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment17aPianoLHVoice37
						{
							{
								R1 * 11/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPianoLHVoice38
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice39
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
								f,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoLHVoice40
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b,,16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c,,32 ] \stopTextSpan
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
						\tag #'Segment17aPianoLHVoice41
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice42
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
								g,,16. [ \glissando \startTextSpan
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
						\tag #'Segment17aPianoLHVoice43
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment17aPianoLHVoice44
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
						\tag #'Segment17aPianoLHVoice45
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice46
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
								b,,32 ] \stopTextSpan
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
						\tag #'Segment17aPianoLHVoice47
						{
							{
								r2
							}
						}
						\tag #'Segment17aPianoLHVoice48
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17aPianoLHVoice49
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment17aPianoLHVoice50
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
					\tag #'Segment17aPianoPedals1
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17aPianoPedals2
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals3
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17aPianoPedals4
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals5
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17aPianoPedals6
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals7
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment17aPianoPedals8
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals9
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17aPianoPedals10
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals11
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment17aPianoPedals12
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17aPianoPedals13
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment17aPianoPedals14
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17aPianoPedals15
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment17aPianoPedals16
					{
						{
							R1 * 5/8
						}
					}
					\tag #'Segment17aPianoPedals17
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17aPianoPedals18
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals19
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals20
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment17aPianoPedals21
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment17aPianoPedals22
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17aPianoPedals23
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals24
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment17aPianoPedals25
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17aPianoPedals26
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17aPianoPedals27
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
						\tag #'Segment17aPercussionShakerVoice1
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
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
								d'16 ] \)
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice3
						{
							{
								r8
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
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
						\tag #'Segment17aPercussionShakerVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionShakerVoice6
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
						\tag #'Segment17aPercussionShakerVoice7
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8 ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8
							}
						}
						\tag #'Segment17aPercussionShakerVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16
							}
						}
						\tag #'Segment17aPercussionShakerVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
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
						\tag #'Segment17aPercussionShakerVoice11
						{
							{
								r8.
							}
						}
						\tag #'Segment17aPercussionShakerVoice12
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
						\tag #'Segment17aPercussionShakerVoice13
						{
							{
								r4..
								r8
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice14
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								g16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d'32 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
							}
						}
						\tag #'Segment17aPercussionShakerVoice15
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g16 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice16
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionShakerVoice17
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment17aPercussionShakerVoice18
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice19
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice20
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionShakerVoice21
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
						\tag #'Segment17aPercussionShakerVoice22
						{
							{
								r8.
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice23
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
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
						\tag #'Segment17aPercussionShakerVoice24
						{
							{
								r8
							}
						}
						\tag #'Segment17aPercussionShakerVoice25
						{
							{
								\afterGrace
								r8.
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
						\tag #'Segment17aPercussionShakerVoice26
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d'16 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice27
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
						\tag #'Segment17aPercussionShakerVoice28
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice29
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16
							}
						}
						\tag #'Segment17aPercussionShakerVoice30
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								f'8 ]
							}
						}
						\tag #'Segment17aPercussionShakerVoice31
						{
							\times 2/3 {
								g4
								b2
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice32
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionShakerVoice33
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPercussionShakerVoice34
						{
							{
								\afterGrace
								r4..
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
						\tag #'Segment17aPercussionShakerVoice35
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
								d'16 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice36
						{
							{
								r8
							}
						}
						\tag #'Segment17aPercussionShakerVoice37
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
						\tag #'Segment17aPercussionShakerVoice38
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice39
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								f'4
								g4
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice40
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionShakerVoice41
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
						\tag #'Segment17aPercussionShakerVoice42
						{
							{
								r8.
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
						\tag #'Segment17aPercussionShakerVoice43
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d'8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8
							}
						}
						\tag #'Segment17aPercussionShakerVoice44
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								g8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d'16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice45
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
						\tag #'Segment17aPercussionShakerVoice46
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice47
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g32 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice48
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionShakerVoice49
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
						\tag #'Segment17aPercussionWoodblockVoice1
						{
							{
								r4.
								r4
								\afterGrace
								r16
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
						\tag #'Segment17aPercussionWoodblockVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice3
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
						\tag #'Segment17aPercussionWoodblockVoice4
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice5
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice6
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice7
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
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
								\set stemRightBeamCount = -1
								f16 ] \)
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice10
						{
							\times 2/3 {
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
								g'2 \)
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice12
						{
							{
								R1 * 7/8
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice13
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice14
						{
							{
								\afterGrace
								r8.
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
						\tag #'Segment17aPercussionWoodblockVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 \) [
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
								g'8 \)
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice16
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice17
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice18
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 11/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice19
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice20
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\afterGrace
								c'4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								g'4 \)
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice21
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8 ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 [ \(
									c'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 ] \)
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice22
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/8
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice23
						{
							{
								\afterGrace
								R1 * 7/8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									g'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice24
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice25
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice26
						{
							{
								R1 * 11/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice27
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice28
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 ~
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
								\set stemRightBeamCount = 1
								g'16 \)
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice29
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice30
						{
							{
								r4
								r2
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice31
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
						\tag #'Segment17aPercussionWoodblockVoice32
						{
							{
								r8.
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice33
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								c'4
								e'4
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice34
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice35
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice36
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
						\tag #'Segment17aPercussionDrumVoice1
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice2
						{
							\times 2/3 {
								a4
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice3
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 [
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
						\tag #'Segment17aPercussionDrumVoice5
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionDrumVoice6
						{
							{
								\afterGrace
								R1 * 7/8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice7
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
							}
						}
						\tag #'Segment17aPercussionDrumVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								e'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c'32 ] \)
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice9
						{
							{
								r8.
							}
						}
						\tag #'Segment17aPercussionDrumVoice10
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
						\tag #'Segment17aPercussionDrumVoice11
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice13
						{
							{
								r4
							}
						}
						\tag #'Segment17aPercussionDrumVoice14
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
						\tag #'Segment17aPercussionDrumVoice15
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice16
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
							}
						}
						\tag #'Segment17aPercussionDrumVoice17
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8
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
						\tag #'Segment17aPercussionDrumVoice18
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionDrumVoice19
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment17aPercussionDrumVoice20
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPercussionDrumVoice21
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice22
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice23
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice24
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
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
						\tag #'Segment17aPercussionDrumVoice25
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionDrumVoice26
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
						\tag #'Segment17aPercussionDrumVoice27
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice28
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								a8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 ] \)
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice29
						{
							{
								r4
							}
						}
						\tag #'Segment17aPercussionDrumVoice30
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice31
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c'32 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice32
						{
							{
								r8
							}
						}
						\tag #'Segment17aPercussionDrumVoice33
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionDrumVoice34
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPercussionDrumVoice35
						{
							{
								r4..
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 [ \(
									a16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice36
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								c'16 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								a32 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = -1
								r32 ]
							}
						}
						\tag #'Segment17aPercussionDrumVoice37
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								c'4
								e'4
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice38
						{
							{
								r8
							}
						}
						\tag #'Segment17aPercussionDrumVoice39
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice40
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 [
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
						\tag #'Segment17aPercussionDrumVoice41
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
						\tag #'Segment17aPercussionDrumVoice42
						{
							{
								r8.
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice43
						{
							{
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
						\tag #'Segment17aPercussionDrumVoice44
						{
							{
								r8
							}
						}
						\tag #'Segment17aPercussionDrumVoice45
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17aPercussionDrumVoice46
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment17aPercussionDrumVoice47
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