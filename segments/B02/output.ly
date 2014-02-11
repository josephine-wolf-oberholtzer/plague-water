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
							r8
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
							}
						}
						{
							\times 4/5 {
								\grace {
									\override Stem #'length = #8
									d16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								f32 \) (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d32 )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
								\revert Stem.stemlet-length
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 10/11 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								ef32 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								c32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs'32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								ef32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								ef32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\afterGrace
								f16
								{
									\override Stem #'length = #8
									cs16 \(
									\revert Stem #'length
								}
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 6/7 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c'32 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								c32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d16
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								c'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs32 ] )
								\revert Stem.stemlet-length
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\pitchedTrill
								d4 \) \startTrillSpan f
								<> \stopTrillSpan
								\pitchedTrill
								af4 ~ \startTrillSpan df'
							}
						}
						{
							\times 2/3 {
								af4
								<> \stopTrillSpan
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								d8 ~ \) \startTrillSpan f [
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
								\set stemRightBeamCount = 0
								bf,8 ]
								\revert Stem.stemlet-length
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 10/11 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								af,32 [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b,16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e,32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs32 ] )
								\revert Stem.stemlet-length
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
							\times 4/5 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e,32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								\afterGrace
								e16
								{
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 10/11 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e,16
								\set stemLeftBeamCount = 2
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
								\set stemRightBeamCount = 3
								cs32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								e,32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs16
								\grace {
									\override Stem #'length = #8
									c16 [ \(
									ef16 ]
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32 \) )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
								\revert Stem.stemlet-length
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
							r8
						}
					}
					{
						{
							{
								\grace {
									\override Stem #'length = #8
									d16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f32 \) [ (
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
								c'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								ef16 ] )
								\revert Stem.stemlet-length
							}
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 10/11 {
								\grace {
									\override Stem #'length = #8
									d16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f32 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs'16
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
								d32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b,16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								ef32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								f32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								f32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								ef'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								f32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								ef'32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								c'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f32 ] )
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16. [
								\grace {
									\override Stem #'length = #8
									c16 \(
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
								b16.
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 6/7 {
								\grace {
									\override Stem #'length = #8
									c'16 [ \(
									ef16 ]
									\revert Stem #'length
								}
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
								\revert Stem.stemlet-length
							}
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\pitchedTrill
								d4 \) \startTrillSpan g
								<> \stopTrillSpan
								\pitchedTrill
								bf4 ~ \startTrillSpan cf'
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								bf16 [
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								b,8 ~ \startTrillSpan d
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs8 ] \)
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
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
								e16.
							}
						}
						{
							{
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								cs32
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 10/11 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e32
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
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e16 ] )
								\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\clef "treble"
							c'8
						}
						{
							b'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							cs'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							b'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							ef'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d''8 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
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
							b'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af'16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
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
							\revert Stem.stemlet-length
						}
					}
				}
			}
			\context Dynamics = "Piano Dynamics" {
				{
					{
						c'8 \> \f
					}
					{
						c'4
					}
					{
						c'16.
						c'32 \p
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						c'4 ~ \< \ppp
						c'32
						c'32 \!
						\revert Hairpin #'stencil
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
						c'16. \< \sfp
						c'32 \ff
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						c'16 \> \f
					}
					{
						c'16.
						c'32 \p
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
						\override Hairpin #'stencil = #constante-hairpin
						c'4 \< \ppp
					}
					{
						c'16
					}
					{
						c'8
					}
					{
						c'4 ~
						c'32
						c'32 \!
						\revert Hairpin #'stencil
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
						c'8 \< \sfp
					}
					{
						c'16
					}
					{
						c'8 ~
						c'32
						c'32 \ff
					}
				}
				{
					{
						r8.
					}
				}
				{
					{
						c'8 \> \f
					}
					{
						c'16.
						c'32 \p
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
						\override Hairpin #'stencil = #constante-hairpin
						c'16 \< \ppp
					}
					{
						c'8
					}
					{
						c'8.
					}
					{
						c'8..
						c'32 \!
						\revert Hairpin #'stencil
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\clef "bass"
							ef,8
						}
						{
							cs4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b,,8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\ottava #-1
							c,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c,16
							\ottava #0
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							\ottava #-1
							cs,8
							\ottava #0
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d,16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af,8 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
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
							d,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d,16
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf,16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf,16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
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
							\revert Stem.stemlet-length
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/4 \sustainOff \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 5/16 \sustainOn
						<> \sustainOff
						\LV
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
						s1 * 1/8 \sustainOn
						<> \sustainOff
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/16 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
						\LV
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
						s1 * 1/4 \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 5/16
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8 \sustainOn
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/16
					}
					{
						s1 * 3/16
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r8.
					}
				}
				{
					{
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/16 \sustainOn
					}
					{
						s1 * 1/8
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 3/16
					}
					{
						s1 * 1/4
						\LV
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8
						}
						{
							\grace {
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
							d'4 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							g4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g16
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							b8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\grace {
								\override Stem #'length = #8
								d'16 [ \(
								f'16 ]
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							g16 \) [
							{
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ] \)
							\revert Stem.stemlet-length
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
							\grace {
								\override Stem #'length = #8
								f'16 \(
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g16 ~ \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g8.
						}
						{
							\grace {
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\afterGrace
							d'16 \)
							{
								\override Stem #'length = #8
								f'16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g8 ] \)
						}
						{
							\grace {
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
							d'4 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
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
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\afterGrace
							r8.
							{
								\override Stem #'length = #8
								d'16 [ \(
								f'16 ]
								\revert Stem #'length
							}
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8 \) [
						}
						{
							\grace {
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
							\revert Stem.stemlet-length
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
							\grace {
								\override Stem #'length = #8
								f'16 \(
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							g16 \) [
							{
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 \)
						}
						{
							\grace {
								\override Stem #'length = #8
								f'16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g16 ~ \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g8
						}
						{
							\grace {
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16 ~ \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8. ]
							\revert Stem.stemlet-length
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f8
						}
						{
							\grace {
								\override Stem #'length = #8
								a16 \(
								\revert Stem #'length
							}
							c'4 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\grace {
								\override Stem #'length = #8
								g'16 \(
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							f4 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							a8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							c'16 [
							{
								\override Stem #'length = #8
								e'16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8 ] \)
							\revert Stem.stemlet-length
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
							\grace {
								\override Stem #'length = #8
								f16 [ \(
								a16 ]
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 ~ \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8.
						}
						{
							\grace {
								\override Stem #'length = #8
								e'16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 ]
						}
						{
							\grace {
								\override Stem #'length = #8
								a16 \(
								\revert Stem #'length
							}
							c'4 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
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
								\override Stem #'length = #8
								f16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8. ] \)
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\afterGrace
							r8.
							{
								\override Stem #'length = #8
								c'16 [ \(
								e'16 ]
								\revert Stem #'length
							}
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g'8 \) [
						}
						{
							\grace {
								\override Stem #'length = #8
								f16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							c'16 [
							{
								\override Stem #'length = #8
								e'16 \(
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
							\revert Stem.stemlet-length
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							a4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							c'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
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
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
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
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
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
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
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
							\revert Stem.stemlet-length
						}
					}
				}
			}
		>>
	>>
}