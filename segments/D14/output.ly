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
				\mark \markup { \override #'(box-padding . 0.5) \box 14 }
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
				s1 * 7/16
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
				\time 7/16
				s1 * 7/16
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
				s1 * 5/16
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
				\time 5/16
				s1 * 5/16
			}
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						\tag #'Segment14SaxophoneVoice1
						{
							{
								\afterGrace
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
						\tag #'Segment14SaxophoneVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g,8 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice4
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice5
						{
							\times 2/3 {
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
						\tag #'Segment14SaxophoneVoice6
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f,16 [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g,8 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice8
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment14SaxophoneVoice9
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
						\tag #'Segment14SaxophoneVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								b,8 \) [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 [ \(
									af,16 ]
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
						\tag #'Segment14SaxophoneVoice11
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
						\tag #'Segment14SaxophoneVoice12
						{
							{
								\afterGrace
								r8
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
						\tag #'Segment14SaxophoneVoice13
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f,16 \) [ (
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
						\tag #'Segment14SaxophoneVoice14
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice15
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice16
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								e,8 [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d8 ] \) )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice17
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment14SaxophoneVoice18
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice19
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e,8 [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8
							}
						}
						\tag #'Segment14SaxophoneVoice20
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								af,16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e,32 \) )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice21
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment14SaxophoneVoice22
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice23
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e,16 ~ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af,16
							}
						}
						\tag #'Segment14SaxophoneVoice24
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								d,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 [ \(
									af,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d,8 \) )
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice25
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice26
						{
							{
								\afterGrace
								r8.
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
						\tag #'Segment14SaxophoneVoice27
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f,8 \) [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af,8 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice28
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice29
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice30
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
						\tag #'Segment14SaxophoneVoice31
						{
							{
								r8
								r4
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice32
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								f,16 (
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
						\tag #'Segment14SaxophoneVoice33
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
						\tag #'Segment14SaxophoneVoice34
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice35
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16 ~ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice36
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice37
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								bf,16 [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32 \) )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice38
						{
							{
								r16
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
						\tag #'Segment14SaxophoneVoice39
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice40
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								cs,8
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
						\tag #'Segment14SaxophoneVoice41
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice42
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
						\tag #'Segment14SaxophoneVoice43
						{
							{
								r4
							}
						}
						\tag #'Segment14SaxophoneVoice44
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice45
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								af,16 [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c8 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice46
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
						\tag #'Segment14SaxophoneVoice47
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c,8 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								ef16 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice48
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice49
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								b,16 [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								c16 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 [ \(
									b,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c,16 ] \) )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice50
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
						\tag #'Segment14SaxophoneVoice51
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
						\tag #'Segment14SaxophoneVoice52
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								ef16 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice53
						{
							{
								r8
							}
						}
						\tag #'Segment14SaxophoneVoice54
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
						\tag #'Segment14SaxophoneVoice55
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								cs,8 \) [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8
							}
						}
						\tag #'Segment14SaxophoneVoice56
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f,32 )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice57
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice58
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f,16 ~ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								f,16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs16 ] \) )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice59
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
									af,16 [ \(
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
						\tag #'Segment14SaxophoneVoice60
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
								\set stemRightBeamCount = 0
								cs16 ] \) )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice61
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice62
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice63
						{
							{
								r4
							}
						}
						\tag #'Segment14SaxophoneVoice64
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice65
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8 (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8
							}
						}
						\tag #'Segment14SaxophoneVoice66
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								d,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs,16 \)
							}
						}
						\tag #'Segment14SaxophoneVoice67
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f,16 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice68
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice69
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								ef32 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice70
						{
							{
								r8
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
						\tag #'Segment14SaxophoneVoice71
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								cs,16 \) [ (
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
								cs32 \) )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice72
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice73
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
						\tag #'Segment14SaxophoneVoice74
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a,8 \) [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8 )
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice75
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice76
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
						\tag #'Segment14SaxophoneVoice77
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a,16 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g,16 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice78
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice79
						{
							{
								\afterGrace
								r4.
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
						\tag #'Segment14SaxophoneVoice80
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a,16 \) [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g,8 ] )
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice81
						{
							{
								r8
							}
						}
						\tag #'Segment14SaxophoneVoice82
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14SaxophoneVoice83
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14SaxophoneVoice84
						{
							{
								R1 * 5/16
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
						\tag #'Segment14GuitarVoice1
						{
							{
								\afterGrace
								r8
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
						\tag #'Segment14GuitarVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<bf>8 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<af'>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice3
						{
							{
								r4
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
						\tag #'Segment14GuitarVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b'16 -\staccato \) [
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
						\tag #'Segment14GuitarVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice6
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<gf f' ef''>16 -\staccato \arpeggio
								{
									b''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<af'>16 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice8
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<a>16 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<af'>8 -\staccato
							}
						}
						\tag #'Segment14GuitarVoice10
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								<f' d'''>16 -\staccato \arpeggio
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
						\tag #'Segment14GuitarVoice11
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice12
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice13
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								d''8 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice14
						{
							{
								r4.
								\afterGrace
								r8.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 [ \(
									af'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice15
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
								<af f''>16 -\staccato \arpeggio ]
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice16
						{
							{
								r8.
							}
						}
						\tag #'Segment14GuitarVoice17
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\ottava #1
								af'4 -\staccato
								d''4 -\staccato
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice19
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice20
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
						\tag #'Segment14GuitarVoice21
						{
							{
								\afterGrace
								r8
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
						\tag #'Segment14GuitarVoice22
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<e'>8 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<af'>8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice23
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice24
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								<d' cs'' b''>16 -\staccato \arpeggio
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<f'>32 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice25
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
						\tag #'Segment14GuitarVoice26
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice27
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								<f'>4 -\staccato
								<g d' e''>4 -\staccato \arpeggio
							}
						}
						\tag #'Segment14GuitarVoice28
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								<ff' eff''>16 -\staccato
								{
									b'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice29
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice30
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								e''16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f''16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice31
						{
							{
								r8
							}
						}
						\tag #'Segment14GuitarVoice32
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
						\tag #'Segment14GuitarVoice33
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								<ef'>8 -\staccato
								{
									af''16 [ \(
									b''16 ]
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<d'>8 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice34
						{
							{
								r8
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice35
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<cf' af''>16 -\staccato \arpeggio ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<cf' af''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<bf'>16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice36
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
						\tag #'Segment14GuitarVoice37
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
						\tag #'Segment14GuitarVoice38
						{
							{
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
						\tag #'Segment14GuitarVoice39
						{
							{
								r16
								\afterGrace
								r2
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
						\tag #'Segment14GuitarVoice40
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<ds' as' bs''>16 -\staccato \arpeggio \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<c'' bf''>16 -\staccato
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice41
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice42
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice43
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								c''8 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c''8 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice44
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice45
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								<e'>16 -\staccato [
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c''8 -\staccato \)
							}
						}
						\tag #'Segment14GuitarVoice46
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								ef''16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<e'>16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice47
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice48
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
						\tag #'Segment14GuitarVoice49
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice50
						{
							\times 2/3 {
								\ottava #1
								\afterGrace
								<d'>4 -\staccato
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<ds'>8 -\staccato \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice51
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice52
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								d''16 -\staccato [
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
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b'16 -\staccato
								\ottava #0
							}
						}
						\tag #'Segment14GuitarVoice53
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								d''16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b''16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice54
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
						\tag #'Segment14GuitarVoice55
						{
							{
								r8.
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
						\tag #'Segment14GuitarVoice56
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<e'>16 -\staccato \) [
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice57
						{
							{
								r4
							}
						}
						\tag #'Segment14GuitarVoice58
						{
							{
								r8.
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
						\tag #'Segment14GuitarVoice59
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								cs''16 -\staccato \) [
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
						\tag #'Segment14GuitarVoice60
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice61
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #1
								c''8 -\staccato ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c''8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs''8 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice62
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
						\tag #'Segment14GuitarVoice63
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<c'>16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<cs''>16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice64
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice65
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
						\tag #'Segment14GuitarVoice66
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice67
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								a'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g''16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice68
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice69
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
						\tag #'Segment14GuitarVoice70
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice71
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<bf>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a''16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice72
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice73
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								a'16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g''16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice74
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14GuitarVoice75
						{
							{
								R1 * 5/16
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
						\tag #'Segment14PianoRHVoice1
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
						\tag #'Segment14PianoRHVoice2
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice3
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
								\clef treble
								a'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice4
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
						\tag #'Segment14PianoRHVoice5
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice6
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
								c''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice7
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
						\tag #'Segment14PianoRHVoice8
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
						\tag #'Segment14PianoRHVoice9
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice10
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
								cs''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice11
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
						\tag #'Segment14PianoRHVoice12
						{
							{
								r8.
							}
						}
						\tag #'Segment14PianoRHVoice13
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
						\tag #'Segment14PianoRHVoice14
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice15
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
						\tag #'Segment14PianoRHVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d''''8 \glissando
							}
						}
						\tag #'Segment14PianoRHVoice17
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a'''16. \glissando
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
						\tag #'Segment14PianoRHVoice18
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice19
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
						\tag #'Segment14PianoRHVoice20
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice21
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
						\tag #'Segment14PianoRHVoice22
						{
							{
								r4.
							}
						}
						\tag #'Segment14PianoRHVoice23
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice24
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
								\ottava #2
								<a''' c'''' e'''' g''''>8 \p [
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
								<c'''' e'''' g''''>16 ]
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
						\tag #'Segment14PianoRHVoice25
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
						\tag #'Segment14PianoRHVoice26
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice27
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
								f'''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice28
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs''''32 \glissando
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
						\tag #'Segment14PianoRHVoice29
						{
							{
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice30
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
						\tag #'Segment14PianoRHVoice31
						{
							{
								r16
							}
						}
						\tag #'Segment14PianoRHVoice32
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice33
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
						\tag #'Segment14PianoRHVoice34
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
						\tag #'Segment14PianoRHVoice35
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment14PianoRHVoice36
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoRHVoice37
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice38
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
						\tag #'Segment14PianoRHVoice39
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
						\tag #'Segment14PianoRHVoice40
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice41
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
						\tag #'Segment14PianoRHVoice42
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoRHVoice43
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice44
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
						\tag #'Segment14PianoRHVoice45
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								g''''32 \glissando
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
						\tag #'Segment14PianoRHVoice46
						{
							{
								r16
								r4
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice47
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
								\ottava #2
								<g''' b''' d'''' f'''' a''''>16 \p
									^ \markup {
										\center-align
											\flat
										}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f''''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice48
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoRHVoice49
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoRHVoice50
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice51
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
								c''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice52
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d''''16. \glissando
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
						\tag #'Segment14PianoRHVoice53
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice54
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
						\tag #'Segment14PianoRHVoice55
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice56
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
						\tag #'Segment14PianoRHVoice57
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a'''16 \glissando
							}
						}
						\tag #'Segment14PianoRHVoice58
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'''16 \glissando
							}
						}
						\tag #'Segment14PianoRHVoice59
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b'''16. \glissando
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
						\tag #'Segment14PianoRHVoice60
						{
							{
								r4..
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice61
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
								\ottava #2
								<a''' c'''' e'''' g''''>16 \p
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
								<c'''' e'''' g''''>16 ]
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
						\tag #'Segment14PianoRHVoice62
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
						\tag #'Segment14PianoRHVoice63
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice64
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
						\tag #'Segment14PianoRHVoice65
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
						\tag #'Segment14PianoRHVoice66
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice67
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
						\tag #'Segment14PianoRHVoice68
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c''''16. \glissando
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
						\tag #'Segment14PianoRHVoice69
						{
							{
								r16
							}
						}
						\tag #'Segment14PianoRHVoice70
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice71
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
								f'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice72
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs''''8 \glissando
							}
						}
						\tag #'Segment14PianoRHVoice73
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
						\tag #'Segment14PianoRHVoice74
						{
							{
								r16
							}
						}
						\tag #'Segment14PianoRHVoice75
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment14PianoRHVoice76
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoRHVoice77
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice78
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								a'''16 \p [
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<e'''' g'''' b''''>16 ]
									^ \markup {
										\center-align
											\natural
										}
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice79
						{
							{
								r4
							}
						}
						\tag #'Segment14PianoRHVoice80
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoRHVoice81
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoRHVoice82
						{
							{
								R1 * 5/16
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
						\tag #'Segment14PianoLHVoice1
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
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice2
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
						\tag #'Segment14PianoLHVoice3
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g,,16. \glissando
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
						\tag #'Segment14PianoLHVoice4
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoLHVoice5
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice6
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
								\ottava #-2
								b,,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoLHVoice7
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
						\tag #'Segment14PianoLHVoice8
						{
							{
								r16
							}
						}
						\tag #'Segment14PianoLHVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice10
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice11
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment14PianoLHVoice12
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoLHVoice13
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice14
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
						\tag #'Segment14PianoLHVoice15
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
						\tag #'Segment14PianoLHVoice16
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment14PianoLHVoice17
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice18
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
						\tag #'Segment14PianoLHVoice19
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,,8 \glissando
							}
						}
						\tag #'Segment14PianoLHVoice20
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c,,16. \glissando
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
						\tag #'Segment14PianoLHVoice21
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
						\tag #'Segment14PianoLHVoice22
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice23
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
								d,,16. [ \glissando \startTextSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a,,32 ] \stopTextSpan
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
						\tag #'Segment14PianoLHVoice24
						{
							{
								r8
								r2
							}
						}
						\tag #'Segment14PianoLHVoice25
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice26
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment14PianoLHVoice27
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoLHVoice28
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice29
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
						\tag #'Segment14PianoLHVoice30
						{
							{
								r8.
							}
						}
						\tag #'Segment14PianoLHVoice31
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
						\tag #'Segment14PianoLHVoice32
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice33
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
						\tag #'Segment14PianoLHVoice34
						{
							{
								r16
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice35
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
								<a,,, c,, e,,>16 \p [
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
								<g,, b,, d,>16 ]
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
						\tag #'Segment14PianoLHVoice36
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice37
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoLHVoice38
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice39
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
								\ottava #-2
								a,,,16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoLHVoice40
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
						\tag #'Segment14PianoLHVoice41
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoLHVoice42
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice43
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
						\tag #'Segment14PianoLHVoice44
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g,,16 \glissando
							}
						}
						\tag #'Segment14PianoLHVoice45
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								a,,,32 \glissando
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
						\tag #'Segment14PianoLHVoice46
						{
							{
								r16
								r4
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice47
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
						\tag #'Segment14PianoLHVoice48
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs,16. \glissando
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
						\tag #'Segment14PianoLHVoice49
						{
							{
								r16
							}
						}
						\tag #'Segment14PianoLHVoice50
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
						\tag #'Segment14PianoLHVoice51
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
								<a,,, c,, e,,>16 \p [
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
								<a,, c, e,>32
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
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice52
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment14PianoLHVoice53
						{
							{
								r4.
								r4
								r8.
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice54
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
								b,,,16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoLHVoice55
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
						\tag #'Segment14PianoLHVoice56
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoLHVoice57
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice58
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice59
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
						\tag #'Segment14PianoLHVoice60
						{
							{
								r8.
							}
						}
						\tag #'Segment14PianoLHVoice61
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice62
						{
							{
								R1 * 5/8
							}
						}
						\tag #'Segment14PianoLHVoice63
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice64
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice65
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment14PianoPedals1
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals2
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals3
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals4
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals5
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment14PianoPedals6
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals7
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment14PianoPedals8
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment14PianoPedals9
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment14PianoPedals10
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment14PianoPedals11
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals12
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals13
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment14PianoPedals14
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment14PianoPedals15
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals16
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals17
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals18
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals19
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals20
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals21
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals22
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment14PianoPedals23
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals24
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals25
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment14PianoPedals26
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment14PianoPedals27
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals28
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals29
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals30
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment14PianoPedals31
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment14PianoPedals32
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals33
					{
						{
							R1 * 5/8
						}
					}
					\tag #'Segment14PianoPedals34
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals35
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals36
					{
						{
							R1 * 5/16
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
						\tag #'Segment14PercussionShakerVoice1
						{
							{
								\afterGrace
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
						\tag #'Segment14PercussionShakerVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b16 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice3
						{
							{
								r8.
								r8.
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice4
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
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice5
						{
							{
								r8
							}
						}
						\tag #'Segment14PercussionShakerVoice6
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment14PercussionShakerVoice7
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d'16 -\staccato [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g16 -\staccato
							}
						}
						\tag #'Segment14PercussionShakerVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
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
						\tag #'Segment14PercussionShakerVoice10
						{
							{
								r8.
							}
						}
						\tag #'Segment14PercussionShakerVoice11
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f'8 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
							}
						}
						\tag #'Segment14PercussionShakerVoice14
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice15
						{
							{
								b4 -\staccato
								d'4 -\staccato
							}
						}
						\tag #'Segment14PercussionShakerVoice16
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								f'8 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								r16 ]
							}
						}
						\tag #'Segment14PercussionShakerVoice17
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								b4 -\staccato
								d'4 -\staccato
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice18
						{
							{
								r8
							}
						}
						\tag #'Segment14PercussionShakerVoice19
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment14PercussionShakerVoice20
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionShakerVoice21
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionShakerVoice22
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice23
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice24
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionShakerVoice25
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
						\tag #'Segment14PercussionShakerVoice26
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice27
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b16 -\staccato [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16 -\staccato
							}
						}
						\tag #'Segment14PercussionShakerVoice28
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice29
						{
							{
								r8
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice30
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
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
						\tag #'Segment14PercussionShakerVoice31
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionShakerVoice32
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionShakerVoice33
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionShakerVoice34
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice35
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g16 -\staccato
							}
						}
						\tag #'Segment14PercussionShakerVoice36
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16 -\staccato
							}
						}
						\tag #'Segment14PercussionShakerVoice37
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice38
						{
							{
								r8
							}
						}
						\tag #'Segment14PercussionShakerVoice39
						{
							{
								r4.
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice40
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								b16 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f'32 -\staccato ] \)
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice41
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionShakerVoice42
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
						\tag #'Segment14PercussionShakerVoice43
						{
							{
								r8.
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 [ \(
									b16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice44
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								d'8 -\staccato \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice45
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment14PercussionShakerVoice46
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
						\tag #'Segment14PercussionShakerVoice47
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice48
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b8 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice49
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionShakerVoice50
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionShakerVoice51
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionShakerVoice52
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice53
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice54
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionShakerVoice55
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionShakerVoice56
						{
							{
								R1 * 5/8
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice57
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b16 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice58
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionShakerVoice59
						{
							{
								R1 * 5/16
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
						\tag #'Segment14PercussionWoodblockVoice1
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
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								f16 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 \(
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
						\tag #'Segment14PercussionWoodblockVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment14PercussionWoodblockVoice4
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionWoodblockVoice5
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice6
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								a32 -\staccato
							}
						}
						\tag #'Segment14PercussionWoodblockVoice7
						{
							\times 2/3 {
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
								f8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice8
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice9
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment14PercussionWoodblockVoice10
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice11
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\afterGrace
								c'4 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice12
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 11/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice14
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionWoodblockVoice15
						{
							{
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 [ \(
									e'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice16
						{
							\times 2/3 {
								\afterGrace
								f4 -\staccato \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'4 -\staccato \)
								r4
							}
						}
						\tag #'Segment14PercussionWoodblockVoice17
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								e'8 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 -\staccato
							}
						}
						\tag #'Segment14PercussionWoodblockVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
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
								\set stemRightBeamCount = 2
								e'16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice19
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice20
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionWoodblockVoice21
						{
							{
								r4.
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice22
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16 -\staccato
							}
						}
						\tag #'Segment14PercussionWoodblockVoice23
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice24
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment14PercussionWoodblockVoice25
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionWoodblockVoice26
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice27
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
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
								f4 -\staccato \)
							}
						}
						\tag #'Segment14PercussionWoodblockVoice28
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\afterGrace
								g'4 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 [ \(
									e'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a4 -\staccato \)
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice29
						{
							{
								r8
							}
						}
						\tag #'Segment14PercussionWoodblockVoice30
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice31
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice32
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionWoodblockVoice33
						{
							{
								r4.
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
						\tag #'Segment14PercussionWoodblockVoice34
						{
							{
								c'4 -\staccato \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 -\staccato
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice35
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice36
						{
							{
								R1 * 11/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionWoodblockVoice37
						{
							{
								\afterGrace
								r8
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
						\tag #'Segment14PercussionWoodblockVoice38
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice39
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
						\tag #'Segment14PercussionWoodblockVoice40
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\afterGrace
								e'4 -\staccato \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 [ \(
									g'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'4 -\staccato \)
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice41
						{
							{
								r2
							}
						}
						\tag #'Segment14PercussionWoodblockVoice42
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice43
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice44
						{
							{
								\afterGrace
								R1 * 5/16
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
						\tag #'Segment14PercussionWoodblockVoice45
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								a4 -\staccato \)
								g'4 -\staccato
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice46
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice47
						{
							{
								R1 * 5/8
							}
						}
						\tag #'Segment14PercussionWoodblockVoice48
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice49
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice50
						{
							{
								R1 * 5/16
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
						\tag #'Segment14PercussionDrumVoice1
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
						\tag #'Segment14PercussionDrumVoice2
						{
							{
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
						\tag #'Segment14PercussionDrumVoice3
						{
							{
								r16
								r2
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 :128 -\accent ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 :128
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 :128 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice5
						{
							{
								r8
								r2
							}
						}
						\tag #'Segment14PercussionDrumVoice6
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionDrumVoice7
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionDrumVoice8
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
						\tag #'Segment14PercussionDrumVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 :64 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 :64
							}
						}
						\tag #'Segment14PercussionDrumVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
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
								\set stemRightBeamCount = 1
								e'8 :64 \)
							}
						}
						\tag #'Segment14PercussionDrumVoice11
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 :64 ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 :64
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 :64 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice12
						{
							{
								r4
							}
						}
						\tag #'Segment14PercussionDrumVoice13
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
						\tag #'Segment14PercussionDrumVoice14
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice15
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16
							}
						}
						\tag #'Segment14PercussionDrumVoice16
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e'16 -\accent
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 :64 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice17
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionDrumVoice18
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
						\tag #'Segment14PercussionDrumVoice19
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice20
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 :64
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 :64 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice21
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionDrumVoice22
						{
							{
								r4.
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice23
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 :128 -\accent ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 :128
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice24
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
						\tag #'Segment14PercussionDrumVoice25
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice26
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 :64 -\accent [
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
						\tag #'Segment14PercussionDrumVoice27
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
						\tag #'Segment14PercussionDrumVoice28
						{
							{
								r4.
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
						\tag #'Segment14PercussionDrumVoice29
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/12 {
								\afterGrace
								c'4 :32 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 [ \(
									a16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								a4 :32 \)
								r4
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice30
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice31
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16
							}
						}
						\tag #'Segment14PercussionDrumVoice32
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 :64 ~
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
						\tag #'Segment14PercussionDrumVoice33
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment14PercussionDrumVoice34
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionDrumVoice35
						{
							{
								R1 * 7/8
							}
						}
						\tag #'Segment14PercussionDrumVoice36
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice37
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								c'16 :128 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 :64 ] \)
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice38
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
						\tag #'Segment14PercussionDrumVoice39
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice40
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
						\tag #'Segment14PercussionDrumVoice41
						{
							{
								r8.
							}
						}
						\tag #'Segment14PercussionDrumVoice42
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
						\tag #'Segment14PercussionDrumVoice43
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice44
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 :128 -\accent [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16 :128
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16 :128
							}
						}
						\tag #'Segment14PercussionDrumVoice45
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
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
						\tag #'Segment14PercussionDrumVoice46
						{
							{
								r4
							}
						}
						\tag #'Segment14PercussionDrumVoice47
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
						\tag #'Segment14PercussionDrumVoice48
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice49
						{
							{
								a4 :32
								e'4 :32
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice50
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionDrumVoice51
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionDrumVoice52
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionDrumVoice53
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice54
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 :128 -\accent [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 :128 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice55
						{
							{
								r8.
							}
						}
						\tag #'Segment14PercussionDrumVoice56
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionDrumVoice57
						{
							{
								R1 * 5/8
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice58
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 :128 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 :128
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e'16
							}
						}
						\tag #'Segment14PercussionDrumVoice59
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								a16 :128
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 :128 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice60
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
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