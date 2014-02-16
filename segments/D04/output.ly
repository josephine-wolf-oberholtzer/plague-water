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
				\time 3/16
				s1 * 3/16
			}
			{
				\time 5/8
				s1 * 5/8
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
			{
				\time 7/8
				s1 * 7/8
			}
			{
				s1 * 7/8
			}
			{
				\time 5/8
				s1 * 5/8
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
				\time 3/16
				s1 * 3/16
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
								b,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ] )
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
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f,8 (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f8 ] \) )
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
								r8
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice7
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f,16 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af,16 ] )
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
					}
					{
						\tag #'Segment4SaxophoneVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e,16 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f32 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice10
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice11
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								af,8 [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e16 \) )
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice12
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
						\tag #'Segment4SaxophoneVoice13
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16 )
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice14
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4SaxophoneVoice15
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4SaxophoneVoice16
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice17
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								af,8 (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e8 ] \) )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice18
						{
							{
								r4
							}
						}
						\tag #'Segment4SaxophoneVoice19
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice20
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f,16 [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d8 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice21
						{
							{
								r4.
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
						\tag #'Segment4SaxophoneVoice22
						{
							\times 2/3 {
								d,4 \) (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af,8 )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice23
						{
							{
								r16
							}
						}
						\tag #'Segment4SaxophoneVoice24
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
						\tag #'Segment4SaxophoneVoice25
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice26
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d,16 [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e,16 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice27
						{
							{
								r8.
								r8
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
						\tag #'Segment4SaxophoneVoice28
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								d,8 \) [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 [ \(
									f16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c8 ] \) )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice29
						{
							{
								r8
							}
						}
						\tag #'Segment4SaxophoneVoice30
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
						\tag #'Segment4SaxophoneVoice31
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								cs,8 \) [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								bf,8 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice32
						{
							{
								r16
							}
						}
						\tag #'Segment4SaxophoneVoice33
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice34
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16 ~ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs16 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice35
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
						\tag #'Segment4SaxophoneVoice36
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								bf,16
							}
						}
						\tag #'Segment4SaxophoneVoice37
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs,16 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice38
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice39
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af,16 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice40
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice41
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c,16 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								ef16 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice42
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice43
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs32 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice44
						{
							{
								r16
								\afterGrace
								r4
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
						\tag #'Segment4SaxophoneVoice45
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\afterGrace
								c,4 \) (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 [ \(
									b,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment4SaxophoneVoice46
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
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
								cs,8 ] \) )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice47
						{
							{
								r8
							}
						}
						\tag #'Segment4SaxophoneVoice48
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice49
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								ef,16 [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs16 )
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice50
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice51
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f,16 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b,16 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice52
						{
							{
								r8
							}
						}
						\tag #'Segment4SaxophoneVoice53
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
						\tag #'Segment4SaxophoneVoice54
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 \) [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b,8 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice55
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice56
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								ef,8 [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs16
							}
						}
						\tag #'Segment4SaxophoneVoice57
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d,16 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice58
						{
							{
								r8.
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
						\tag #'Segment4SaxophoneVoice59
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a,16
							}
						}
						\tag #'Segment4SaxophoneVoice60
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a,16 ] )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice61
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
						\tag #'Segment4SaxophoneVoice62
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								a,8 \) [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a,8 ] \) )
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice63
						{
							{
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice64
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								g,16 [ (
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
						\tag #'Segment4SaxophoneVoice65
						{
							{
								r16
							}
						}
						\tag #'Segment4SaxophoneVoice66
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
						\tag #'Segment4SaxophoneVoice67
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice68
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a,16 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								g,32
							}
						}
						\tag #'Segment4SaxophoneVoice69
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g,8 )
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment4SaxophoneVoice70
						{
							{
								r16
							}
						}
						\tag #'Segment4SaxophoneVoice71
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
								<bf>16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<d''>32 -\staccato
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
								af'16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g''16 -\staccato
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
								\afterGrace
								<c' b' a''>8 -\staccato \arpeggio
								{
									g''16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<af'>8 -\staccato \)
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
								<bf>16 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<f'>32 -\staccato ]
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
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4GuitarVoice9
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice10
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								<af f''>8 -\staccato \arpeggio
								{
									b''16 \(
								}
								<f'>4 -\staccato \)
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice11
						{
							{
								r16
							}
						}
						\tag #'Segment4GuitarVoice12
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
									\ottava #1
									f''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice13
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e''8 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f''16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice14
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								\afterGrace
								R1 * 5/8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\stopStaff
									\startStaff
									af'16 [ \(
									b'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<bf' af''>16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<g'>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<bff gf''>16 -\staccato \arpeggio ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice16
						{
							{
								r16
							}
						}
						\tag #'Segment4GuitarVoice17
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice18
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								e''16 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f''16 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice19
						{
							{
								r4
							}
						}
						\tag #'Segment4GuitarVoice20
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
						\tag #'Segment4GuitarVoice21
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
						\tag #'Segment4GuitarVoice22
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<af'>16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<e' b' cs'''>16 -\staccato \arpeggio ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice23
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice24
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<df'' cf'''>16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<df'' cf'''>16
								{
									g''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f''16 -\staccato \)
							}
						}
						\tag #'Segment4GuitarVoice25
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<gf'>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<g'>16 -\staccato
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice26
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
									\ottava #1
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
						\tag #'Segment4GuitarVoice27
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
								\set stemRightBeamCount = 1
								cs''8 -\staccato \)
								\ottava #0
							}
						}
						\tag #'Segment4GuitarVoice28
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								bf'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice29
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
						\tag #'Segment4GuitarVoice30
						{
							{
								r4.
								r16
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
								\ottava #1
								<d' b''>8 -\staccato \arpeggio
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<f'>8 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice32
						{
							{
								r8
							}
						}
						\tag #'Segment4GuitarVoice33
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice34
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								d''16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f''16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice35
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice36
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								<e' b' cs'''>16 -\staccato \arpeggio
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<af' gf''>32 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice37
						{
							{
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
						\tag #'Segment4GuitarVoice38
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								<e'>8 -\staccato \) [
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<ds'>16 -\staccato \)
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice39
						{
							{
								r16
							}
						}
						\tag #'Segment4GuitarVoice40
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
						\tag #'Segment4GuitarVoice41
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice42
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								b'16 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs''16 -\staccato \)
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
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
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4GuitarVoice45
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice46
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<af'>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d''16 -\staccato
								\ottava #0
							}
						}
						\tag #'Segment4GuitarVoice47
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c''16 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b'32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice48
						{
							{
								r8
							}
						}
						\tag #'Segment4GuitarVoice49
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice50
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								ef''16 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c''8 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice51
						{
							{
								r8
							}
						}
						\tag #'Segment4GuitarVoice52
						{
							{
								\afterGrace
								r8.
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
								\set stemRightBeamCount = 1
								<c'>8 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<cs''>16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice54
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice55
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<bf>16 -\staccato [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a''16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice56
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4GuitarVoice57
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4GuitarVoice58
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
						\tag #'Segment4GuitarVoice59
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								a'8 -\staccato \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a''8 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4GuitarVoice60
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
								r8
							}
						}
						\tag #'Segment4PianoRHVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoRHVoice14
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoRHVoice15
						{
							{
								R1 * 5/8
							}
						}
						\tag #'Segment4PianoRHVoice16
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PianoRHVoice17
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice18
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
						\tag #'Segment4PianoRHVoice19
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
						\tag #'Segment4PianoRHVoice20
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice21
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
								c'''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice22
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
						\tag #'Segment4PianoRHVoice23
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice24
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
						\tag #'Segment4PianoRHVoice25
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 11/16
							}
						}
						\tag #'Segment4PianoRHVoice26
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PianoRHVoice27
						{
							{
								r4
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
								\set stemRightBeamCount = 2
								\ottava #1
								g'''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice29
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d''''16 \glissando
							}
						}
						\tag #'Segment4PianoRHVoice30
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
						\tag #'Segment4PianoRHVoice31
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice32
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
						\tag #'Segment4PianoRHVoice33
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
						\tag #'Segment4PianoRHVoice34
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice35
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
						\tag #'Segment4PianoRHVoice36
						{
							{
								r16
							}
						}
						\tag #'Segment4PianoRHVoice37
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice38
						{
							{
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
								\pitchedTrill
								<g'' b'' d''' f'''>16 \p ~ \startTrillSpan af'''
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
								<> \stopTrillSpan
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
						\tag #'Segment4PianoRHVoice39
						{
							{
								r16
							}
						}
						\tag #'Segment4PianoRHVoice40
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice41
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
								c''''16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g'''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice42
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
						\tag #'Segment4PianoRHVoice43
						{
							{
								r16
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
								d''''16. [ \glissando \startTextSpan
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
						\tag #'Segment4PianoRHVoice45
						{
							{
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice46
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
								f''''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice47
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs''''32 \glissando
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
						\tag #'Segment4PianoRHVoice48
						{
							{
								r8
							}
						}
						\tag #'Segment4PianoRHVoice49
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment4PianoRHVoice50
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PianoRHVoice51
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice52
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
								b'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoRHVoice53
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c''''8 \glissando
							}
						}
						\tag #'Segment4PianoRHVoice54
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g''16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice55
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice56
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
						\tag #'Segment4PianoRHVoice57
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f''''16 \glissando
							}
						}
						\tag #'Segment4PianoRHVoice58
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs'''32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c'''32 ] \stopTextSpan
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
						\tag #'Segment4PianoRHVoice59
						{
							{
								r8
							}
						}
						\tag #'Segment4PianoRHVoice60
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoRHVoice61
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
						\tag #'Segment4PianoRHVoice62
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a'''16 \glissando
							}
						}
						\tag #'Segment4PianoRHVoice63
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								f''32 \glissando
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
						\tag #'Segment4PianoRHVoice64
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
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PianoLHVoice7
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #-1
								e,,8 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f,8 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoLHVoice10
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoLHVoice11
						{
							{
								R1 * 5/8
							}
						}
						\tag #'Segment4PianoLHVoice12
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PianoLHVoice13
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice14
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
						\tag #'Segment4PianoLHVoice15
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
						\tag #'Segment4PianoLHVoice16
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment4PianoLHVoice17
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
						\tag #'Segment4PianoLHVoice18
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice19
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
								d,,16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoLHVoice20
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								f,32 \glissando
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
						\tag #'Segment4PianoLHVoice21
						{
							{
								r8
								r4
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice22
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
								b,,,16. [ \glissando \startTextSpan
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
						\tag #'Segment4PianoLHVoice23
						{
							{
								r8
							}
						}
						\tag #'Segment4PianoLHVoice24
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment4PianoLHVoice25
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment4PianoLHVoice26
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PianoLHVoice27
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PianoLHVoice28
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice29
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
								f,32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice30
						{
							{
								r8
								r2
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice31
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
								b,32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice32
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice33
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
								\ottava #-1
								<g,,, b,,, d,,>16 \p [
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
								\set stemRightBeamCount = 3
								<d, f, a,>32
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								\ottava #0
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
							}
						}
						\tag #'Segment4PianoLHVoice34
						{
							{
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<g,, b,, d, f, a,>16 \pp
									^ \markup {
										\center-align
											\flat
										}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c,16 ]
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice35
						{
							{
								r16
							}
						}
						\tag #'Segment4PianoLHVoice36
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
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
						\tag #'Segment4PianoLHVoice38
						{
							{
								r4.
								r4
								r8.
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice39
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
								c,,16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment4PianoLHVoice40
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								g,32 \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d32 ] \stopTextSpan
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
						\tag #'Segment4PianoLHVoice41
						{
							{
								r8
								r4
							}
						}
					}
					{
						\tag #'Segment4PianoLHVoice42
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
						\tag #'Segment4PianoLHVoice43
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f,16. \glissando
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
						\tag #'Segment4PianoLHVoice44
						{
							{
								r8
								r2
							}
						}
						\tag #'Segment4PianoLHVoice45
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
						\tag #'Segment4PianoLHVoice46
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
								b,,,16. [ \glissando \startTextSpan
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
						\tag #'Segment4PianoLHVoice47
						{
							{
								r16
							}
						}
						\tag #'Segment4PianoLHVoice48
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment4PianoLHVoice49
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
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals4
					{
						{
							R1 * 5/8
						}
					}
					\tag #'Segment4PianoPedals5
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals6
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals7
					{
						{
							R1 * 5/8
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
							R1 * 7/8
						}
					}
					\tag #'Segment4PianoPedals10
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals11
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals12
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment4PianoPedals13
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment4PianoPedals14
					{
						{
							R1 * 5/16
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
							R1 * 7/8
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
							R1 * 5/8
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
							R1 * 7/16
						}
					}
					\tag #'Segment4PianoPedals21
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals22
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment4PianoPedals23
					{
						{
							R1 * 7/16
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
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals26
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment4PianoPedals27
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment4PianoPedals28
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
						\tag #'Segment4PercussionShakerVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 -\staccato ]
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
								f'8 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8 -\staccato
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
								b8 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8 -\staccato ] \)
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
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PercussionShakerVoice8
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 -\staccato ]
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
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionShakerVoice11
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PercussionShakerVoice12
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice13
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice14
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
						\tag #'Segment4PercussionShakerVoice15
						{
							{
								r4.
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice16
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16 -\staccato
							}
						}
						\tag #'Segment4PercussionShakerVoice17
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice18
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
						\tag #'Segment4PercussionShakerVoice19
						{
							{
								r8.
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice20
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b16 -\staccato [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice21
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment4PercussionShakerVoice22
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
									f'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice23
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								g16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice24
						{
							{
								r8.
							}
						}
						\tag #'Segment4PercussionShakerVoice25
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
						\tag #'Segment4PercussionShakerVoice26
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice27
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice28
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice29
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 -\staccato
								b4 -\staccato
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice30
						{
							{
								r8.
								r4
							}
						}
						\tag #'Segment4PercussionShakerVoice31
						{
							{
								\afterGrace
								r16
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
						\tag #'Segment4PercussionShakerVoice32
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\afterGrace
								g4 -\staccato \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d'8 -\staccato \)
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice33
						{
							{
								r4
							}
						}
						\tag #'Segment4PercussionShakerVoice34
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionShakerVoice35
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PercussionShakerVoice36
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice37
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f'16 -\staccato [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16 -\staccato
							}
						}
						\tag #'Segment4PercussionShakerVoice38
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice39
						{
							{
								r2
							}
						}
						\tag #'Segment4PercussionShakerVoice40
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
						\tag #'Segment4PercussionShakerVoice41
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								g16 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16 -\staccato \)
							}
						}
						\tag #'Segment4PercussionShakerVoice42
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice43
						{
							{
								r8
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice44
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								b16 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f'16 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionShakerVoice45
						{
							{
								r16
							}
						}
						\tag #'Segment4PercussionShakerVoice46
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionShakerVoice47
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionShakerVoice48
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment4PercussionShakerVoice49
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
								r8.
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f8 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 -\staccato \)
							}
						}
						\tag #'Segment4PercussionWoodblockVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								a32 -\staccato
							}
						}
						\tag #'Segment4PercussionWoodblockVoice4
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								g'8 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 -\staccato \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice5
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment4PercussionWoodblockVoice6
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
						\tag #'Segment4PercussionWoodblockVoice7
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice8
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f16 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 -\staccato
							}
						}
						\tag #'Segment4PercussionWoodblockVoice9
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 -\staccato
							}
						}
						\tag #'Segment4PercussionWoodblockVoice10
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								a16 -\staccato
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
						\tag #'Segment4PercussionWoodblockVoice11
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/8
							}
						}
						\tag #'Segment4PercussionWoodblockVoice12
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PercussionWoodblockVoice13
						{
							{
								r4.
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 [ \(
									c'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice14
						{
							{
								\afterGrace
								e'4 -\staccato \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g'8 -\staccato \)
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice15
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice16
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								c'16 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice17
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice18
						{
							{
								R1 * 11/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice19
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\afterGrace
								a4 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a4 -\staccato \)
							}
						}
						\tag #'Segment4PercussionWoodblockVoice20
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								e'16 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 [ \(
									g'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c'32 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice21
						{
							{
								r8.
							}
						}
						\tag #'Segment4PercussionWoodblockVoice22
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice23
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PercussionWoodblockVoice24
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
						\tag #'Segment4PercussionWoodblockVoice25
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								g'8 -\staccato ]
							}
						}
						\tag #'Segment4PercussionWoodblockVoice26
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\afterGrace
								c'4 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f8 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice27
						{
							{
								r8.
							}
						}
						\tag #'Segment4PercussionWoodblockVoice28
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/8
							}
						}
						\tag #'Segment4PercussionWoodblockVoice29
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice30
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice31
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment4PercussionWoodblockVoice32
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
						\tag #'Segment4PercussionWoodblockVoice33
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice34
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\afterGrace
								e'4 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'4 -\staccato \)
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice35
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
						\tag #'Segment4PercussionWoodblockVoice36
						{
							{
								r4.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment4PercussionWoodblockVoice37
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g'16 -\staccato
							}
						}
						\tag #'Segment4PercussionWoodblockVoice38
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								c'16 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 [ \(
									a16 ]
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
						\tag #'Segment4PercussionWoodblockVoice39
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice40
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment4PercussionWoodblockVoice41
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
						\tag #'Segment4PercussionDrumVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 -\accent [
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
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 ]
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
						\tag #'Segment4PercussionDrumVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 :128 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 :64
							}
						}
						\tag #'Segment4PercussionDrumVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								e'8 :64
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 :64 ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice9
						{
							{
								r16
								r4.
							}
						}
						\tag #'Segment4PercussionDrumVoice10
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
						\tag #'Segment4PercussionDrumVoice11
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 :64 -\accent [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice12
						{
							{
								r16
							}
						}
						\tag #'Segment4PercussionDrumVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/8
							}
						}
						\tag #'Segment4PercussionDrumVoice14
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice15
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 :128 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								e'16 :128
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 :128 ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice16
						{
							{
								r8.
								r2
							}
						}
						\tag #'Segment4PercussionDrumVoice17
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
						\tag #'Segment4PercussionDrumVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 :64 -\accent [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 :64 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice19
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice20
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 :64 -\accent [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 :64 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice21
						{
							{
								r16
								r4.
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
								c'16 :128 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a32 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice23
						{
							{
								r8.
							}
						}
						\tag #'Segment4PercussionDrumVoice24
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment4PercussionDrumVoice25
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PercussionDrumVoice26
						{
							{
								r4.
								\afterGrace
								r8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 [ \(
									c'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice27
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\afterGrace
								e'4 :32 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a4 :32 \)
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice28
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice29
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice30
						{
							{
								r8
							}
						}
						\tag #'Segment4PercussionDrumVoice31
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/8
							}
						}
						\tag #'Segment4PercussionDrumVoice32
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice33
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/12 {
								r4
								e'4 :32
								c'4 :32
							}
						}
						\tag #'Segment4PercussionDrumVoice34
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								\afterGrace
								e'8 :64 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 :128 ] \)
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice35
						{
							{
								r4.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice36
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
								a32 ]
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
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment4PercussionDrumVoice38
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment4PercussionDrumVoice39
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
						\tag #'Segment4PercussionDrumVoice40
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment4PercussionDrumVoice41
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionDrumVoice42
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment4PercussionDrumVoice43
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment4PercussionDrumVoice44
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