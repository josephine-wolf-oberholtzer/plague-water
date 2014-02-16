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
				\time 11/16
				s1 * 11/16
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
				\time 5/16
				s1 * 5/16
			}
			{
				\time 7/16
				s1 * 7/16
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
						\tag #'Segment17aSaxophoneVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
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
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								af,32 ] \) )
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								g,8 [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8 \)
							}
						}
						\tag #'Segment17aSaxophoneVoice5
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b,16 ] )
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
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f,8 (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g,8 ] )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice9
						{
							{
								r8
								r8.
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								d,8 (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 \(
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
						\tag #'Segment17aSaxophoneVoice11
						{
							{
								r16
							}
						}
						\tag #'Segment17aSaxophoneVoice12
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
						\tag #'Segment17aSaxophoneVoice13
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice14
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								f,16 (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 [ \(
									f16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								e32 ] \) )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice15
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
						\tag #'Segment17aSaxophoneVoice16
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
							}
						}
						\tag #'Segment17aSaxophoneVoice17
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								af,16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f,16 ] \) )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice18
						{
							{
								r16
							}
						}
						\tag #'Segment17aSaxophoneVoice19
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice20
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								af,8 [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e8 )
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice21
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice22
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ] )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice23
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
						\tag #'Segment17aSaxophoneVoice24
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d,16 \) [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e8 ] )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice25
						{
							{
								r8.
								r4
							}
						}
						\tag #'Segment17aSaxophoneVoice26
						{
							{
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 [ \(
									af,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice27
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								d,8 \) [ (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f16 \)
							}
						}
						\tag #'Segment17aSaxophoneVoice28
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f,16 ] )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice29
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
						\tag #'Segment17aSaxophoneVoice30
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d,16 ] )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice31
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice32
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								bf,16 ] )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice33
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
						\tag #'Segment17aSaxophoneVoice34
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
						\tag #'Segment17aSaxophoneVoice35
						{
							{
								r8
							}
						}
						\tag #'Segment17aSaxophoneVoice36
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice37
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
								\set stemRightBeamCount = 1
								af,16
							}
						}
						\tag #'Segment17aSaxophoneVoice38
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16 )
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice39
						{
							{
								r8
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
						\tag #'Segment17aSaxophoneVoice40
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ] )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice41
						{
							{
								r16
							}
						}
						\tag #'Segment17aSaxophoneVoice42
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice43
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								ef,8 (
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
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
						\tag #'Segment17aSaxophoneVoice44
						{
							{
								r4
							}
						}
						\tag #'Segment17aSaxophoneVoice45
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice46
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								ef,8 (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d8 ] )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice47
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment17aSaxophoneVoice48
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice49
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef,16 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								c32
							}
						}
						\tag #'Segment17aSaxophoneVoice50
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ] )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice51
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
						\tag #'Segment17aSaxophoneVoice52
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
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
								\set stemRightBeamCount = 2
								cs16 \) )
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
								r8
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
						\tag #'Segment17aSaxophoneVoice54
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16 )
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice55
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice56
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f,16 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ] )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice57
						{
							{
								r4
							}
						}
						\tag #'Segment17aSaxophoneVoice58
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
						\tag #'Segment17aSaxophoneVoice59
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 \) [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8
							}
						}
						\tag #'Segment17aSaxophoneVoice60
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b,16
							}
						}
						\tag #'Segment17aSaxophoneVoice61
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
						\tag #'Segment17aSaxophoneVoice62
						{
							{
								r8
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
						\tag #'Segment17aSaxophoneVoice63
						{
							\times 2/3 {
								\afterGrace
								a,4 \) (
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
								a,8 \) )
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice64
						{
							{
								r8.
							}
						}
						\tag #'Segment17aSaxophoneVoice65
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
						\tag #'Segment17aSaxophoneVoice66
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a,8 \) [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								g,8
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
						\tag #'Segment17aSaxophoneVoice67
						{
							{
								r16
							}
						}
						\tag #'Segment17aSaxophoneVoice68
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment17aSaxophoneVoice69
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g,8 [ (
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a,8 ] )
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
						\tag #'Segment17aGuitarVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<cs'>8 -\staccato \) [
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
								b'16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af''16 -\staccato
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
								<gf f' ef''>16 -\staccato \arpeggio
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<f'>16 -\staccato ]
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
									g'16 \(
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
								<g>16 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<cf''>8 -\staccato ]
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
								af'8 -\staccato [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e''16 -\staccato ] \)
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
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aGuitarVoice15
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice16
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<gf ef''>16 -\staccato \arpeggio [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<cf''>16 -\staccato
								{
									f'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<c' bf'>16 -\staccato \)
							}
						}
						\tag #'Segment17aGuitarVoice17
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								<af>16 -\staccato
								{
									g''16 [ \(
									af''16 ]
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<ef' c'''>16 -\staccato \arpeggio ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice18
						{
							{
								r8
							}
						}
						\tag #'Segment17aGuitarVoice19
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice20
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								d''16 -\staccato [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f''16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice21
						{
							{
								\afterGrace
								r4.
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
								<g>8 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<g'>8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice23
						{
							{
								r8
								r8.
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice24
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<af>16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<af>16
								{
									b'16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<e' b' cs'''>16 -\staccato \arpeggio ] \)
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice25
						{
							{
								r16
							}
						}
						\tag #'Segment17aGuitarVoice26
						{
							{
								r8.
								\afterGrace
								r8
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
						\tag #'Segment17aGuitarVoice27
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								e'16 -\staccato \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d''16 -\staccato \)
								\ottava #0
							}
						}
						\tag #'Segment17aGuitarVoice28
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								e'16 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d''16 -\staccato \)
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
								e''16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f'16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice30
						{
							{
								r16
							}
						}
						\tag #'Segment17aGuitarVoice31
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice32
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<ff' eff''>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice33
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment17aGuitarVoice34
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice35
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<cf'>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<ds'>16 -\staccato
							}
						}
						\tag #'Segment17aGuitarVoice36
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<cf' af''>8 -\staccato \arpeggio
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<d'>16 -\staccato ]
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
								r8
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice39
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #1
								<d' a' b''>8 -\staccato \arpeggio ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<d' a' b''>8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<cf'' bff''>8 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice40
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice41
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
								\set stemRightBeamCount = 3
								c''32 -\staccato \)
								\ottava #0
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice42
						{
							{
								\afterGrace
								r2
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
						\tag #'Segment17aGuitarVoice43
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<e'>16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<g'>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice44
						{
							{
								r16
							}
						}
						\tag #'Segment17aGuitarVoice45
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice46
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								d''16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								ef''16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice47
						{
							{
								r16
								\afterGrace
								r2
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
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
								\set stemRightBeamCount = 2
								<e'>16 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b'8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice49
						{
							{
								r4
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
						\tag #'Segment17aGuitarVoice50
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								cs''8 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b'16 -\staccato ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice51
						{
							{
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
						\tag #'Segment17aGuitarVoice52
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<e'>16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<cs'>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<af>16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice53
						{
							{
								r16
							}
						}
						\tag #'Segment17aGuitarVoice54
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
						\tag #'Segment17aGuitarVoice55
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
								\set stemRightBeamCount = 0
								a'16 -\staccato ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice56
						{
							{
								r4
								r4
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice57
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								g'16 -\staccato [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17aGuitarVoice58
						{
							{
								r8
							}
						}
						\tag #'Segment17aGuitarVoice59
						{
							{
								r16
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
								g'16 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								a'32 -\staccato \)
							}
						}
						\tag #'Segment17aGuitarVoice61
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								g'8 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a'8 -\staccato \)
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
								r8.
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
						\tag #'Segment17aGuitarVoice64
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								a'16 -\staccato \) [
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
								<c'>16 -\staccato ] \)
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
						\tag #'Segment17aPianoRHVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #2
								\clef treble
								f'''16 \p [
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
								\set stemRightBeamCount = 2
								\ottava #1
								d''''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoRHVoice12
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a'''16 \glissando
							}
						}
						\tag #'Segment17aPianoRHVoice13
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'''8 \glissando
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
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPianoRHVoice16
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice17
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
								<e''' g''' b''' d''''>8 \p [ \startTrillSpan g''''
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
								\set stemLeftBeamCount = 1
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
						\tag #'Segment17aPianoRHVoice18
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoRHVoice19
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice20
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
						\tag #'Segment17aPianoRHVoice21
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c''''16. \glissando
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
						\tag #'Segment17aPianoRHVoice22
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice23
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
								a'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoRHVoice24
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
						\tag #'Segment17aPianoRHVoice25
						{
							{
								r16
							}
						}
						\tag #'Segment17aPianoRHVoice26
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice27
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
								b'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoRHVoice28
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c''''16. \glissando
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
						\tag #'Segment17aPianoRHVoice29
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoRHVoice30
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
						\tag #'Segment17aPianoRHVoice31
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice32
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
						\tag #'Segment17aPianoRHVoice33
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice34
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
						\tag #'Segment17aPianoRHVoice35
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
						\tag #'Segment17aPianoRHVoice36
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoRHVoice37
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice38
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
						\tag #'Segment17aPianoRHVoice39
						{
							{
								r4.
							}
						}
						\tag #'Segment17aPianoRHVoice40
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice41
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
								<d''' f''' a'''>16 \p [
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
								<g''' b''' d''''>16 ]
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
						\tag #'Segment17aPianoRHVoice42
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment17aPianoRHVoice43
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
						\tag #'Segment17aPianoRHVoice44
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice45
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
						\tag #'Segment17aPianoRHVoice46
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice47
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
						\tag #'Segment17aPianoRHVoice48
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice49
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
						\tag #'Segment17aPianoRHVoice50
						{
							{
								r2
							}
						}
						\tag #'Segment17aPianoRHVoice51
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPianoRHVoice52
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPianoRHVoice53
						{
							{
								r4
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
						\tag #'Segment17aPianoRHVoice55
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice56
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
						\tag #'Segment17aPianoRHVoice57
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b'''16 \glissando
							}
						}
						\tag #'Segment17aPianoRHVoice58
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c''''32 \glissando
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
						\tag #'Segment17aPianoRHVoice59
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoRHVoice60
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoRHVoice61
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
						\tag #'Segment17aPianoRHVoice62
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoRHVoice63
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
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment17aPianoLHVoice1
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
								R1 * 3/16
							}
						}
						\tag #'Segment17aPianoLHVoice10
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment17aPianoLHVoice11
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPianoLHVoice12
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice13
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
						\tag #'Segment17aPianoLHVoice14
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g,,8 \glissando
							}
						}
						\tag #'Segment17aPianoLHVoice15
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d,,16. \glissando
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
						\tag #'Segment17aPianoLHVoice16
						{
							{
								r4.
								r8.
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
								f,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoLHVoice18
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b,,16. \glissando
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
						\tag #'Segment17aPianoLHVoice19
						{
							{
								r16
							}
						}
						\tag #'Segment17aPianoLHVoice20
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
						\tag #'Segment17aPianoLHVoice21
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice22
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
						\tag #'Segment17aPianoLHVoice23
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
						\tag #'Segment17aPianoLHVoice24
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
						\tag #'Segment17aPianoLHVoice25
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice26
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
								d,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoLHVoice27
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f,,16. \glissando
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
						\tag #'Segment17aPianoLHVoice28
						{
							{
								r4.
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
						\tag #'Segment17aPianoLHVoice30
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoLHVoice31
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
						\tag #'Segment17aPianoLHVoice32
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
								\ottava #-1
								<e,,, g,,, b,,, d,, f,,>8 \p [
									^ \markup {
										\center-align
											\flat
										}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d,16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice33
						{
							{
								r16
							}
						}
						\tag #'Segment17aPianoLHVoice34
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
						\tag #'Segment17aPianoLHVoice35
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice36
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
								g,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoLHVoice37
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
						\tag #'Segment17aPianoLHVoice38
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment17aPianoLHVoice39
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice40
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
								cs,,16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment17aPianoLHVoice41
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								b,,32 \glissando
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
						\tag #'Segment17aPianoLHVoice42
						{
							{
								r8
							}
						}
						\tag #'Segment17aPianoLHVoice43
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment17aPianoLHVoice44
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
								\ottava #-2
								a,,,16. [ \glissando \startTextSpan
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
						\tag #'Segment17aPianoLHVoice45
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment17aPianoLHVoice46
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPianoLHVoice47
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment17aPianoLHVoice48
						{
							{
								R1 * 7/16
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
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals6
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17aPianoPedals7
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17aPianoPedals8
					{
						{
							R1 * 11/16
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
							R1 * 7/16
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
							R1 * 7/8
						}
					}
					\tag #'Segment17aPianoPedals13
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17aPianoPedals14
					{
						{
							R1 * 5/8
						}
					}
					\tag #'Segment17aPianoPedals15
					{
						{
							R1 * 5/8
						}
					}
					\tag #'Segment17aPianoPedals16
					{
						{
							R1 * 3/16
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
							R1 * 7/8
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
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals21
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment17aPianoPedals22
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment17aPianoPedals23
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment17aPianoPedals24
					{
						{
							R1 * 7/16
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
						\tag #'Segment17aPercussionShakerVoice2
						{
							{
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
						\tag #'Segment17aPercussionShakerVoice3
						{
							{
								r8
								r4
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
						\tag #'Segment17aPercussionShakerVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 -\staccato ]
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
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d'8 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8 -\staccato
							}
						}
						\tag #'Segment17aPercussionShakerVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16 -\staccato
							}
						}
						\tag #'Segment17aPercussionShakerVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice11
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionShakerVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17aPercussionShakerVoice13
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPercussionShakerVoice14
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice15
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								b8 -\staccato [
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
						\tag #'Segment17aPercussionShakerVoice16
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment17aPercussionShakerVoice17
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
						\tag #'Segment17aPercussionShakerVoice18
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice19
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								g4 -\staccato
								b4 -\staccato
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice20
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
						\tag #'Segment17aPercussionShakerVoice21
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice22
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
								\set stemRightBeamCount = 0
								f'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice23
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment17aPercussionShakerVoice24
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
						\tag #'Segment17aPercussionShakerVoice25
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice26
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 -\staccato [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8 -\staccato
							}
						}
						\tag #'Segment17aPercussionShakerVoice27
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8 -\staccato
							}
						}
						\tag #'Segment17aPercussionShakerVoice28
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8 -\staccato ~
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8 -\staccato
							}
						}
						\tag #'Segment17aPercussionShakerVoice29
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice30
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionShakerVoice31
						{
							{
								r4.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice32
						{
							\times 2/3 {
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
						\tag #'Segment17aPercussionShakerVoice33
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment17aPercussionShakerVoice34
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice35
						{
							{
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
						\tag #'Segment17aPercussionShakerVoice36
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
						\tag #'Segment17aPercussionShakerVoice37
						{
							{
								r4
								r4
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice38
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								d'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 [ \(
									g16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16 -\staccato \)
							}
						}
						\tag #'Segment17aPercussionShakerVoice39
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
								\set stemRightBeamCount = 2
								g16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice40
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
						\tag #'Segment17aPercussionShakerVoice41
						{
							{
								\afterGrace
								r8
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
						\tag #'Segment17aPercussionShakerVoice42
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f'16 -\staccato \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								g32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionShakerVoice43
						{
							{
								r16
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
						\tag #'Segment17aPercussionWoodblockVoice1
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
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g'16 -\staccato
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice3
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								r16 ]
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice4
						{
							{
								\afterGrace
								a4 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'4 -\staccato \)
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice5
						{
							{
								r4
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice6
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice7
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice8
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice9
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice10
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice11
						{
							{
								\afterGrace
								e'4 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'4 -\staccato \)
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice12
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
						\tag #'Segment17aPercussionWoodblockVoice13
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice14
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
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
						\tag #'Segment17aPercussionWoodblockVoice15
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice16
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
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
						\tag #'Segment17aPercussionWoodblockVoice17
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
						\tag #'Segment17aPercussionWoodblockVoice18
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice19
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 -\staccato ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								f16
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
						\tag #'Segment17aPercussionWoodblockVoice20
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice21
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
						\tag #'Segment17aPercussionWoodblockVoice22
						{
							{
								\afterGrace
								r4.
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
						\tag #'Segment17aPercussionWoodblockVoice23
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								g'8 -\staccato \) [
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
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice24
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice25
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice26
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
						\tag #'Segment17aPercussionWoodblockVoice27
						{
							{
								\afterGrace
								r4.
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
						\tag #'Segment17aPercussionWoodblockVoice28
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 -\staccato \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice29
						{
							{
								r8
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice30
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice31
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice32
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17aPercussionWoodblockVoice33
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f16 -\staccato
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice34
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
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
								\set stemRightBeamCount = 1
								e'8 -\staccato \)
							}
						}
						\tag #'Segment17aPercussionWoodblockVoice35
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								a8 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g'16 [ \(
									c'16 ]
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
						\tag #'Segment17aPercussionWoodblockVoice36
						{
							{
								r16
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
						\tag #'Segment17aPercussionDrumVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 :64 -\accent
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 :64 ]
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
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 :128 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 :128 ]
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
								R1 * 7/8
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
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16 :128 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16 :128
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e'16
							}
						}
						\tag #'Segment17aPercussionDrumVoice8
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c'16
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
						\tag #'Segment17aPercussionDrumVoice9
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionDrumVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment17aPercussionDrumVoice11
						{
							{
								R1 * 5/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 :128 -\accent [
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
						\tag #'Segment17aPercussionDrumVoice13
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment17aPercussionDrumVoice14
						{
							{
								\afterGrace
								r8
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
						\tag #'Segment17aPercussionDrumVoice15
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 :64 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 :64
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								r8 ]
							}
						}
						\tag #'Segment17aPercussionDrumVoice16
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\afterGrace
								c'4 :32
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'4 :32 \)
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice17
						{
							{
								r16
							}
						}
						\tag #'Segment17aPercussionDrumVoice18
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
						\tag #'Segment17aPercussionDrumVoice19
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice20
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
								a16
							}
						}
						\tag #'Segment17aPercussionDrumVoice21
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 :128 -\accent ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 :128
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 :128 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice22
						{
							{
								r8
								r4
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice23
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 :64 -\accent
								a4 :32
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice24
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
						\tag #'Segment17aPercussionDrumVoice25
						{
							\times 2/3 {
								c'4 :32
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 :64
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice26
						{
							{
								r4.
							}
						}
						\tag #'Segment17aPercussionDrumVoice27
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice28
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 -\accent [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice29
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionDrumVoice30
						{
							{
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
						\tag #'Segment17aPercussionDrumVoice31
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/8 {
								\afterGrace
								a4 :32 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 [ \(
									c'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								e'4 :32 \)
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice32
						{
							{
								r8.
								r4
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
					}
					{
						\tag #'Segment17aPercussionDrumVoice35
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 :64 -\accent [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 :64 ]
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice36
						{
							{
								r8.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment17aPercussionDrumVoice37
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
						\tag #'Segment17aPercussionDrumVoice38
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment17aPercussionDrumVoice39
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment17aPercussionDrumVoice40
						{
							{
								R1 * 7/16
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