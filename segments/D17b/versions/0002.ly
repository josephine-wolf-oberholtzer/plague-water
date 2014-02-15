\version "2.19.1"
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
				\time 3/16
				s1 * 3/16
			}
			{
				s1 * 3/16
			}
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c''
				\context Voice = "Saxophone Voice" {
					{
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								af,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							b,4 \)
							f4
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
							\afterGrace
							af,16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								b,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d32 ] \)
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
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
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
							d,16 \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af,16
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
							d,16 ]
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
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af,16 ]
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
					{
						{
							r8.
							r4
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
							e,16
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							af,32
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d,8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							e,8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								af,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d8 ] \)
						}
					}
					{
						{
							r8
							\afterGrace
							r16
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
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							cs,8 \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
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
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
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
							c,16 \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r16
							r4.
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d16 ]
						}
					}
					{
						{
							r4
							r16
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b,16 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 ]
						}
					}
					{
						{
							r16
							r8
						}
						{
							r4
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								af,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs,8 \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 ]
						}
					}
					{
						{
							r8
						}
						{
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b,16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b,16
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g,16 ]
						}
					}
					{
						{
							r16
						}
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
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
							\afterGrace
							a,16 \) [
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a,16 ] \)
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
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								f'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g'16 \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							af''32
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
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								g'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
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
							e'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f''16 ]
						}
					}
					{
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								f'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af''8 ]
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
							e'8 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								f''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''16 ] \)
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
								\stopStaff
								\startStaff
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
							d''16 \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f''16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16 ]
						}
					}
					{
						{
							r8.
							r4
						}
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								g'16 [ \(
								af'16 ]
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
							d''16 \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								g''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f''16 ] \)
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
							cs''16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf'16 ]
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
							\stopStaff
							\startStaff
						}
						{
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
							ef'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c''16 ]
						}
					}
					{
						{
							r16
							r8
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							ef'16 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								af''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c''16 ] \)
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
							\afterGrace
							d''16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								af''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ] \)
						}
					}
					{
						{
							r16
							r4
						}
						{
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
							b'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f''8 ]
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
							f'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							f'16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								af''16 [ \(
								b'16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a'16 ] \)
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							g'16 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								af''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							a'32 \)
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
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
							\set stemRightBeamCount = 2
							\ottava #1
							\clef treble
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
							f'''8 [ \glissando \startTextSpan
						}
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
							c''''16 [ \glissando \startTextSpan
						}
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
							a'''8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs''''16. \glissando
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
							d''''16 [ \glissando \startTextSpan
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
							d''''8 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a'''8 \glissando
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
							r16
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
							\ottava #1
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
							d''''8 [ \glissando \startTextSpan
						}
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
							r16
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
							b'''16 [ \glissando \startTextSpan
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c''''16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'''8 \glissando
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
							r16
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						{
							r4.
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
							\ottava #-1
							\clef bass
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
							\afterGrace
							r4.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								\ottava #-1
								b,,,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							d,,4 \)
							e,,4
							\ottava #0
						}
						\times 2/3 {
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #-1
							f,,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af,,16
							\ottava #0
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #-1
							\afterGrace
							d,16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								af,,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d,,32 ] \)
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
							R1 * 7/8
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
							r16
						}
						{
							r4..
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
							r2
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #-1
							d,,16
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							ef,,32
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c,,8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							cs,,8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								af,,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,8 ] \)
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
							R1 * 7/16
						}
						{
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
						R1 * 3/16
					}
					{
						R1 * 7/16
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
						R1 * 7/8
					}
					{
						R1 * 3/16
					}
					{
						R1 * 11/16
					}
					{
						R1 * 3/16
					}
					{
						R1 * 5/8
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
						R1 * 3/16
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
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							g16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							g16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ] \)
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
							f'8 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								g16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8 ] \)
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
						}
						{
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
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g16
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8 ]
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
							d'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g8
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 ]
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
							R1 * 11/16
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
							d'16
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							f'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ]
						}
					}
					{
						{
							r4.
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
							\afterGrace
							f'8 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								g16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b16 \)
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
							r8.
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								d'16 [ \(
								f'16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g16 \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\afterGrace
							d'16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								f'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16 ] \)
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
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						{
							r4.
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								f16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g'16 ]
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
							R1 * 7/16
						}
						{
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
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							f8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 ]
							g'4
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
							R1 * 7/8
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
							f8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 ]
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
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r2
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
							c'16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							g'32 \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							f8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 [ \(
								c'16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							e'8 \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								g'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 ] \)
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
							R1 * 7/16
						}
						{
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
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						{
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
							a16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							r8
							r4
						}
						{
							r16
						}
					}
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
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
						}
						{
							R1 * 7/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r4
						}
					}
					{
						\times 2/3 {
							r4
							\afterGrace
							a4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							e'4 \)
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
							R1 * 11/16
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
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
							e'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 ]
						}
					}
					{
						{
							r4
						}
						{
							r2
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
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
							R1 * 5/16
						}
						{
							R1 * 3/16
						}
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
		>>
	>>
}