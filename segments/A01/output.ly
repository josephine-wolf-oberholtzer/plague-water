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
				\mark \markup { \override #'(box-padding . 0.5) \box 1 }
				\tempo 4=64
				\time 2/4
				s1 * 1/2
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				s1 * 1/4
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 2/8
				s1 * 1/4
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
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								c'32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f'32 -\staccato ]
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
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								c'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d'32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								f32 -\staccato ]
							}
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
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								af32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d'32 -\staccato
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 6/7 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								af32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
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
								\set stemRightBeamCount = 3
								af32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								bf32 -\staccato ]
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
							\times 6/7 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								e32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs'32 -\staccato
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs'32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16.
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs'32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e'32 -\staccato
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
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								ef32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
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
								\set stemRightBeamCount = 3
								cs'32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								ef'32 -\staccato
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b32 -\staccato ]
							}
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
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								bf32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								bf32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								b32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
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
								\set stemRightBeamCount = 3
								bf32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b32 -\staccato ]
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
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								d'32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								bf32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								cs'32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs'32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16.
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								e'32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs'32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								e32 -\accent \ff
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs'32 -\staccato ]
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
				\clef "treble"
				\context Voice = "Piano RH Voice" {
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef'16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
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
								b'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs''16 -\accent \sfz \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c''8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
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
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								bf'16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 -\staccato ]
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
							R1 * 1/4
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs''16 -\accent \sfz \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e''8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs''8 -\staccato ]
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
					{
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e''16 -\accent \sfz
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs'''8 -\staccato ]
							}
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\clef "bass"
				\context Voice = "Piano LH Voice" {
					{
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								c16 -\accent \sfz [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f16 -\staccato \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c16 [ \(
								ef16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d16 -\accent \sfz \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								ef8 -\staccato
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16 -\accent \f
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'16 -\staccato
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
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d16 -\accent \ff \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						{
							r16
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
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d16 -\accent \sfz \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								bf16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/4
						}
						{
							R1 * 1/4
						}
						{
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
								c'16 \(
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
								\set stemRightBeamCount = 2
								\clef "treble"
								cs'16 -\accent \sfz \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e'16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
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
						s1 * 1/4 \sustainOn
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 3/16
					}
					{
						s1 * 3/16
						<> \sustainOff
						\LV
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
						s1 * 3/16 \sustainOn
						<> \sustainOff
					}
				}
				{
					{
						\stopStaff
						\once \override Staff.StaffSymbol.line-count = 1
						\startStaff
						R1 * 1/4
						\stopStaff
						\startStaff
					}
					{
						r16
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
						s1 * 1/16 \sustainOn
					}
					{
						s1 * 3/16
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
							g8 [ \< \mp
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
							d'8 ~ \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ] \f
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
								\override Stem #'length = #8
								f'16 [ \(
								g16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 ~ \) [ \< \mp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							\afterGrace
							b16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								d'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							f'16 \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								g16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 ] \f \)
						}
					}
					{
						{
							r8
						}
						{
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								d'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 ~ \) [ \< \mp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							\afterGrace
							f'16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								g16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							\afterGrace
							b8. ] \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								d'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
						{
							f'4 \f \)
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
								g16 [ \(
								b16 ]
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
							d'16 \) [ \< \mp
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
							g8. ] \f \)
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/4
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f8 [ \< \mp
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ] \f
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
							\set stemRightBeamCount = 1
							e'8 [ \< \mp
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8. ] \f
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							f8 \mp
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
							\set stemRightBeamCount = 1
							a8 \mp ~ [
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
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8. [ \< \mp
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8 ] \f
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
							a8 [ \< \mp
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ] \f
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\set stemRightBeamCount = 1
							e'8 \mp
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8. [ \< \mp
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ] \f
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
							\set stemRightBeamCount = 1
							e'8. [ \< \mp
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ] \f
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
							e'16 [ \< \mp
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ] \f
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
							\set stemRightBeamCount = 1
							e'8 \mp
						}
					}
					{
						{
							r8
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}