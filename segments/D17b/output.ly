\version "2.19.1"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/plague-water-header.ly"
\include "../../stylesheets/plague-water-layout.ly"
\include "../../stylesheets/plague-water-paper.ly"

\score {
	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket #'color = #red
	} <<
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
				\time 11/16
				s1 * 11/16
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
				\time 5/16
				s1 * 5/16
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
				s1 * 7/16
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				s1 * 3/16
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								ef,4 \)
								cs4
							}
						}
					}
					{
						{
							r4
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								ef,16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
							}
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
							r16
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								\afterGrace
								r32 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef,16 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								d32
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
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
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								f,16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,16 \(
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
						{
							r8
						}
						{
							r8.
							r16
						}
					}
					{
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef,16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ]
							}
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
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c,16 [ \(
									ef,16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af,16
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								b,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d,16 \)
							}
						}
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
								bf,16 ]
							}
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d,8 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af,16 ]
							}
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
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								bf,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								\afterGrace
								r32
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								d,8 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c,16 [ \(
									ef,16 ]
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
						{
							r16
							r4
							r8
						}
					}
					{
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								af,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
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
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs,16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e16 ]
							}
						}
					}
					{
						{
							r4..
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								cs,16 \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c16 [ \(
									ef16 ]
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
						{
							r8.
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								cs,8 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e16 ]
							}
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
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs,16 ]
							}
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
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble_8"
				\context Voice = "Guitar Voice" {
					{
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								d''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f'16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								ef'16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								f'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs''8 ] \)
							}
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
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 ]
							}
						}
					}
					{
						{
							r16
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b'16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c''8 ]
							}
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
								ef'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\times 2/3 {
								\afterGrace
								d''4 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c''16 [ \(
									ef''16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d''8 \)
							}
						}
					}
					{
						{
							r16
						}
						{
							r8.
							r16
						}
					}
					{
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs''16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b'16 ]
							}
						}
					}
					{
						{
							r16
						}
						{
							\afterGrace
							r4..
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d''8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								bf'8 ]
							}
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
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								b'16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 ] \)
							}
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d''8 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af''16 ]
							}
						}
					}
					{
						{
							r16
							r8.
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								bf'16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d''16 \)
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c''16 [ \(
									ef'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d''16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								bf'16 ]
							}
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
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c''16 [ \(
									ef'16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								cs''16 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 ] \)
							}
						}
					}
					{
						{
							r8
						}
						{
							r8.
							r8
						}
					}
					{
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								r8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs''8 \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e''8 ]
							}
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
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8
								\afterGrace
								e'4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs''8 \)
							}
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
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c''16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs''16 \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e''32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							\clef treble
							c''''16. [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													KEYS
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							c''''16 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							g''''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							ef'''8 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b'''16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							g'''8 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													KEYS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d''''16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a'''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r8.
							r8
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							f'''16. [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							ef''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							b'''16. [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													KEYS
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							a'''8 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f''''16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							ef'''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							d''''8 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f''''16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							ef'''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							d''''8 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													KEYS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a'''16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f'''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r16
						}
						{
							r4..
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							ef'''8 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b'''16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							c''''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g'''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							d''''8 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													KEYS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a'''16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f'''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							d''''16. [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a'''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #-1
							\clef bass
							g,,16. [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #-1
							f,,8 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							ef,,16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b,,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
						}
						{
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #-1
							a,,,16. [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													KEYS
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r16
							r2
						}
						{
							r8
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								r8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #-1
									f,,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,,,8 \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs,8 ]
								\ottava #0
							}
						}
					}
					{
						{
							r16
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #-1
									c,,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d,,8 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af,,16 ]
								\ottava #0
							}
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
						{
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #-1
							g,,16. [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r8
							r4
						}
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #-1
							b,,,8 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													KEYS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c,16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #-1
							a,,,8 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b,,16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
							R1 * 5/16
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
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #-1
								\afterGrace
								cs,,8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								cs,4 \)
								\ottava #0
							}
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
							r8.
							r8
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
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #-1
							ef,,16 [ \glissando
								^ \markup {
									\pad-around
										#1
										\box
											\pad-around
												#1
												\small
													PEGS
									}
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b,,16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c,,16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
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
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						r4
					}
					{
						r8
						r8
					}
					{
						r8
						r8
					}
					{
						r4
					}
					{
						r4
					}
					{
						r8.
						r16
					}
					{
						r16
						r8
						r16
					}
					{
						r4
					}
					{
						r8
						r8
					}
					{
						r4
					}
					{
						r16
						r8
						r16
					}
					{
						r16
						r8
						r16
					}
					{
						r4
					}
					{
						r8.
						r16
					}
					{
						r8.
						r16
					}
					{
						r4
					}
					{
						r16
						r8.
					}
					{
						r16
						r8.
					}
					{
						r16
						r8.
					}
					{
						r4
					}
					{
						r4
					}
					{
						r4
					}
					{
						r4
					}
					{
						r4
					}
					{
						r8.
						r16
					}
					{
						r4
					}
					{
						r8
						r8
					}
					{
						r4
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
		>>
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
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d'16 ]
							}
						}
					}
					{
						{
							r16
							\afterGrace
							r2
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 ]
							}
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
							R1 * 11/16
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
							{
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
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f'8 ]
							}
						}
					}
					{
						{
							r4
						}
						{
							r4.
							r16
						}
					}
					{
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								d'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g16 ] \)
							}
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
							R1 * 7/8
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16
							}
						}
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
						{
							r8.
						}
						{
							r4..
							\afterGrace
							r8
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
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								g16 \) [
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
								\set stemRightBeamCount = 0
								r32 ]
							}
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
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								f'8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8 \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
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
								f16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
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
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g'16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f16 ]
							}
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
							r8
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
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
						{
							r16
						}
					}
					{
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								r8 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								g'8 \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 [ \(
									a16 ]
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
						{
							r4.
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									e'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								g'4 \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f8
							}
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
							R1 * 3/16
						}
						{
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
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								c'4 \)
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
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
							R1 * 7/16
						}
						{
							R1 * 7/16
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
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16
							}
						}
						{
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
							r8.
						}
					}
					{
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								r8 [
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
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 ] \)
								e'4
							}
						}
					}
					{
						{
							r16
							r4.
						}
						{
							r4
							r16
						}
					}
					{
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
						{
							r16
							r4
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
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
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16 \)
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								e'8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
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
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
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
							R1 * 7/16
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