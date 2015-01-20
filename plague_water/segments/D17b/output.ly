\version "2.19.3"
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
				\time 7/8
				s1 * 7/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 1/8
				s1 * 1/8
			}
			{
				\time 7/8
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
				\time 7/8
				s1 * 7/8
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 4/8
				s1 * 1/2
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
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
							b,4 \) ( \startTextSpan
							f4 ) \stopTextSpan
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
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							af,16 -\snappizzicato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d16 -\accent -\snappizzicato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\afterGrace
							e,16 -\snappizzicato
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af,16 -\accent -\snappizzicato \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d,8 ] \)
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/8
							\stopStaff
							\startStaff
						}
						{
							r4
						}
					}
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
					{
						{
							r8.
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f,16 -\accent -\snappizzicato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							af,32 -\snappizzicato ]
						}
					}
					{
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								f,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
							e,16 \) [ ( \startTextSpan
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							f32 )
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ] \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					{
						{
							r8
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af,16 -\snappizzicato \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d,16 \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e16 -\accent -\snappizzicato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r16
							r8
						}
					}
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
					{
						{
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
							\afterGrace
							d,16 [ ( \startTextSpan
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								g,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
							r8.
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs,8 -\accent -\snappizzicato [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af,16 -\snappizzicato
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							bf,8 -\accent -\snappizzicato
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af,16 -\snappizzicato \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,8 ] \)
						}
					}
					{
						{
							r8
						}
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								af,16 [ \(
								b,16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs8 \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf,8 ] )
						}
					}
					{
						{
							r16
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								af,16 -\snappizzicato [ \(
								b,16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							c,8 \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af,16 -\accent -\snappizzicato \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c8 ] \)
						}
					}
					{
						{
							\afterGrace
							r4.
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
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
							cs,8 \) [ ( \startTextSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b,8 ] ) \stopTextSpan
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
							r4
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
							d,16 -\accent -\snappizzicato ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef16 -\snappizzicato ]
						}
					}
					{
						{
							r8
							r4
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							b,8 [ (
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a,8 ] \) )
						}
					}
					{
						{
							r16
							r8
						}
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							g,16 -\snappizzicato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a,16 -\accent -\snappizzicato ]
						}
					}
					{
						{
							r16
							r8
						}
						{
							r16
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
							g,16 (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a,16 ] ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								f'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<a>16 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							<b'>32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
						}
					}
					{
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								g'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af'16 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b'16 - \bendAfter #'-4.0 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8 - \bendAfter #'-4.0 -\staccato ]
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
					}
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
							<af'>16 -\staccato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<bf>16 -\staccato ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							<bf>16
							{
								f'16 \(
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<g>16 -\staccato ] \)
						}
					}
					{
						{
							r8
							r16
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							<ef' c'''>8 -\staccato \arpeggio
							<g'>4 -\staccato
							\ottava #0
						}
					}
					{
						{
							r8.
						}
						{
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\ottava #1
								b'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d''8 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''16 - \bendAfter #'4.0 -\staccato ]
							\ottava #0
						}
					}
					{
						{
							r4.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							\afterGrace
							R1 * 3/16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								g'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
							<af>16 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<e' b' cs'''>16 -\staccato \arpeggio
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<e' d''>16 -\staccato ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							\afterGrace
							bf'16 -\staccato [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af''16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
							r16
							r4
						}
						{
							r4
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								\ottava #1
								af'16 [ \(
								b'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							c''8 -\staccato \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af''16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<ef'>8 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r8
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
							<f>16 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							<ef' c'''>32 -\staccato \arpeggio
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<g>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<cs' af' bf''>16 -\staccato \arpeggio
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\ottava #1
								af'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							cs''8 -\staccato \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af''16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''8 - \bendAfter #'4.0 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r16
						}
						{
							r4.
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
							<ef'>8 -\staccato
							{
								af''16 \(
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<ef'>8 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
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
							b'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a'8 - \bendAfter #'-4.0 -\staccato ]
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
							R1 * 1/2
						}
						{
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
						}
						{
							R1 * 3/16
						}
						{
							R1 * 1/8
							\stopStaff
							\startStaff
						}
						{
							r4.
						}
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							\clef treble
							cs'16. [ \glissando \startTextSpan
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							r16
						}
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							c'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							d'32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							f'16. [ \glissando \startTextSpan
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							<e' g' b' d''>16 \p
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
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							<b d' f'>32 ]
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
					{
						{
							r4
							r4
						}
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							b'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							ds'16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							f'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs'16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							d'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							bf'16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							cs'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							R1 * 5/8
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
							<g' b' d''>16 \p
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
							<d' f' a'>32 ]
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
					{
						{
							r8
							r2
						}
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							d'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf'8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							fs32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							b'16. [ \glissando \startTextSpan
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							r16
						}
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							\clef treble
							c'16. [ \glissando \startTextSpan
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 1/8
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							d'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a'16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
							\revert NoteHead #'style
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
							\revert Tie #'stencil
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
							R1 * 5/8
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r4.
							r4
							r16
						}
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							c'16. [ \glissando \startTextSpan
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							r16
						}
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							c'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							r2
						}
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override AccidentalCautionary #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'no-ledgers = ##t
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
							b'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c'16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g'32 ] \stopTextSpan
							\revert Accidental #'stencil
							\revert AccidentalCautionary #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'no-ledgers
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
							r2
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/8
						}
						{
							R1 * 1/2
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
						R1 * 3/16
					}
					{
						R1 * 1/8
					}
					{
						R1 * 7/8
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
						R1 * 7/8
					}
					{
						R1 * 5/8
					}
					{
						R1 * 7/8
					}
					{
						R1 * 3/8
					}
					{
						R1 * 1/2
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								g16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 -\staccato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							r16
							r2
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							d'8 -\staccato [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								f'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
							R1 * 1/8
						}
						{
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
							b8 -\staccato [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f'16 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							g16 -\staccato
						}
						{
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
							r4.
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 -\staccato [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8 -\staccato ]
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
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8 -\staccato
							r4
						}
					}
					{
						{
							r8
						}
						{
							r4.
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 -\staccato [
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
							\afterGrace
							R1 * 3/8
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								d'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							f'8 -\staccato \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								g16 [ \(
								b16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 -\staccato ] \)
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								f16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g'8 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16 -\staccato
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							g'16 -\staccato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 -\staccato ]
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
							R1 * 5/8
						}
						{
							\afterGrace
							R1 * 3/16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								f16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 -\staccato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 -\staccato ]
						}
					}
					{
						{
							r2
						}
						{
							r4.
							r8.
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							a8 -\staccato [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 -\staccato ] \)
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
							R1 * 7/8
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								g'16 [ \(
								c'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 -\staccato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8. ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
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
														Styrofoam
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
							a8. :64 -\accent [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 :64 -\accent ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 :64 ]
						}
					}
					{
						{
							r8
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 1/8
						}
						{
							R1 * 7/8
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 :128 ~ \)
							a4. :32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 :128
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
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 :64 -\accent ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 :64 ]
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
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 :128 ~ \)
							a4. :32
						}
					}
					{
						{
							r4.
							r4
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 :64 -\accent [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 :64 -\accent ]
						}
					}
					{
						{
							r4
						}
						{
							r4
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 :128 -\accent ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 :128 ]
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
		>>
	>>
}