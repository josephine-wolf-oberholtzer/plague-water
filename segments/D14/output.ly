\version "2.19.2"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/plague-water-header.ily"
\include "../../stylesheets/plague-water-layout.ily"
\include "../../stylesheets/plague-water-paper.ily"
\include "../../stylesheets/plague-water-parts.ily"

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
				\time 5/8
				s1 * 5/8
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
				\time 7/16
				s1 * 7/16
			}
			{
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
				s1 * 7/16
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
				\time 7/16
				s1 * 7/16
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
				\time 7/16
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
					{
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\box
									\pad-around
										#0.5
										air
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [ \startTextSpan
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							af,16 (
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								g,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							af,32 \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							af,8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 ] \) ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
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
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af,16 -\snappizzicato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32 -\accent -\snappizzicato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\afterGrace
							b,16 -\snappizzicato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							g,16 -\accent -\snappizzicato \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							af,16 -\snappizzicato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b,32 -\accent -\snappizzicato ]
						}
					}
					{
						{
							r8.
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f,8 [ (
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g,8 )
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af,8 -\accent -\snappizzicato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d8 -\snappizzicato ]
						}
					}
					{
						{
							\afterGrace
							r4.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								g,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\box
									\pad-around
										#0.5
										air
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							f,16 \) [ ( \startTextSpan
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								g,16 [ \(
								af,16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d8 ] \) ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					{
						{
							r4
						}
						{
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
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							d,8 -\snappizzicato \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								af,16 [ \(
								b,16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d16 -\accent -\snappizzicato ] \)
						}
					}
					{
						{
							\afterGrace
							r4.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e,16 \) [ (
							\set stemLeftBeamCount = 2
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
							\set stemRightBeamCount = 0
							e,16 ] \) )
						}
					}
					{
						{
							r16
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
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f,8 -\accent -\snappizzicato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af,8 -\snappizzicato ]
						}
					}
					{
						{
							r8.
							r16
						}
					}
					{
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\box
									\pad-around
										#0.5
										air
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f,16 [ ( \startTextSpan
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d16 ] ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					{
						{
							r16
						}
						{
							r8.
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							e,16 -\snappizzicato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								af,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							d32 -\accent -\snappizzicato \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e,16 -\snappizzicato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f,16 -\accent -\snappizzicato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r8.
						}
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								g,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							f,16 \) [ (
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								b,16 [ \(
								f16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e16 \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af,16 ] )
						}
					}
					{
						{
							r8.
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d,8 -\accent -\snappizzicato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 -\snappizzicato ]
						}
					}
					{
						{
							r16
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 3/16
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
					}
					{
						\times 2/3 {
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\box
									\pad-around
										#0.5
										air
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [ \startTextSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							c,8 (
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								af,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs8 ] \) ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							bf,16 -\snappizzicato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							af,32 -\accent -\snappizzicato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\afterGrace
							cs,16 -\snappizzicato
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
							cs,16 -\accent -\snappizzicato \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								af,16 [ \(
								b,16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs16 -\snappizzicato ] \)
						}
					}
					{
						{
							r8.
							r4
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							bf,8 [ (
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
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf,8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af,8 ] )
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
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
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c,16 -\accent -\snappizzicato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef16 -\snappizzicato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d,8 -\accent -\snappizzicato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f,8 -\snappizzicato ]
						}
					}
					{
						{
							r16
						}
						{
							r8.
						}
					}
					{
						{
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\box
									\pad-around
										#0.5
										air
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [ \startTextSpan
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef,16 (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16 ] ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					{
						{
							r16
						}
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
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c,16 -\snappizzicato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef8 -\accent -\snappizzicato ]
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
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
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							cs,8 \) [ (
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								af,16 [ \(
								b,16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs16 ] \) )
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b,16 -\accent -\snappizzicato [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d16 -\snappizzicato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 -\accent -\snappizzicato ]
						}
					}
					{
						{
							r8
						}
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
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\box
									\pad-around
										#0.5
										air
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							cs,4 \) ( \startTextSpan
							b,4 ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					{
						{
							r8
						}
						{
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
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							\afterGrace
							cs,4 -\snappizzicato \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								af,16 [ \(
								b,16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							cs4 -\accent -\snappizzicato \)
						}
					}
					{
						{
							r16
						}
						{
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							b,16 (
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								af,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							cs32 \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f,8 )
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
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
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a,16 -\accent -\snappizzicato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 -\snappizzicato ]
						}
					}
					{
						{
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							a,16 -\snappizzicato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								af,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a,16 -\accent -\snappizzicato ] \)
						}
					}
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
					{
						\times 2/3 {
							\override TextSpanner #'bound-details #'left #'text = \markup {
								\box
									\pad-around
										#0.5
										air
								}
							\override TextSpanner #'bound-details #'right #'text = \markup {
								\draw-line
									#'(0 . -1)
								}
							\override TextSpanner #'bound-details #'right-broken #'text = ##f
							\override TextSpanner #'dash-fraction = #1
							\override TextSpanner #'direction = #up
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [ \startTextSpan
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a,16 (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g,16 ] ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					{
						{
							r4
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a,16 -\accent -\snappizzicato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g,32 -\snappizzicato ]
						}
					}
					{
						{
							r4
						}
					}
					{
						{
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
							\set stemRightBeamCount = 2
							a,16 \) )
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r16
						}
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
		>>
		\tag score.guitar
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble"
				\transpose c c'
				\context Voice = "Guitar Voice" {
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
								b'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							<g'>8 -\staccato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<bf'>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r4
							\afterGrace
							r16
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
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g'16 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							af''16 - \bendAfter #'-4.0 -\staccato
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r16
						}
						{
							r4.
							r16
						}
					}
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
					{
						{
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<a>16 -\staccato [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<af'>8 -\staccato
						}
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
					{
						{
							r16
							r4
						}
					}
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
								g''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f''16 - \bendAfter #'4.0 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r16
							r4
						}
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								g'16 [ \(
								af'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
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
					{
						{
							r4
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							\ottava #1
							af'4 -\staccato
							f''4 - \bendAfter #'-4.0 -\staccato
							\ottava #0
						}
						{
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							\afterGrace
							f''16 -\staccato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d''32 - \bendAfter #'-4.0 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
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
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							<fs'>8 -\staccato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<cf''>8 -\staccato ]
							\ottava #0
						}
					}
					{
						{
							r16
						}
						{
							r8
						}
					}
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
					{
						{
							r16
							r8
						}
						{
							\afterGrace
							r8.
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
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							e''16 -\staccato \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d''16 - \bendAfter #'4.0 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r4
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<g'>8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<cf' gf' af''>8 -\staccato \arpeggio
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<bf' af''>16 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e''8 -\staccato ]
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 3/16
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\ottava #1
							\afterGrace
							<gf'>8 -\staccato
							{
								af''16 \(
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<ds'>8 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r16
							r4.
						}
					}
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
					{
						{
							r8.
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							\afterGrace
							cs''8 -\staccato [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								af''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs''16 - \bendAfter #'-4.0 -\staccato \)
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								\ottava #1
								af'16 [ \(
								b'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<d' a' b''>16 -\staccato \arpeggio \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<cf'' bff''>16 -\staccato
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r8.
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\ottava #1
							b'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8 - \bendAfter #'4.0 -\staccato ]
							\ottava #0
						}
					}
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
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<ef'>16 -\staccato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef''8 -\staccato
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<g'>8 -\staccato
							\ottava #0
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							<d''>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<e'>16 -\staccato ]
							\ottava #0
						}
					}
					{
						{
							r16
							r4
						}
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
								af'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							<e'>8 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<cs''>16 -\staccato ]
							\ottava #0
						}
					}
					{
						{
							r8.
						}
					}
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
							\afterGrace
							cs''16 -\staccato \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								af'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs''16 - \bendAfter #'-4.0 -\staccato \)
							\ottava #0
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							\afterGrace
							f''16 -\staccato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								af''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 - \bendAfter #'-4.0 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r8.
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							\afterGrace
							<af'>16 -\staccato [
							{
								af''16 \(
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r8
						}
						{
							r4.
							r16
						}
					}
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
							\set stemRightBeamCount = 0
							cs''16 - \bendAfter #'4.0 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r16
						}
						{
							r4.
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\ottava #1
							d''8 -\staccato ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							d''8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								af''16 [ \(
								b''16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
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
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r4.
							r8.
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<c'>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g''16 -\staccato ]
						}
					}
					{
						{
							r8.
						}
						{
							r16
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\ottava #1
							g'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a''8 - \bendAfter #'-4.0 -\staccato ]
							\ottava #0
						}
					}
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
		>>
		\tag score.piano
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\context Voice = "Piano RH Voice" {
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
						{
							r4
						}
					}
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
					{
						{
							r8
						}
					}
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
					{
						{
							r4
						}
					}
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
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
						{
							r4
						}
					}
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
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''''8 \glissando
						}
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
					{
						{
							r4
						}
						{
							r16
						}
					}
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
					{
						{
							r8.
						}
					}
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
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
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
							<e''' g''' b''' d''''>16 \p
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
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r4.
							r4
							r8
						}
					}
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
					{
						{
							r16
						}
						{
							r16
						}
					}
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
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 11/16
							\stopStaff
							\startStaff
						}
						{
							r4.
							r4
						}
					}
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
					{
						{
							r8
						}
					}
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
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
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
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
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
							\ottava #2
							\pitchedTrill
							<a''' c'''' e''''>8 \p [ \startTrillSpan a''''
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
							\once \override TrillSpanner.bound-details.left.text = \markup {
								\null
								}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							\pitchedTrill
							<b''' d'''' f''''>8 ] \startTrillSpan af''''
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
					{
						{
							r16
						}
						{
							r2
							r16
						}
					}
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
							f'''16 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs''''16 \glissando
						}
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
					{
						{
							r4
							r16
						}
					}
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
					{
						{
							r16
							r16
						}
					}
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
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d''''16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							f'''32 \glissando
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
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
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
							<e''' g''' b''' d'''' f''''>16 \p [
								^ \markup {
									\center-align
										\flat
									}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							f''''32
							\ottava #0
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
						}
					}
					{
						{
							r2
						}
						{
							r4
							r16
						}
					}
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
					{
						{
							r16
							r16
						}
					}
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
							d''''8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f''''16 \glissando
						}
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
					{
						{
							r8
						}
					}
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
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d''''16 \glissando
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a'''16 \glissando
						}
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
					{
						{
							r4
						}
						{
							r4.
							r8.
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							g'''8 \p [
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<f''' a''' c''''>16 ]
								^ \markup {
									\center-align
										\natural
									}
							\ottava #0
						}
					}
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
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
					{
						{
							r8
						}
						{
							r4.
							r8.
						}
					}
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
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/8
						}
						{
							R1 * 7/16
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
						{
							r4.
							r8
						}
					}
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
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r8.
							r8
						}
					}
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
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,,8 \glissando
						}
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
					{
						{
							r16
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
							\stopStaff
							\startStaff
						}
						{
							r16
						}
					}
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
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/8
						}
						{
							R1 * 3/16
						}
						{
							R1 * 3/16
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
						{
							r4..
							r8
						}
					}
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
					{
						{
							r4.
							r8.
						}
					}
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
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
						}
						{
							R1 * 3/16
						}
						{
							R1 * 3/16
						}
						{
							R1 * 7/16
						}
						{
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
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
					{
						{
							r4.
						}
					}
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
					{
						{
							r16
						}
						{
							r4.
							r4
						}
					}
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
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
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
							\ottava #-1
							<a,,, c,, e,, g,,>16 \p [
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
							<c,, e,, g,,>16
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
							<a,,, c,, e,,>16 ]
								^ \markup {
									\center-align
										\natural
									}
							\ottava #0
						}
					}
					{
						{
							r4.
						}
						{
							r4.
							r4
							r8
						}
					}
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
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r8.
							r16
						}
					}
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
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/8
						}
						{
							R1 * 5/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						R1 * 7/8
					}
					{
						R1 * 7/8
					}
					{
						R1 * 5/8
					}
					{
						R1 * 7/16
					}
					{
						R1 * 5/16
					}
					{
						R1 * 7/8
					}
					{
						R1 * 3/16
					}
					{
						R1 * 7/16
					}
					{
						R1 * 7/16
					}
					{
						R1 * 5/16
					}
					{
						R1 * 3/16
					}
					{
						R1 * 7/8
					}
					{
						R1 * 3/16
					}
					{
						R1 * 3/16
					}
					{
						R1 * 5/16
					}
					{
						R1 * 11/16
					}
					{
						R1 * 7/8
					}
					{
						R1 * 5/16
					}
					{
						R1 * 3/16
					}
					{
						R1 * 3/16
					}
					{
						R1 * 7/16
					}
					{
						R1 * 7/16
					}
					{
						R1 * 5/8
					}
					{
						R1 * 3/16
					}
					{
						R1 * 7/8
					}
					{
						R1 * 3/16
					}
					{
						R1 * 7/16
					}
					{
						R1 * 5/8
					}
					{
						R1 * 7/8
					}
					{
						R1 * 3/16
					}
					{
						R1 * 3/16
					}
					{
						R1 * 7/16
					}
					{
						R1 * 7/8
					}
					{
						R1 * 5/16
					}
					{
						R1 * 3/16
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
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							g16 -\staccato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d'32 -\staccato ] \)
						}
					}
					{
						{
							r8.
							r8.
						}
					}
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
							\set stemRightBeamCount = 0
							b8 -\staccato ] \)
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/8
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
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
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
					}
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
					{
						{
							r8.
							r2
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/8 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 -\staccato ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8 -\staccato ]
						}
					}
					{
						{
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							g4 -\staccato
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 -\staccato [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 -\staccato ]
						}
					}
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r4.
							r8.
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g16 -\staccato [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
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
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 11/16
							\stopStaff
							\startStaff
						}
						{
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 -\staccato
							d'4 -\staccato
						}
					}
					{
						{
							r4
						}
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								f'16 [ \(
								g16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							b8 -\staccato \) [
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
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 3/16
						}
						{
							R1 * 7/16
						}
						{
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8 -\staccato [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 -\staccato
						}
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
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r4.
							r8.
						}
					}
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
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8 -\staccato [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8 -\staccato ]
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/8
							\stopStaff
							\startStaff
						}
						{
							r4.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 -\staccato ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8 -\staccato ]
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								g16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							b8 -\staccato \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								d'16 [ \(
								f'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g8 -\staccato ] \)
						}
					}
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
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 -\staccato ]
						}
					}
					{
						{
							r16
						}
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
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
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
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g'16 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							c'16 -\staccato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 -\staccato ] \)
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/8
							\stopStaff
							\startStaff
						}
						{
							r4
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							g'4 -\staccato
							c'4 -\staccato
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
						{
							r4.
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							f8 -\staccato \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								c'16 [ \(
								a16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 -\staccato \)
						}
						{
							\set stemLeftBeamCount = 1
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
							\set stemRightBeamCount = 3
							f32 -\staccato \)
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
						}
						{
							R1 * 7/16
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
						{
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							g'16 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							c'32 -\staccato
						}
						{
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
							\set stemRightBeamCount = 1
							g'8 -\staccato \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							r8 ]
						}
						{
							c'4 -\staccato
							e'4 -\staccato
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 3/16
						}
						{
							R1 * 5/16
						}
						{
							R1 * 11/16
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\afterGrace
							f4 -\staccato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							a4 -\staccato \)
						}
					}
					{
						{
							r2
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
						}
						{
							R1 * 3/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							e'8 -\staccato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								a16 [ \(
								e'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f8 -\staccato \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 -\staccato
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
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
					{
						{
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/8
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r4.
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 -\staccato ]
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r4
						}
					}
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
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16 -\staccato \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16 -\staccato
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8 -\staccato ]
						}
					}
					{
						{
							r16
							r2
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r8.
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							c'8 -\staccato [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 -\staccato \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\afterGrace
							g'16 -\staccato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								c'16 [ \(
								e'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16 -\staccato ] \)
						}
					}
					{
						{
							r4
							r2
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
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
					{
						{
							r16
							r2
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 :64 -\accent [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 :64 ]
						}
					}
					{
						{
							r8
							r2
						}
						{
							r4.
							r16
						}
					}
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							c'8 :64
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 :64 \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 :128
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16 :128
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							e'8 :64
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 :128 \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r16
						}
						{
							r4.
							r4
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 :128 -\accent [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16 :128
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
						}
						{
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 :128
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 :128 ]
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r4.
							r16
						}
					}
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
							e'16 :128 ]
						}
					}
					{
						{
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
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
							a16 ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
							\stopStaff
							\startStaff
						}
						{
							r4..
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
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
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 :128 \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							e'8 :64
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								c'16 [ \(
								e'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 :64 \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/8 {
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
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 :64 ] \)
						}
					}
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
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
							r16 ]
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
						}
						{
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
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
					{
						{
							r16
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r4.
							r16
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 -\accent [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 :64 ]
						}
					}
					{
						{
							r16
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 :64 -\accent [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16 :128
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c'16 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/8
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							c'4 :32 \)
							e'4 :32
							a4 :32
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r8.
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 :128 -\accent [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 :128 ]
						}
					}
					{
						{
							r16
						}
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
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							\afterGrace
							e'4 :32 \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								c'16 [ \(
								e'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							a4 :32 \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							\afterGrace
							e'8 :64 [
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
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}