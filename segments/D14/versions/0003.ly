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
				\time 11/16
				s1 * 11/16
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
				\time 7/16
				s1 * 7/16
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
				\time 5/8
				s1 * 5/8
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
						\tag #'Segment14SaxophoneVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b,16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice3
						{
							{
								r16
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g,8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								af,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice6
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice7
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
								b,16 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice8
						{
							{
								r4
							}
						}
						\tag #'Segment14SaxophoneVoice9
						{
							{
								r8.
								r16
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e,16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f8 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice11
						{
							{
								r16
								\afterGrace
								r8
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
						\tag #'Segment14SaxophoneVoice12
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
						\tag #'Segment14SaxophoneVoice13
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e,16 ]
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
						\tag #'Segment14SaxophoneVoice16
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								d,16 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 [ \(
									af,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								d16 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f,16 \)
							}
						}
						\tag #'Segment14SaxophoneVoice17
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
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
						\tag #'Segment14SaxophoneVoice18
						{
							{
								r8.
								\afterGrace
								r8
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
						\tag #'Segment14SaxophoneVoice19
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d,8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e8 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice20
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment14SaxophoneVoice21
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
						\tag #'Segment14SaxophoneVoice22
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f,16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af,16 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice23
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice24
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
						\tag #'Segment14SaxophoneVoice25
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								af,8 ~
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
						\tag #'Segment14SaxophoneVoice26
						{
							{
								r8
							}
						}
						\tag #'Segment14SaxophoneVoice27
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice28
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								af,8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e8 ] \)
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice29
						{
							{
								r2
							}
						}
						\tag #'Segment14SaxophoneVoice30
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice31
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice32
						{
							{
								r8
								r2
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice33
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								af,16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs16 \)
							}
						}
						\tag #'Segment14SaxophoneVoice34
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								bf,8
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
								cs,16 ] \)
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice35
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice36
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice37
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs,16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								bf,16 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice38
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
						\tag #'Segment14SaxophoneVoice39
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice40
						{
							{
								r4
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
						\tag #'Segment14SaxophoneVoice41
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								cs,8 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs8 \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice42
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment14SaxophoneVoice43
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice44
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								c,16
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
						\tag #'Segment14SaxophoneVoice45
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice46
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								ef,16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d8 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice47
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice48
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
						\tag #'Segment14SaxophoneVoice49
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								ef,8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c16 \)
							}
						}
						\tag #'Segment14SaxophoneVoice50
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b,16 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice51
						{
							{
								r16
								\afterGrace
								r2
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
								\set stemRightBeamCount = 2
								\afterGrace
								cs16 \)
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
						\tag #'Segment14SaxophoneVoice53
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f8 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice54
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice55
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice56
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14SaxophoneVoice57
						{
							{
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
						\tag #'Segment14SaxophoneVoice58
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b,16 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice59
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice60
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d32 ]
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice61
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
						\tag #'Segment14SaxophoneVoice62
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
								\set stemRightBeamCount = 0
								cs16 ] \)
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice63
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice64
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice65
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
						\tag #'Segment14SaxophoneVoice66
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice67
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
						\tag #'Segment14SaxophoneVoice68
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								a,16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a,16 ] \)
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice69
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
						\tag #'Segment14SaxophoneVoice70
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice71
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g,8 ~
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
								a,8 ] \)
							}
						}
					}
					{
						\tag #'Segment14SaxophoneVoice72
						{
							{
								\afterGrace
								r16
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
						\tag #'Segment14SaxophoneVoice73
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								a,16 \) [
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
						\tag #'Segment14SaxophoneVoice74
						{
							{
								r16
							}
						}
						\tag #'Segment14SaxophoneVoice75
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14SaxophoneVoice76
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
						\tag #'Segment14GuitarVoice2
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
									b'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f''16 \) [
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
						\tag #'Segment14GuitarVoice5
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice6
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #1
								\afterGrace
								<ef' d'' f'' c'''>8
								{
									g''16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<cf'' af''>8 \)
								\ottava #0
							}
						}
						\tag #'Segment14GuitarVoice7
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<cs' b'>16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<af' f''>32 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice8
						{
							{
								r4..
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								<bff af' gf''>8
								{
									g''16 \(
								}
								<af' f''>4 \)
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice10
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
						\tag #'Segment14GuitarVoice11
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
						\tag #'Segment14GuitarVoice12
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								d''4 \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e''8
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice13
						{
							{
								r4
							}
						}
						\tag #'Segment14GuitarVoice14
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
						\tag #'Segment14GuitarVoice15
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
						\tag #'Segment14GuitarVoice16
						{
							{
								r4..
								r8
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice17
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								f''16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b''16 \(
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
						\tag #'Segment14GuitarVoice18
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14GuitarVoice19
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14GuitarVoice20
						{
							{
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #1
									f''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice21
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<fs' e''>8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<af' f''>8 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice22
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice23
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<d' cs'' e'' b''>16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<d' cs'' e'' b''>16
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<f' d''>16 \)
							}
						}
						\tag #'Segment14GuitarVoice24
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<g d' f' e''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<df'' f'' cf'''>16
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice25
						{
							{
								r8.
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
						\tag #'Segment14GuitarVoice26
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								d''8 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f''8 \)
								\ottava #0
							}
						}
						\tag #'Segment14GuitarVoice27
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
								\set stemRightBeamCount = 0
								d''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice28
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice29
						{
							{
								r4.
								r8.
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice30
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #1
								c''8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<gf' ef''>8 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice31
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14GuitarVoice32
						{
							{
								R1 * 3/16
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
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								bf'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice34
						{
							{
								r16
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice35
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								<c' bf'>16
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<d' cs'' b''>32 ] \)
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice36
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice37
						{
							{
								\afterGrace
								r4
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
						\tag #'Segment14GuitarVoice38
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								<ds' cs''>8 \) [
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<ds' as' cs'' bs''>16 \)
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
								r8
								r4
							}
						}
						\tag #'Segment14GuitarVoice40
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice41
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								ef''16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c''16 \)
								\ottava #0
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice42
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice43
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14GuitarVoice44
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14GuitarVoice45
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice46
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								<df'' f'' cf'''>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<d'' b''>16
								\ottava #0
							}
						}
						\tag #'Segment14GuitarVoice47
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								cs''16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c''32 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice48
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice49
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice50
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								ef''16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f''8 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice51
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
						\tag #'Segment14GuitarVoice52
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<e' cs''>8 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<cs'' b''>16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice53
						{
							{
								r4.
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice54
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								<f' d''>16 [
								{
									af''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								cs''16 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af'16 [ \(
									b'16 ]
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
						\tag #'Segment14GuitarVoice55
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment14GuitarVoice56
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
						\tag #'Segment14GuitarVoice57
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								cs''16 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af''16 [ \(
									b''16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs''16 \)
								\ottava #0
							}
						}
						\tag #'Segment14GuitarVoice58
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								\afterGrace
								b'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									af'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs''32 ] \)
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice59
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice60
						{
							{
								\afterGrace
								r4.
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
						\tag #'Segment14GuitarVoice61
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								cs''8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<af' f''>8 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice62
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice63
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								b'16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f''16
							}
						}
						\tag #'Segment14GuitarVoice64
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d''16
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
						\tag #'Segment14GuitarVoice65
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
						\tag #'Segment14GuitarVoice66
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<b a'>8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<d'' b''>8 ]
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice67
						{
							{
								r16
							}
						}
						\tag #'Segment14GuitarVoice68
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14GuitarVoice69
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice70
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								g'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice71
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice72
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								a'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g''16 ]
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14GuitarVoice73
						{
							{
								r16
							}
						}
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
								R1 * 3/16
							}
						}
						\tag #'Segment14GuitarVoice76
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
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoRHVoice2
						{
							{
								r4.
								r8.
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
								d''''8 [ \glissando \startTextSpan
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
						\tag #'Segment14PianoRHVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment14PianoRHVoice6
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice7
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
						\tag #'Segment14PianoRHVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g''''8 \glissando
							}
						}
						\tag #'Segment14PianoRHVoice9
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
						\tag #'Segment14PianoRHVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice11
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
						\tag #'Segment14PianoRHVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoRHVoice13
						{
							{
								R1 * 5/8
							}
						}
						\tag #'Segment14PianoRHVoice14
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoRHVoice15
						{
							{
								r4..
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice16
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
						\tag #'Segment14PianoRHVoice17
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
						\tag #'Segment14PianoRHVoice18
						{
							{
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
								f'''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice20
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
						\tag #'Segment14PianoRHVoice21
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoRHVoice22
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice23
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
						\tag #'Segment14PianoRHVoice24
						{
							{
								r16
							}
						}
						\tag #'Segment14PianoRHVoice25
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
						\tag #'Segment14PianoRHVoice26
						{
							{
								r4.
								r4
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
								\set stemRightBeamCount = 1
								\ottava #2
								c''''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice28
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
						\tag #'Segment14PianoRHVoice29
						{
							{
								r4
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
								\set stemRightBeamCount = 1
								\ottava #2
								a'''8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice31
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
						\tag #'Segment14PianoRHVoice32
						{
							{
								r16
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
								\set stemRightBeamCount = 2
								\ottava #2
								b'''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice34
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c''''32 \glissando
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
						\tag #'Segment14PianoRHVoice35
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoRHVoice36
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
						\tag #'Segment14PianoRHVoice37
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice38
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
								<e''' g''' b''' d''''>16 \p ~ \startTrillSpan f''''
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
								<e''' g''' b''' d''''>16
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
								<a''' c'''' e''''>16 ]
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
						\tag #'Segment14PianoRHVoice39
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoRHVoice40
						{
							{
								r4.
								r16
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
						\tag #'Segment14PianoRHVoice42
						{
							{
								r16
								r8.
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice43
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
								a'''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice44
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								f''''32 \glissando
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
						\tag #'Segment14PianoRHVoice45
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice46
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
						\tag #'Segment14PianoRHVoice47
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
						\tag #'Segment14PianoRHVoice48
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoRHVoice49
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoRHVoice50
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment14PianoRHVoice51
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoRHVoice52
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice53
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
						\tag #'Segment14PianoRHVoice54
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a'''8 \glissando
							}
						}
						\tag #'Segment14PianoRHVoice55
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
						\tag #'Segment14PianoRHVoice56
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice57
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
						\tag #'Segment14PianoRHVoice58
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c''''16. \glissando
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
						\tag #'Segment14PianoRHVoice59
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoRHVoice60
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice61
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
								cs''''16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoRHVoice62
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c''''16 \glissando
							}
						}
						\tag #'Segment14PianoRHVoice63
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g'''16. \glissando
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
						\tag #'Segment14PianoRHVoice64
						{
							{
								r4.
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice65
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\ottava #1
								ef'''16 \p
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<a''' c'''' e''''>16 ]
									^ \markup {
										\center-align
											\natural
										}
								\ottava #0
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice66
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
						\tag #'Segment14PianoRHVoice67
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice68
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
						\tag #'Segment14PianoRHVoice69
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
						\tag #'Segment14PianoRHVoice70
						{
							{
								r8
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
						\tag #'Segment14PianoRHVoice72
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								d''''32 \glissando
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
						\tag #'Segment14PianoRHVoice73
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoRHVoice74
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoRHVoice75
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
						\tag #'Segment14PianoRHVoice76
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
						\tag #'Segment14PianoRHVoice77
						{
							{
								r2
							}
						}
						\tag #'Segment14PianoRHVoice78
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoRHVoice79
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoRHVoice80
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
								r4
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
						\tag #'Segment14PianoLHVoice3
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice4
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
						\tag #'Segment14PianoLHVoice5
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoLHVoice6
						{
							{
								r4..
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #-1
								d,,16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e,,16
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<d,, f,, a,,>16 ]
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
						\tag #'Segment14PianoLHVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice9
						{
							{
								R1 * 5/8
							}
						}
						\tag #'Segment14PianoLHVoice10
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoLHVoice11
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice12
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
								b,,,16. [ \glissando \startTextSpan
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
						\tag #'Segment14PianoLHVoice13
						{
							{
								r4.
							}
						}
						\tag #'Segment14PianoLHVoice14
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
						\tag #'Segment14PianoLHVoice15
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice16
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
								c,,16 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoLHVoice17
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
						\tag #'Segment14PianoLHVoice18
						{
							{
								r4
							}
						}
						\tag #'Segment14PianoLHVoice19
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice20
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
						\tag #'Segment14PianoLHVoice21
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment14PianoLHVoice22
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment14PianoLHVoice23
						{
							{
								R1 * 7/8
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice24
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
						\tag #'Segment14PianoLHVoice25
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a,,16 \glissando
							}
						}
						\tag #'Segment14PianoLHVoice26
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
						\tag #'Segment14PianoLHVoice27
						{
							{
								r8
							}
						}
						\tag #'Segment14PianoLHVoice28
						{
							{
								r4..
								r16
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
						\tag #'Segment14PianoLHVoice30
						{
							{
								r16
							}
						}
						\tag #'Segment14PianoLHVoice31
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice32
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
								\ottava #-1
								<g,,, b,,, d,,>8 \p
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
								<f,, a,, c,>8 ]
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
						\tag #'Segment14PianoLHVoice33
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment14PianoLHVoice34
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment14PianoLHVoice35
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice36
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice37
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoLHVoice38
						{
							{
								r16
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
								\set stemRightBeamCount = 1
								\ottava #-1
								d,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoLHVoice40
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
						\tag #'Segment14PianoLHVoice41
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice42
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
						\tag #'Segment14PianoLHVoice43
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,,8 \glissando
							}
						}
						\tag #'Segment14PianoLHVoice44
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
						\tag #'Segment14PianoLHVoice45
						{
							{
								r4.
								r4
								r8.
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice46
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
						\tag #'Segment14PianoLHVoice47
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a,,16 \glissando
							}
						}
						\tag #'Segment14PianoLHVoice48
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f,,16. \glissando
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b,,,32 ] \stopTextSpan
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
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice50
						{
							{
								R1 * 7/8
							}
						}
						\tag #'Segment14PianoLHVoice51
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice52
						{
							{
								R1 * 5/8
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PianoLHVoice53
						{
							{
								r8
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
								\set stemRightBeamCount = 1
								\ottava #-1
								b,,,8 [ \glissando \startTextSpan
							}
						}
						\tag #'Segment14PianoLHVoice55
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g,,16 \glissando
							}
						}
						\tag #'Segment14PianoLHVoice56
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a,,,16 \glissando
							}
						}
						\tag #'Segment14PianoLHVoice57
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs,,16. \glissando
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
						\tag #'Segment14PianoLHVoice58
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice59
						{
							{
								R1 * 5/8
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PianoLHVoice60
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
						\tag #'Segment14PianoLHVoice61
						{
							{
								r16
							}
						}
						\tag #'Segment14PianoLHVoice62
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PianoLHVoice63
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
							R1 * 11/16
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
							R1 * 5/8
						}
					}
					\tag #'Segment14PianoPedals6
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment14PianoPedals7
					{
						{
							R1 * 11/16
						}
					}
					\tag #'Segment14PianoPedals8
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals9
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals10
					{
						{
							R1 * 5/16
						}
					}
					\tag #'Segment14PianoPedals11
					{
						{
							R1 * 7/16
						}
					}
					\tag #'Segment14PianoPedals12
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals13
					{
						{
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals14
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals15
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals16
					{
						{
							R1 * 11/16
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
							R1 * 5/16
						}
					}
					\tag #'Segment14PianoPedals19
					{
						{
							R1 * 3/16
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
							R1 * 7/16
						}
					}
					\tag #'Segment14PianoPedals22
					{
						{
							R1 * 3/16
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
							R1 * 7/8
						}
					}
					\tag #'Segment14PianoPedals25
					{
						{
							R1 * 3/16
						}
					}
					\tag #'Segment14PianoPedals26
					{
						{
							R1 * 3/16
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
							R1 * 5/8
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
							R1 * 3/16
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
								r4
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice2
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
						\tag #'Segment14PercussionShakerVoice3
						{
							{
								r8.
								r4
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice4
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								b4 \)
							}
						}
						\tag #'Segment14PercussionShakerVoice5
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								d'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice6
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment14PercussionShakerVoice7
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
						\tag #'Segment14PercussionShakerVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice9
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
						\tag #'Segment14PercussionShakerVoice10
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice11
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d'16 [
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
						\tag #'Segment14PercussionShakerVoice12
						{
							{
								r8
							}
						}
						\tag #'Segment14PercussionShakerVoice13
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
						\tag #'Segment14PercussionShakerVoice14
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice15
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16
							}
						}
						\tag #'Segment14PercussionShakerVoice16
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16 ~
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
						\tag #'Segment14PercussionShakerVoice17
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
						\tag #'Segment14PercussionShakerVoice18
						{
							{
								r8.
								\afterGrace
								r8
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
						\tag #'Segment14PercussionShakerVoice19
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								d'16 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 [ \(
									g16 ]
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
						\tag #'Segment14PercussionShakerVoice20
						{
							{
								r4.
								r8
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice21
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								d'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								g32 ] \)
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice22
						{
							{
								r4
							}
						}
						\tag #'Segment14PercussionShakerVoice23
						{
							{
								r4.
								r4
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice24
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8
							}
						}
						\tag #'Segment14PercussionShakerVoice25
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g16
							}
						}
						\tag #'Segment14PercussionShakerVoice26
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16
							}
						}
						\tag #'Segment14PercussionShakerVoice27
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice28
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice29
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d'8 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice30
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment14PercussionShakerVoice31
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
						\tag #'Segment14PercussionShakerVoice32
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice33
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g16
							}
						}
						\tag #'Segment14PercussionShakerVoice34
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16
							}
						}
						\tag #'Segment14PercussionShakerVoice35
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
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
						\tag #'Segment14PercussionShakerVoice36
						{
							{
								r4
							}
						}
						\tag #'Segment14PercussionShakerVoice37
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
						\tag #'Segment14PercussionShakerVoice38
						{
							{
								r4.
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice39
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16
							}
						}
						\tag #'Segment14PercussionShakerVoice40
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f'16
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
						\tag #'Segment14PercussionShakerVoice41
						{
							{
								r8
							}
						}
						\tag #'Segment14PercussionShakerVoice42
						{
							{
								r4
								\afterGrace
								r16
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
						\tag #'Segment14PercussionShakerVoice43
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f'16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								g32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice44
						{
							{
								r8.
								r4
							}
						}
						\tag #'Segment14PercussionShakerVoice45
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionShakerVoice46
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionShakerVoice47
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice48
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								r8 ]
							}
						}
						\tag #'Segment14PercussionShakerVoice49
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								f'4
								g4
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice50
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionShakerVoice51
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
						\tag #'Segment14PercussionShakerVoice52
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice53
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
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
						\tag #'Segment14PercussionShakerVoice54
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment14PercussionShakerVoice55
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/16
							}
						}
						\tag #'Segment14PercussionShakerVoice56
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionShakerVoice57
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice58
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f'16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								g8 ]
							}
						}
						\tag #'Segment14PercussionShakerVoice59
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								b4
								d'4
							}
						}
					}
					{
						\tag #'Segment14PercussionShakerVoice60
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment14PercussionShakerVoice61
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionShakerVoice62
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionShakerVoice63
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
								r4
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 \)
							}
						}
						\tag #'Segment14PercussionWoodblockVoice3
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g'16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice4
						{
							{
								r4
								r2
							}
						}
						\tag #'Segment14PercussionWoodblockVoice5
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice6
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
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
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 ] \)
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice7
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice8
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								g'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
							}
						}
						\tag #'Segment14PercussionWoodblockVoice9
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 ] \)
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice10
						{
							{
								r4.
							}
						}
						\tag #'Segment14PercussionWoodblockVoice11
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
						\tag #'Segment14PercussionWoodblockVoice12
						{
							{
								r8.
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 [ \(
									g'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice13
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/12 {
								\afterGrace
								f4 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								c'4 \)
								r4
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice14
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice15
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice16
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice17
						{
							{
								R1 * 7/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionWoodblockVoice18
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice19
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g'8
							}
						}
						\tag #'Segment14PercussionWoodblockVoice20
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
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
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 ] \)
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice21
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
						\tag #'Segment14PercussionWoodblockVoice22
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g'8
							}
						}
						\tag #'Segment14PercussionWoodblockVoice23
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 ] \)
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
								R1 * 11/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionWoodblockVoice25
						{
							{
								r4.
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 [ \(
									g'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice26
						{
							\times 2/3 {
								\afterGrace
								f4 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 \) [
							}
						}
						\tag #'Segment14PercussionWoodblockVoice27
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								g'8 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice28
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice29
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice30
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice31
						{
							{
								\afterGrace
								R1 * 3/16
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
						\tag #'Segment14PercussionWoodblockVoice32
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
								e'8 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice33
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment14PercussionWoodblockVoice34
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
						\tag #'Segment14PercussionWoodblockVoice35
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
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
								e'4 \)
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice36
						{
							{
								r8.
							}
						}
						\tag #'Segment14PercussionWoodblockVoice37
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice38
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionWoodblockVoice39
						{
							{
								r4.
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
						\tag #'Segment14PercussionWoodblockVoice40
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8
							}
						}
						\tag #'Segment14PercussionWoodblockVoice41
						{
							{
								\set stemLeftBeamCount = 1
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
								\set stemRightBeamCount = 3
								g'32 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice42
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice43
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 5/8
							}
						}
						\tag #'Segment14PercussionWoodblockVoice44
						{
							{
								R1 * 5/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice45
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice46
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice47
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								r8 ]
							}
						}
						\tag #'Segment14PercussionWoodblockVoice48
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								g'4
								f4
							}
						}
						\tag #'Segment14PercussionWoodblockVoice49
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = -1
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
								\set stemRightBeamCount = 2
								e'16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionWoodblockVoice50
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionWoodblockVoice51
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
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice3
						{
							{
								r8.
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice4
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
						\tag #'Segment14PercussionDrumVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionDrumVoice6
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
						\tag #'Segment14PercussionDrumVoice7
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 ~
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
								\set stemRightBeamCount = 0
								a8 ] \)
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice8
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment14PercussionDrumVoice9
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
						\tag #'Segment14PercussionDrumVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice12
						{
							{
								r4.
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
					}
					{
						\tag #'Segment14PercussionDrumVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice15
						{
							{
								r16
								r4.
							}
						}
						\tag #'Segment14PercussionDrumVoice16
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionDrumVoice17
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice18
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8
							}
						}
						\tag #'Segment14PercussionDrumVoice19
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice20
						{
							{
								r4
							}
						}
						\tag #'Segment14PercussionDrumVoice21
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice22
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
						\tag #'Segment14PercussionDrumVoice23
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment14PercussionDrumVoice24
						{
							{
								r4.
								r4
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
						\tag #'Segment14PercussionDrumVoice25
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment14PercussionDrumVoice26
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice27
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionDrumVoice28
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
						\tag #'Segment14PercussionDrumVoice29
						{
							{
								r8.
								r8
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice30
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
						\tag #'Segment14PercussionDrumVoice31
						{
							{
								r16
								r8
							}
						}
						\tag #'Segment14PercussionDrumVoice32
						{
							{
								r4.
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice33
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
						\tag #'Segment14PercussionDrumVoice34
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
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 \)
							}
						}
						\tag #'Segment14PercussionDrumVoice35
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								e'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 [ \(
									c'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice36
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionDrumVoice37
						{
							{
								R1 * 7/16
							}
						}
						\tag #'Segment14PercussionDrumVoice38
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice39
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice40
						{
							{
								r4
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice41
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 ]
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice42
						{
							{
								r16
							}
						}
						\tag #'Segment14PercussionDrumVoice43
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 7/8
							}
						}
						\tag #'Segment14PercussionDrumVoice44
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment14PercussionDrumVoice45
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
						\tag #'Segment14PercussionDrumVoice46
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16
							}
						}
						\tag #'Segment14PercussionDrumVoice47
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
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
						\tag #'Segment14PercussionDrumVoice48
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment14PercussionDrumVoice49
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice50
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e'16
							}
						}
						\tag #'Segment14PercussionDrumVoice51
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
						\tag #'Segment14PercussionDrumVoice52
						{
							{
								r4.
							}
						}
						\tag #'Segment14PercussionDrumVoice53
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
						\tag #'Segment14PercussionDrumVoice54
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
						\tag #'Segment14PercussionDrumVoice55
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment14PercussionDrumVoice56
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
								\set stemRightBeamCount = 0
								a8 ] \)
							}
						}
					}
					{
						\tag #'Segment14PercussionDrumVoice57
						{
							{
								r4.
							}
						}
						\tag #'Segment14PercussionDrumVoice58
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionDrumVoice59
						{
							{
								R1 * 3/16
							}
						}
						\tag #'Segment14PercussionDrumVoice60
						{
							{
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