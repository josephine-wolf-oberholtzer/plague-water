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
				\mark \markup { \override #'(box-padding . 0.5) \box 5 }
				\tempo 4=80
				\time 3/4
				s1 * 3/4
			}
			{
				\time 6/8
				s1 * 3/4
			}
			{
				\time 3/8
				s1 * 3/8
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
				\time 3/8
				s1 * 3/8
			}
			{
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							r4
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d32 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								ef32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								ef32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								ef32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								c'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								ef'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d'32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16
							}
						}
						{
							\times 2/3 {
								\grace {
									\override Stem #'length = #8
									c'16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								ef'32 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs'32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								ef'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								f'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								c32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								c32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d'32 )
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
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
							{
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16. [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								d32 (
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 6/7 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								c32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs'32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d32
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								af32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf,32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								bf32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b,16
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d32 \) )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							\afterGrace
							r8
							{
								\override Stem #'length = #8
								c16 \(
								\revert Stem #'length
							}
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
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
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								af16 [
								<> \stopTrillSpan
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d32 ]
								\revert Stem.stemlet-length
							}
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
							{
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								d32 [ (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af,32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf,16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								bf,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b32
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e16
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
								\set stemRightBeamCount = 2
								cs16
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								e32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs16.
								\grace {
									\override Stem #'length = #8
									c16 [ \(
									ef16 ]
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								cs32 \)
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 6/7 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
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
							r16
						}
					}
					{
						{
							\times 2/3 {
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								cs32 \) [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
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
								\set stemRightBeamCount = 2
								e,32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs16 ] )
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
							\times 2/3 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e,32 ~ (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e,32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs32
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
								\set stemRightBeamCount = 2
								e32 )
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
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
							r16
						}
					}
					{
						{
							{
								\grace {
									\override Stem #'length = #8
									f'16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b32 \) [ (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								c'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f16
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
								\set stemRightBeamCount = 2
								f16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs'16
								\grace {
									\override Stem #'length = #8
									d'16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f'32 \)
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs'32
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								ef'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								c'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								ef'32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								ef'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								f'32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs'32 ] )
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
							\times 4/5 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								c'32 [ (
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								cs'32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								ef'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								c'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								ef32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								bf16 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								bf32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16
							}
						}
						{
							{
								\grace {
									\override Stem #'length = #8
									c'16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								d'32 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\grace {
									\override Stem #'length = #8
									c'16 [ \(
									ef16 ]
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d32 ] \) )
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
							\times 3/4 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d32 (
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf32
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
							\times 6/7 {
								\grace {
									\override Stem #'length = #8
									c'16 \(
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
								bf32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								bf32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32 ~
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								bf32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b32 )
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
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
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\pitchedTrill
								cs8 \) \startTrillSpan fs [
								<> \stopTrillSpan
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\pitchedTrill
								e8 ~ \startTrillSpan f
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e16
								<> \stopTrillSpan
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								\pitchedTrill
								cs8 ] \) \startTrillSpan e
								\revert Stem.stemlet-length
								<> \stopTrillSpan
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
							\times 2/3 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								cs32 (
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e16
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
								e32 ~
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs'32
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
							r8.
							r8
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								e32 [ (
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
				}
			}
		>>
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\context Voice = "Piano RH Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
							\clef "treble"
							c''4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
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
							d''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d''16
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b''8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf'16 ]
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
							\set stemRightBeamCount = 1
							bf'8.
						}
						{
							af''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af''16
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
							b'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d''8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e''8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e''8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs''8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''16 ]
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
							\set stemRightBeamCount = 1
							e''8.
							\revert Stem.stemlet-length
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
			\context Dynamics = "Piano Dynamics" {
				{
					{
						c'8.. \> \f
						c'32 \p
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						c'16. \< \ppp
						c'32 \!
						\revert Hairpin #'stencil
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						c'4 ~ \< \sfp
						c'32
						c'32 \ff
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
						c'8 \> \f
					}
					{
						c'8.
					}
					{
						c'8.
					}
					{
						c'32
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
						c'8. \< \ppp
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
						r8.
					}
				}
				{
					{
						c'8 \< \sfp
					}
					{
						c'8
					}
					{
						c'16.
						c'32 \ff
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						c'8 \> \f
					}
					{
						c'8
					}
					{
						c'8
					}
					{
						c'32
						c'32 \p
					}
				}
				{
					{
						r8.
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						c'8 ~ \< \ppp
						c'32
						c'32 \!
						\revert Hairpin #'stencil
					}
				}
				{
					{
						r16
						r4
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
							\clef "bass"
							ef,4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
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
							f,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f,16
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #-1
							f,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d,8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							bf,,16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf,,8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,,16 ]
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
							\set stemRightBeamCount = 1
							b,,8.
						}
						{
							bf,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf,16
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
							d,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af,8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #-1
							e,,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs,8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e,,8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs,,16 ]
							\ottava #0
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
							\set stemRightBeamCount = 1
							\ottava #-1
							cs,,8.
							\ottava #0
							\revert Stem.stemlet-length
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
			\context Dynamics = "Piano Pedals" {
				{
					{
						s1 * 1/4 \sustainOn
						<> \sustainOff
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8 \sustainOn
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						s1 * 5/16 \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 3/16
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 3/16
					}
					{
						s1 * 1/16
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						s1 * 3/16 \sustainOn
					}
					{
						s1 * 5/16
						<> \sustainOff
					}
				}
				{
					{
						r8.
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8 \sustainOn
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8
					}
					{
						s1 * 1/8
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 1/16
						<> \sustainOff
					}
				}
				{
					{
						r8.
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 3/16 \sustainOn
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r16
						r4
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
							g4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\grace {
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							d'8 \)
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
							f'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b16
						}
						{
							\grace {
								\override Stem #'length = #8
								d'16 [ \(
								f'16 ]
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g16 ~ \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							g8
							{
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ] \)
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
								f'16 \(
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							g8. \)
							{
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
						}
						{
							d'4 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16
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
							\grace {
								\override Stem #'length = #8
								f'16 \(
								\revert Stem #'length
							}
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
							\set stemRightBeamCount = 1
							d'8 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b8
						}
						{
							\grace {
								\override Stem #'length = #8
								d'16 [ \(
								f'16 ]
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							g8 \)
							{
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ] \)
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
							\grace {
								\override Stem #'length = #8
								f'16 \(
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							g8. \)
							\revert Stem.stemlet-length
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
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
							f4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\grace {
								\override Stem #'length = #8
								a16 \(
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							c'8 \)
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
							e'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16
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
							\grace {
								\override Stem #'length = #8
								g'16 \(
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f8 \) [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							c'8
							{
								\override Stem #'length = #8
								e'16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g'16 ] \)
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
								f16 [ \(
								a16 ]
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							c'8. \)
							{
								\override Stem #'length = #8
								e'16 \(
								\revert Stem #'length
							}
						}
						{
							g'4 ~ \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							g'16
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
							f8 [
						}
						{
							\grace {
								\override Stem #'length = #8
								a16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g'8 [
						}
						{
							\grace {
								\override Stem #'length = #8
								f16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 \)
						}
						{
							\grace {
								\override Stem #'length = #8
								c'16 [ \(
								e'16 ]
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							g'8 \)
							{
								\override Stem #'length = #8
								f16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ] \)
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
							\set stemRightBeamCount = 1
							c'8.
							\revert Stem.stemlet-length
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
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						{
							\override Stem.stemlet-length = 1.5
							a4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
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
							e'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
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
							\set stemRightBeamCount = 1
							c'8.
						}
						{
							e'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16
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
							a8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
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
							\set stemRightBeamCount = 1
							c'8.
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}