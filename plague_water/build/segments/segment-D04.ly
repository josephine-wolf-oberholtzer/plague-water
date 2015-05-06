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
				s1 * 7/8
			}
			{
				\time 4/8
				s1 * 1/2
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
				s1 * 7/8
			}
			{
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
				\time 7/8
				s1 * 7/8
			}
			{
				\time 9/8
				s1 * 9/8
			}
			{
				\time 1/8
				s1 * 1/8
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
						{
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								g,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							af,32 ] \) ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
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
								f,16 -\snappizzicato \(
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
							g,16 \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af,16 -\accent -\snappizzicato ]
						}
					}
					{
						{
							r8
						}
						{
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
							af,8 (
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b,8 ] )
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
							d,16 -\accent -\snappizzicato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e16 -\snappizzicato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							af,8 -\accent -\snappizzicato
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								f,16 -\snappizzicato \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e,16 ] \)
						}
					}
					{
						{
							r8.
							r4
							r8
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								f16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							e32 ] \) ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					{
						{
							r4.
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f,16 -\snappizzicato [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							af,32 -\accent -\snappizzicato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d,16 [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							f,8
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d,8 ] \) )
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
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							f,16 -\accent -\snappizzicato
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b,16 -\snappizzicato \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d16 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e,16 -\accent -\snappizzicato ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							e,16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								g,16 -\snappizzicato [ \(
								af,16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d,16 ] \)
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
								\override Beam #'positions = #beam::place-broken-parts-individually
								g,16 [ \(
								af,16 ]
								\revert Beam #'positions
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
							\afterGrace
							d,16 \) [ ( \startTextSpan
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
							r16
							r4
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
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d,8 \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16 -\accent -\snappizzicato ]
						}
					}
					{
						{
							r4.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							af,8 [ (
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b,16 \(
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
							r8.
						}
						{
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af,16 -\accent -\snappizzicato \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							cs,4 \)
							bf,4 -\snappizzicato
						}
					}
					{
						{
							r8.
							r8
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
							c,16 [ ( \startTextSpan
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c16 ] \) ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
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
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d,16 -\snappizzicato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f32 -\accent -\snappizzicato ]
						}
					}
					{
						{
							r2
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
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							c,8 \) [ (
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
						}
						\times 2/3 {
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
					{
						{
							r16
							r4
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
							\afterGrace
							c,8 -\accent -\snappizzicato
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
							cs8 ] \)
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
							R1 * 1/8
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
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b,16 -\snappizzicato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16 -\accent -\snappizzicato ]
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
							b,16 ~ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef16 ] ) \stopTextSpan
							\revert TextSpanner #'bound-details
							\revert TextSpanner #'dash-fraction
							\revert TextSpanner #'direction
						}
					}
					{
						{
							r8.
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								af,16 -\accent -\snappizzicato [ \(
								b,16 ]
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
							a,8 \) [
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
							\set stemRightBeamCount = 2
							a,16 \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
							\set stemRightBeamCount = 2
							a,16 [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							g,16 )
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
							r8
						}
						{
							\afterGrace
							r16
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
							a,8 \) ( \startTextSpan
							g,4 ) \stopTextSpan
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
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<g'>16 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							<d''>32 -\staccato
							\ottava #0
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
						}
					}
					{
						{
							r4
							\afterGrace
							r16
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
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f''16 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							g''16 - \bendAfter #'-4.0 -\staccato
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r4.
							r8
						}
					}
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
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<bf>16 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							<af'>32 -\staccato ]
						}
					}
					{
						{
							r4.
							r16
						}
					}
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
						\times 5/6 {
							d''4 -\staccato \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e''8 - \bendAfter #'4.0 -\staccato
							\ottava #0
						}
					}
					{
						{
							r8
						}
						{
							r4.
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								\ottava #1
								b'16 [ \(
								f''16 ]
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
							\set stemRightBeamCount = 2
							<c'' bf''>16 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<af'>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<f' d'''>16 -\staccato \arpeggio ]
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
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							\afterGrace
							f''16 -\staccato [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b''16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d''16 - \bendAfter #'-4.0 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r4
						}
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b'16 \(
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
							<f'>8 -\staccato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<g d' e''>8 -\staccato \arpeggio ]
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
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							<c'' bf''>16 -\staccato ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							<c'' bf''>16
							{
								b''16 \(
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d''16 -\staccato \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<ef'>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<f'>16 -\staccato
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r8.
							\afterGrace
							r16
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
						{
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
							\set stemRightBeamCount = 1
							cs''8 - \bendAfter #'4.0 -\staccato \)
							\ottava #0
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							af'16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 - \bendAfter #'4.0 -\staccato ]
							\ottava #0
						}
					}
					{
						{
							r16
						}
						{
							r4.
							r8.
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
							<a fs''>8 -\staccato \arpeggio
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<f'>8 -\staccato ]
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
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							c''16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef''16 - \bendAfter #'-4.0 -\staccato ]
							\ottava #0
						}
					}
					{
						{
							r16
							r4
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
							\ottava #1
							\afterGrace
							<d' a' b''>16 -\staccato \arpeggio
							{
								af''16 \(
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							<af' fs''>32 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r16
						}
						{
							\afterGrace
							r4
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
							<ef'>16 -\staccato \)
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r4
							r8.
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							\afterGrace
							cs''16 -\staccato [
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
							\set stemRightBeamCount = 2
							cs''16 - \bendAfter #'4.0 -\staccato \)
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
							R1 * 1/8
						}
						{
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
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							<f'>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							ef''16 -\staccato
							\ottava #0
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							c''16 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							cs''32 -\staccato ]
							\ottava #0
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
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							f''16 -\staccato [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d''8 - \bendAfter #'-4.0 -\staccato ]
							\ottava #0
						}
					}
					{
						{
							r8
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								af'16 \(
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
							<c'>8 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<cs''>16 -\staccato ]
						}
					}
					{
						{
							r8
						}
						{
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							<c'>16 -\staccato [
							{
								af''16 \(
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							a''16 -\staccato \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								af'16 [ \(
								b'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a'16 -\staccato ] \)
						}
					}
					{
						{
							r16
							r8
						}
						{
							r8
							\afterGrace
							r16
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
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							a'8 -\staccato \) [
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
							a''8 - \bendAfter #'4.0 -\staccato ] \)
							\ottava #0
						}
					}
					{
						{
							r16
							r8
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
							r4.
							r8.
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
							\clef treble
							a'8 [ \glissando \startTextSpan
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
							r16
						}
						{
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
							g'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a'16. \glissando
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
							r16
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
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
						}
						{
							R1 * 5/8
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
							g'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b16. \glissando
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
							\set stemRightBeamCount = 2
							g'16. [ \glissando \startTextSpan
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							ef''32 ] \stopTextSpan
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
							r4.
							r4
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
							g'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b16. \glissando
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
							r16
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
							\set stemRightBeamCount = 2
							c'16 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							af'32 \glissando
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
							r8
						}
						{
							r4.
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
							\pitchedTrill
							<f' a' c'' e''>8 \p [ \startTrillSpan g''
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
							<a c' e'>8 ] \startTrillSpan a'
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							<> \stopTrillSpan
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
							\set stemRightBeamCount = 2
							g'16. [ \glissando \startTextSpan
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b32 ] \stopTextSpan
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
							a'16. [ \glissando \startTextSpan
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
							r8.
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
							\set stemRightBeamCount = 2
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
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 7/8
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
							cs'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 \glissando
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
							g'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b16. \glissando
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
							r8
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
							r4
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
							\set stemRightBeamCount = 1
							\clef treble
							c'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16. \glissando
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
							r4
							r4
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
							\set stemRightBeamCount = 2
							cs'16. [ \glissando \startTextSpan
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
							r4.
							r4
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\pitchedTrill
							e'8 \p [ \startTrillSpan g'
							<> \stopTrillSpan
							\once \override TrillSpanner.bound-details.left.text = \markup {
								\null
								}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							\pitchedTrill
							f'8 ] \startTrillSpan bf'
							<> \stopTrillSpan
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
							R1 * 1/2
						}
						{
							R1 * 5/8
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
							c'8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16. \glissando
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
							r8
							r4
						}
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
							d'16. [ \glissando \startTextSpan
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
							r8.
							r8.
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
							\set stemRightBeamCount = 2
							cs'16 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b'32 \glissando
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
							r4
							r2
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/8
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
							a'16. [ \glissando \startTextSpan
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
							r8.
							r4
							r8.
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
							\set stemRightBeamCount = 2
							cs'16 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b'32 \glissando
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
							r4
							r16
						}
					}
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
							\pitchedTrill
							<
								b
								\tweak #'color #red
								d'
								f'
							>16 \p ~ \startTrillSpan bf'
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
							<b d' f'>16
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							\pitchedTrill
							<c' e' g'>16 ] \startTrillSpan bf'
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							<> \stopTrillSpan
						}
					}
					{
						{
							r16
							r4.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/8
						}
						{
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
							r4
						}
						{
							r2
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
							\set stemRightBeamCount = 2
							f'16 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b'32 \glissando
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
							r2
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
						R1 * 7/8
					}
					{
						R1 * 1/2
					}
					{
						R1 * 5/8
					}
					{
						R1 * 7/8
					}
					{
						R1 * 7/8
					}
					{
						R1 * 7/8
					}
					{
						R1 * 7/8
					}
					{
						R1 * 3/16
					}
					{
						R1 * 7/8
					}
					{
						R1 * 9/8
					}
					{
						R1 * 1/8
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
						R1 * 5/8
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r8.
							r4
						}
					}
					{
						\times 4/5 {
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
							\set stemRightBeamCount = 1
							g8 -\staccato \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 -\staccato ]
						}
					}
					{
						{
							r8
							r4
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
							f'8 -\staccato [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g8 -\staccato ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
							\stopStaff
							\startStaff
						}
						{
							r4
							r16
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							b8 -\staccato
						}
					}
					{
						{
							r16
							r8
						}
						{
							r4.
							r4
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 -\staccato [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
							\set stemRightBeamCount = 1
							f'8 -\staccato
						}
					}
					{
						{
							r4.
							\afterGrace
							r8
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
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							b8 -\staccato \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								d'16 [ \(
								f'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16 -\staccato ] \)
						}
					}
					{
						{
							r4
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
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 -\staccato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 -\staccato ]
						}
					}
					{
						{
							\afterGrace
							r2
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
							\set stemRightBeamCount = 1
							g8 -\staccato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8. ]
						}
					}
					{
						{
							r16
							r2.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/8
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 -\staccato [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16 -\staccato ]
						}
					}
					{
						{
							r16
							r2
						}
						{
							r4
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 -\staccato [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 -\staccato ]
						}
					}
					{
						{
							r4
						}
						{
							r8
							\afterGrace
							r16
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
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8 -\staccato \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 -\staccato ]
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
							R1 * 5/8
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
							\afterGrace
							r8.
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
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 -\staccato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8.
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 -\staccato ]
						}
					}
					{
						{
							r8
							r4
						}
						{
							r4.
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
							g'8 -\staccato [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 -\staccato \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f8 -\staccato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 -\staccato
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
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 -\staccato [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 -\staccato ]
						}
					}
					{
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								e'16 \(
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
							f8 -\staccato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							r8
							r2
						}
						{
							\afterGrace
							r8.
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
							\set stemRightBeamCount = 1
							r8.
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							a8 -\staccato
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								g'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 -\staccato ] \)
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
							R1 * 7/8
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 -\staccato [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f16 -\staccato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8. ]
						}
					}
					{
						{
							r4
						}
						{
							r4.
							r4
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
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
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/8
						}
						{
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
							\afterGrace
							e'8 -\staccato [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								f16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 -\staccato \)
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
							R1 * 7/8
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								c'16 [ \(
								e'16 ]
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
							a8 -\staccato \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8.
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g'16 -\staccato ]
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
							\set stemRightBeamCount = 2
							a16 :128 -\accent ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 :128 ]
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
							\afterGrace
							R1 * 7/8
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						{
							a4. :32 \)
						}
					}
					{
						{
							r2
						}
						{
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							a8 :64 -\accent
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
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							a8. :64
						}
					}
					{
						{
							r8.
							r2
						}
						{
							r8
						}
					}
					{
						{
							a4 :32 -\accent ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16 :128 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 :128 -\accent ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a16 :128
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 :128 ]
						}
					}
					{
						{
							r4
						}
						{
							r8.
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
							r2
						}
						{
							r4.
							r4
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
							\set stemRightBeamCount = 1
							a8. :64 \) [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 :64 ]
						}
					}
					{
						{
							r16
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
							a16 :128 -\accent ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 :128 ]
						}
					}
					{
						{
							r8.
						}
						{
							r2.
						}
					}
					{
						{
							a4 :32 ~
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							a16 :128 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 :128 ] \)
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							\afterGrace
							R1 * 1/8
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								\override Beam #'positions = #beam::place-broken-parts-individually
								a16 [ \(
								a16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							a8. :64 \)
						}
					}
					{
						{
							r4.
							r4
							r16
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							a8. :64 -\accent
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
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/8
						}
						{
							R1 * 5/8
							\bar "||"
							\stopStaff
							\startStaff
						}
					}
				}
			}
		>>
	>>
