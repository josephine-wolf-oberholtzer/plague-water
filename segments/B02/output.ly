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
				\mark \markup { \override #'(box-padding . 0.5) \box 2 }
				\tempo 4=80
				\time 3/8
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 6/16
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 6/8
				s1 * 3/4
			}
			{
				\time 6/16
				s1 * 3/8
			}
			{
				\time 9/16
				s1 * 9/16
			}
			{
				s1 * 9/16
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								d16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f32 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								d32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\afterGrace
								f16.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d'32 ] \) )
							}
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								ef32 ~ (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								ef32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs'32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								\afterGrace
								cs'16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								f32 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								f32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								c'32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								ef32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								f32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								\afterGrace
								d16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 [ \(
									ef16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								d32 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								c32 )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
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
								c16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\pitchedTrill
								d4 \) \startTrillSpan f
								<> \stopTrillSpan
								\pitchedTrill
								af4 ~ \startTrillSpan df'
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								\afterGrace
								af8. [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								d8 ~ \) \startTrillSpan f
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d8
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
							}
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
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d32 \) (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								d32
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								af,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								bf,16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e,32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs32 ] )
							}
						}
					}
					{
						{
							r8.
						}
						{
							r8
						}
					}
					{
						{
							\times 8/9 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16. [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e,16
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e,32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								e32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs32
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs16 ] )
							}
						}
					}
					{
						{
							r8
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
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								cs32 \) [ (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								c'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								ef16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c16 ] )
							}
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
								d16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 10/11 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f32 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								ef32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								c32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								ef32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b,16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								ef'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs'16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b,32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								f32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs'32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								b32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								ef'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b32 ] )
							}
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16. [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d32 \) (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b,32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								\afterGrace
								b16.
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 [ \(
									ef16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 6/7 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								d'32 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32 )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
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
								c16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\pitchedTrill
								d4 \) \startTrillSpan g
								<> \stopTrillSpan
								\pitchedTrill
								b4 ~ \startTrillSpan c'
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								b16 [
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								bf,8 ~ \startTrillSpan df
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								bf,8
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								r8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c16 \(
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
							r16
						}
						{
							r8.
						}
					}
					{
						{
							\times 8/9 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								r16 [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32 \) (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e16.
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								\afterGrace
								cs16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								e32
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 10/11 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								cs32
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs16 ] )
							}
						}
					}
					{
						{
							r16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\clef treble
							c'8
						}
						{
							ef''4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							cs'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16
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
							\set stemRightBeamCount = 1
							c'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af'8 ]
						}
					}
					{
						{
							r8
							r8.
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af'8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							bf'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ]
						}
						{
							bf'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf'16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf'16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8. ]
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
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs''16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''16 ]
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
							\set stemRightBeamCount = 2
							e'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs''8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8. ]
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\clef bass
							ef,8
						}
						{
							d4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b,,8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\ottava #-1
							c,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c,16
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
							\set stemRightBeamCount = 1
							ef,8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f,16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf,8 ]
						}
					}
					{
						{
							r8
							r8.
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf,16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf,8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af,8 ]
						}
						{
							b,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b,16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b,16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs8. ]
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
							\set stemRightBeamCount = 1
							cs8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e16 ]
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
							\set stemRightBeamCount = 2
							cs16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e8. ]
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						\stopStaff
						\once \override Staff.StaffSymbol.line-count = 1
						\startStaff
						R1 * 3/8
					}
					{
						R1 * 3/4
					}
					{
						R1 * 3/8
					}
					{
						R1 * 3/4
					}
					{
						R1 * 3/4
					}
					{
						R1 * 3/8
					}
					{
						R1 * 9/16
					}
					{
						R1 * 9/16
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
							\set stemLeftBeamCount = 0
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
						}
						{
							d'4 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							g4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16
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
							\set stemRightBeamCount = 1
							b8
						}
					}
					{
						{
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
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ] \)
						}
					}
					{
						{
							r8
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
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g16 ~ \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							g8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\afterGrace
							d'16 \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							\afterGrace
							g8 ] \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							d'4 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f'16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							g16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8. ]
						}
					}
					{
						{
							\afterGrace
							r8.
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							g8 \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
						}
					}
					{
						{
							r8
							\afterGrace
							r8
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
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							d'8 \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g16 ~ \)
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
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16 ~ \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8. ]
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						{
							\set stemLeftBeamCount = 0
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
						}
						{
							c'4 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8
						}
					}
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
					{
						{
							f4 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16
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
							\set stemRightBeamCount = 1
							a8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							c'16 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8 ] \)
						}
					}
					{
						{
							r8
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f16 [ \(
								a16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 ~ \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							c'8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							\afterGrace
							f8 ]
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							c'4 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							\afterGrace
							g'16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8. ] \)
						}
					}
					{
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 [ \(
								e'16 ]
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
							g'8 \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
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
							\set stemRightBeamCount = 2
							\afterGrace
							c'16 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8. ]
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8
						}
						{
							c'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							a4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16
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
							\set stemRightBeamCount = 1
							c'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 ]
						}
					}
					{
						{
							r8
							r8.
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 ]
						}
						{
							c'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8. ]
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
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
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
							\set stemRightBeamCount = 2
							c'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8. ]
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}