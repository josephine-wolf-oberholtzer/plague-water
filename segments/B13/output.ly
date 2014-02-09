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
				\mark \markup { \override #'(box-padding . 0.5) \box 13 }
				\tempo 4=80
				\time 6/8
				s1 * 3/4
			}
			{
				\time 9/16
				s1 * 9/16
			}
			{
				\time 6/16
				s1 * 3/8
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 9/16
				s1 * 9/16
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							r4
							r16
						}
					}
					{
						{
							\times 4/5 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c32 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								c32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b,32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								ef32
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d32
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs16.
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c'32 ] )
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f32 [ (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								cs32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef16
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 6/7 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								c32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c16 ] )
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\pitchedTrill
								b,8 \startTrillSpan d [
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								af8 ~ \startTrillSpan df'
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								af32
								<> \stopTrillSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								af,32 ]
								\revert Stem.stemlet-length
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
							\times 4/5 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b,32 ~ (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								af,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b,32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								bf,16
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								d32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								af16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								bf,32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								cs32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e16. )
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								e,32
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs32
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e32 )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
								\revert Stem.stemlet-length
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 6/7 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e,32 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e,32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e,16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs,32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs,16 ] )
								\revert Stem.stemlet-length
							}
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
							r4
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f32 [ (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								ef32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								f32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								ef32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f16
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								c'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								d32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								c'32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								c'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								ef32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b,32 ] )
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
							\times 4/5 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								ef32 [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								c32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								ef32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								f32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b,16 ] )
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
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b,32 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf,32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								af,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 10/11 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								af,32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
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
							r8
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\override Stem.stemlet-length = 0.75
								\pitchedTrill
								bf,4 \startTrillSpan ef
								<> \stopTrillSpan
								\pitchedTrill
								e4 ~ \startTrillSpan f
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 3
								e32 [
								<> \stopTrillSpan
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs16 ]
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
							\times 8/9 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs32 (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
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
								cs32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs16
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
								\set stemRightBeamCount = 0
								cs16 ] )
								\revert Stem.stemlet-length
							}
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								cs32 [ (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								e32 ] )
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
			\context Dynamics = "Guitar Pedals" {
			}
		>>
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" <<
				\context Voice = "Piano RH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\clef "treble"
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
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs''8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 ]
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d'16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							e'8.
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\clef "bass"
							e'8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e8 ]
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
							\override Stem.stemlet-length = 0.75
							e8
							\revert Stem.stemlet-length
						}
					}
				}
			>>
			\context Dynamics = "Piano Dynamics" {
				{
					{
						\override Stem.stemlet-length = 0.75
						c'4 ~ \> \f
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 3
						c'32 [
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
						\revert Stem.stemlet-length
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
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 [ \< \ppp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8.
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8..
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
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
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8. [ \< \sfp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8.
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16.
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
						\revert Stem.stemlet-length
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
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 2
						c'16 [ \> \f
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8..
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
						\revert Stem.stemlet-length
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
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 [ \< \ppp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8 ~
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
						\revert Stem.stemlet-length
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
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 ~ [ \< \sfp
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
						\revert Stem.stemlet-length
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
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8. [ \> \f
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8..
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
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
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 2
						c'16. [ \< \ppp
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
						\revert Stem.stemlet-length
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" <<
				\context Voice = "Piano LH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\clef "bass"
							ef,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef,16
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs,8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs,16 ]
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #-1
							b,,8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af,8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af,,8 ]
							\ottava #0
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #-1
							af,,16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b,,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af,,8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af,,16 ]
							\ottava #0
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #-1
							b,,16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b,,16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							af,,16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d,,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d,,16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d,,8 ]
							\ottava #0
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\ottava #-1
							cs,,8.
							\ottava #0
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #-1
							cs,,8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs,,8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,,8 ]
							\ottava #0
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
							\override Stem.stemlet-length = 0.75
							\ottava #-1
							cs,,8
							\ottava #0
							\revert Stem.stemlet-length
						}
					}
				}
			>>
			\context Dynamics = "Piano Pedals" {
				{
					{
						\override Stem.stemlet-length = 0.75
						s1 * 5/16 \sustainOn
						<> \sustainOff
						\revert Stem.stemlet-length
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
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/8 \sustainOn
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 3/16
					}
					{
						s1 * 1/4
						<> \sustainOff
						\LV
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
						\override Stem.stemlet-length = 0.75
						s1 * 3/16 \sustainOn
					}
					{
						s1 * 3/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
						\revert Stem.stemlet-length
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
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/16 \sustainOn
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/16
					}
					{
						s1 * 1/4
						<> \sustainOff
						\LV
						\revert Stem.stemlet-length
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
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 3/16
						<> \sustainOff
						\revert Stem.stemlet-length
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
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 3/16 \sustainOn
						<> \sustainOff
						\LV
						\revert Stem.stemlet-length
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
						\override Stem.stemlet-length = 0.75
						s1 * 3/16 \sustainOn
					}
					{
						s1 * 1/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/4
						<> \sustainOff
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
						\override Stem.stemlet-length = 0.75
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/8 \sustainOn
						\LV
						\revert Stem.stemlet-length
					}
				}
			}
		>>
		\context PercussionStaffGroup = "Percussion Staff Group" <<
			\context PercussionStaff = "Percussion Staff" {
				\clef "percussion"
				\context Voice = "Percussion Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							d'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf'8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf'8 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf'16 [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf'8. ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf'16 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d'16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							bf'16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							af'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af'8 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							e'8.
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
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
							\override Stem.stemlet-length = 0.75
							e'8
							\bar "||"
							\revert Stem.stemlet-length
						}
					}
				}
			}
		>>
	>>
}