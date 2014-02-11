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
				\mark \markup { \override #'(box-padding . 0.5) \box 16 }
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								ef32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b32 -\staccato ]
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
								\set stemRightBeamCount = 3
								cs32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								ef32 -\staccato
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs32 -\staccato ]
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								bf,32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 6/7 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								bf,32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
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
								\set stemRightBeamCount = 3
								af32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								bf32 -\staccato ]
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								bf,32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								cs32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32 -\staccato
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16.
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								e32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16.
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								e32 -\staccato ]
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								d32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								f32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
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
								\set stemRightBeamCount = 3
								c32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d32 -\staccato
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c32 -\staccato ]
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b,32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								bf,32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
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
								\set stemRightBeamCount = 3
								bf,32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b,32 -\staccato ]
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b,32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								af32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								e,32 -\accent [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						{
							\times 4/5 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e,32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16.
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e,32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								e,32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs32 -\staccato ]
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef "treble"
								ef'16 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f''16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16 -\staccato
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
							r4
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
								\set stemRightBeamCount = 2
								ef'16 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d''16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf''16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16 -\staccato
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
							r16
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\grace {
									\override Stem #'length = #8
									c''16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs''16 -\accent \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e''8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e''16 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs'''16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e''16 -\staccato ]
								\revert Stem.stemlet-length
							}
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
						c'4 \< \ppp
					}
					{
						c'8.
					}
					{
						c'8 ~
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
						c'8 ~ \< \sfp
						c'32
						c'32 \ff
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
						c'8 ~ \> \f
						c'32
						c'32 \p
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
						\override Hairpin #'stencil = #constante-hairpin
						c'16 \< \ppp
					}
					{
						c'8 ~
						c'32
						c'32 \!
						\revert Hairpin #'stencil
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						{
							\times 4/5 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\clef "bass"
								c16 -\accent [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d8 -\staccato
								\grace {
									\override Stem #'length = #8
									cs16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c8 -\staccato ] \)
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
							\times 4/5 {
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\grace {
									\override Stem #'length = #8
									f16 [ \(
									b,16 ]
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs16 -\accent \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								c'8 -\staccato
								{
									\override Stem #'length = #8
									ef16 \(
									\revert Stem #'length
								}
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d16 -\accent \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								r8
								{
									\override Stem #'length = #8
									c'16 \(
									\revert Stem #'length
								}
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d'16 -\accent \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								af8 -\staccato
								\grace {
									\override Stem #'length = #8
									c16 \(
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d8 -\staccato ] \)
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
							\times 3/4 {
								\grace {
									\override Stem #'length = #8
									c'16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d16 -\accent \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								af16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
								\revert Stem.stemlet-length
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
							r16
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\grace {
									\override Stem #'length = #8
									c'16 \(
									\revert Stem #'length
								}
								\override Stem.stemlet-length = 1.5
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\clef "treble"
								cs'16 -\accent \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 -\staccato
								\grace {
									\override Stem #'length = #8
									c'16 [ \(
									ef'16 ]
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs'16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
								\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8 [
						}
						{
							\grace {
								\override Stem #'length = #8
								b16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 ~ \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ]
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
							\grace {
								\override Stem #'length = #8
								f'16 [ \(
								g16 ]
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 ~ \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b16
						}
						{
							\grace {
								\override Stem #'length = #8
								d'16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							f'16 \)
							{
								\override Stem #'length = #8
								g16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 ] \)
							\revert Stem.stemlet-length
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
						{
							\grace {
								\override Stem #'length = #8
								d'16 \(
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 ~ \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f'16
						}
						{
							\grace {
								\override Stem #'length = #8
								g16 \(
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							\afterGrace
							b8. ] \)
							{
								\override Stem #'length = #8
								d'16 \(
								\revert Stem #'length
							}
						}
						{
							f'4 \)
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
							\grace {
								\override Stem #'length = #8
								g16 [ \(
								b16 ]
								\revert Stem #'length
							}
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							d'16 \) [
							{
								\override Stem #'length = #8
								f'16 \(
								\revert Stem #'length
							}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g8. ] \)
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f8 [
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
							c'8 ]
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
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8. ]
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
							f8
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
							a8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8. [
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
							g'8 ]
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
							a8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ]
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
							\set stemRightBeamCount = 1
							e'8
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ]
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
							e'8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
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
							e'16 [
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
							c'8 ]
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 1.5
							\set stemRightBeamCount = 1
							e'8
							\revert Stem.stemlet-length
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