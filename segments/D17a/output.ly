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
				\mark \markup { \override #'(box-padding . 0.5) \box 17A }
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
				s1 * 7/16
			}
			{
				\time 5/16
				s1 * 5/16
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
				\time 5/16
				s1 * 5/16
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
				s1 * 7/16
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
				s1 * 7/8
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
				\time 7/16
				s1 * 7/16
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				s1 * 3/16
			}
			{
				\time 5/16
				s1 * 5/16
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							r16
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c,16
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								ef,8 ]
								\revert Stem.stemlet-length
							}
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
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
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
						}
						{
							r8.
							r8
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d,16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								f32
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c16 ]
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\override Stem.stemlet-length = 0.75
								f,4
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								cs8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								ef,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b,8 ]
								\revert Stem.stemlet-length
							}
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
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
						{
							r8.
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs16 ]
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c,16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								ef8 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r4..
							r16
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								bf,8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b,16 ]
								\revert Stem.stemlet-length
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
						{
							r16
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								af,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d,16 ]
								\revert Stem.stemlet-length
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\override Stem.stemlet-length = 0.75
								af,4
								bf,4
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
							\times 3/4 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d,8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								bf,8 ]
								\revert Stem.stemlet-length
							}
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b,8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
								\revert Stem.stemlet-length
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								bf,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b,16 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r8
							r4
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d16 ]
								\revert Stem.stemlet-length
							}
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs,8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e,16 ]
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
							r16
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs,16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs32 ]
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
								\set stemRightBeamCount = 2
								e,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								cs32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e,8 ]
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
						{
							r4
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
								\revert Stem.stemlet-length
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
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e,16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs16 ]
								\revert Stem.stemlet-length
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e,8
								cs4
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e,8 [
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
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e,16 ]
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
						}
						{
							R1 * 5/16
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
							r16
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								ef'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								f''16
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d''16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f''16
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								ef''16 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r4
						}
						{
							r8.
							r16
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								ef'16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d''8 ]
								\revert Stem.stemlet-length
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
							R1 * 5/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d''8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs''16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 ]
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								ef'16 ]
								\revert Stem.stemlet-length
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
						{
							r8
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d''8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f''8 ]
								\revert Stem.stemlet-length
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d''8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								af''8 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r4.
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d''16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								af''32
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								bf'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16
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
								d''8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								bf'8 ]
								\revert Stem.stemlet-length
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								bf'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 ]
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								af''16 ]
								\revert Stem.stemlet-length
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								bf'16
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b'8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d''16 ]
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
							\times 5/8 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8
								af'4
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d''8
								\revert Stem.stemlet-length
							}
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								af'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								bf'32
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
						{
							r8.
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								af'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								bf'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 ]
								\revert Stem.stemlet-length
							}
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
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs''16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								cs''8 ]
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e''16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ]
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								cs''16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e''16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 ]
								\revert Stem.stemlet-length
							}
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								cs''16 ]
								\revert Stem.stemlet-length
							}
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs''16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								cs''16
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
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								cs''16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								e''32 ]
								\revert Stem.stemlet-length
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
							R1 * 5/16
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							\clef "treble"
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
							\revert Stem.stemlet-length
							\revert Tie #'stencil
						}
					}
					{
						{
							r16
							r2
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
						{
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
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
													PEGS
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							a'''16. [ \glissando
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
							f''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
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
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							ef'''16. [ \glissando
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
							b'''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
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
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							c''''8 [ \glissando
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
							\set stemRightBeamCount = 1
							g''''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d''''16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							a'''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
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
													KEYS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''''8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d''''16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							f'''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b'''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
						}
					}
					{
						{
							r8
							r4
						}
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
							\override Stem.stemlet-length = 0.75
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
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
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
							a'''16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f'''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
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
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
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
													KEYS
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
							\revert Stem.stemlet-length
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
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
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
													PEGS
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
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							ef'''16 [ \glissando
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c''''16 \glissando
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
							\revert Stem.stemlet-length
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
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							g'''16. [ \glissando
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
							d''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							c''''8 [ \glissando
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
							g''''16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
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
													KEYS
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
							\revert Stem.stemlet-length
							\revert Tie #'stencil
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
						{
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
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
													PEGS
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							g'''16. [ \glissando
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
							\revert Stem.stemlet-length
							\revert Tie #'stencil
						}
					}
					{
						{
							r16
						}
						{
							r2
						}
					}
					{
						{
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							a'''16. [ \glissando
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
							f''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							ef'''16. [ \glissando
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
							c''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
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
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
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
							d''''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a'''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
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
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							ef'''16 [ \glissando
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
							\set stemRightBeamCount = 3
							c''''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d''''32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
						}
					}
					{
						{
							r4
						}
					}
				}
			}
			\context Dynamics = "Piano Dynamics" {
				{
					{
						r8.
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						c'16. \< \p
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
				{
					{
						c'16. \> \mp
						c'32 \pp
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
						r16
					}
				}
				{
					{
						c'16. \< \p
						c'32 \mp
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
						\override Hairpin #'stencil = #constante-hairpin
						c'16. \< \p
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
						c'16. \> \mp
						c'32 \pp
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
						c'8 \< \p
					}
					{
						c'16.
						c'32 \mp
					}
				}
				{
					{
						r16
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						c'8.. \< \p
						c'32 \!
						\revert Hairpin #'stencil
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
						c'8 \> \mp
					}
					{
						c'8
					}
					{
						c'16
					}
					{
						c'32
						c'32 \pp
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						c'8 \< \p
					}
					{
						c'8
					}
					{
						c'16
					}
					{
						c'32
						c'32 \mp
					}
				}
				{
					{
						r8
						r4
					}
					{
						r8.
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						c'8 \< \p
					}
					{
						c'16.
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
						c'8 \> \mp
					}
					{
						c'16.
						c'32 \pp
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
						r16
					}
				}
				{
					{
						c'8 \< \p
					}
					{
						c'16.
						c'32 \mp
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
						c'8 \< \p
					}
					{
						c'8
					}
					{
						c'16.
						c'32 \!
						\revert Hairpin #'stencil
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
						c'8 \> \mp
					}
					{
						c'8
					}
					{
						c'8
					}
					{
						c'16
					}
					{
						c'16
					}
					{
						c'8
					}
					{
						c'8
					}
					{
						c'16.
						c'32 \pp
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						c'16. \< \p
						c'32 \mp
					}
				}
				{
					{
						r8
						r4
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						c'8 \< \p
					}
					{
						c'8
					}
					{
						c'8
					}
					{
						c'8
					}
					{
						c'16.
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
						c'8 \> \mp
					}
					{
						c'16.
						c'32 \pp
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
						c'8 \< \p
					}
					{
						c'8
					}
					{
						c'8..
						c'32 \mp
					}
				}
				{
					{
						r16
					}
				}
				{
					{
						\override Hairpin #'stencil = #constante-hairpin
						c'8. \< \p
					}
					{
						c'8..
						c'32 \!
						\revert Hairpin #'stencil
					}
				}
				{
					{
						r4
					}
				}
				{
					{
						c'16. \> \mp
						c'32 \pp
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
						r16
					}
				}
				{
					{
						c'16 \< \p
					}
					{
						c'16.
						c'32 \mp
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
						c'8 \< \p
					}
					{
						c'16.
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
						c'8 \> \mp
					}
					{
						c'16
					}
					{
						c'16
					}
					{
						c'32
						c'32 \pp
					}
				}
				{
					{
						r8
					}
				}
				{
					{
						c'8 \< \p
					}
					{
						c'16
					}
					{
						c'32
						c'32 \mp
					}
				}
				{
					{
						r4
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #-1
							\clef "bass"
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
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #-1
							f,,16. [ \glissando
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
							ef,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
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
						}
						{
							R1 * 3/16
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
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
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
													KEYS
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
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
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #-1
								b,,,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c,8 ]
								\ottava #0
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #-1
								f,,8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c,16 ]
								\ottava #0
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r8
							r2
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
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
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
													PEGS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g,,8 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a,,,16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							ef,,32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
						}
					}
					{
						{
							r8
							r4
						}
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #-1
							d,,16. [ \glissando
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
							a,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
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
													PEGS
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
							\revert Stem.stemlet-length
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
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\ottava #-1
								b,,,8
								af,,4
								\ottava #0
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r16
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
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
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
							b,,16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							g,,32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #-1
							ef,,8 [ \glissando
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
							c,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
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
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
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
													KEYS
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f,,8 \glissando
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
							\revert Stem.stemlet-length
							\revert Tie #'stencil
						}
					}
					{
						{
							r2
						}
						{
							r8.
							r8
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\ottava #-1
								e,,16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = -1
								e,,16 ]
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								e,,4
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e,,8 [
								\ottava #0
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
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\ottava #-1
								cs,,8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e,,16
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs,,8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								cs,,8
								\ottava #0
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
								\revert Stem.stemlet-length
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
							R1 * 3/16
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
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #-1
							b,,,16. [ \glissando
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
							g,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
						}
					}
					{
						{
							r8
							r4
						}
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
							\override Stem.stemlet-length = 0.75
							\override Tie #'stencil = ##f
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #-1
							ef,,8 [ \glissando
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
							b,,16. \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
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
					{
						{
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'left #'padding = #1.5
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override Glissando #'bound-details #'right #'padding = #1.5
							\override NoteHead #'style = #'cross
							\override Stem.stemlet-length = 0.75
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
							b,,16 \glissando
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							g,,32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a,,,32 ]
							\ottava #0
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Stem.stemlet-length
							\revert Tie #'stencil
						}
					}
					{
						{
							r4
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
					{
						r4
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
						R1 * 5/16
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r8
							r4
							r16
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f'16 ]
								\revert Stem.stemlet-length
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
							R1 * 3/16
						}
						{
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8
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
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								f'16
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r8.
						}
						{
							r4.
							r4
							r8
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
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
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d'16 ]
								\revert Stem.stemlet-length
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
							R1 * 5/16
						}
						{
							R1 * 7/16
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\override Stem.stemlet-length = 0.75
								f'4
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g8 [
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
						}
						{
							R1 * 3/16
						}
						{
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								b16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g16 ]
								\revert Stem.stemlet-length
							}
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
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								b4
								d'2
							}
						}
						{
							{
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 2
								f'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								b8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d'8 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r2
						}
						{
							r8.
							r8
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f'8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								g16 ]
								\revert Stem.stemlet-length
							}
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
						{
							r4.
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 ]
								\revert Stem.stemlet-length
							}
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								d'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f'8
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								g8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								b16 ]
								\revert Stem.stemlet-length
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								d'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f'16 ]
								\revert Stem.stemlet-length
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
							R1 * 5/16
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
							r4
							r16
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								r32
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								e'32 ]
								\revert Stem.stemlet-length
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
							R1 * 7/16
						}
						{
							R1 * 7/16
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g'8
								f4
							}
						}
						{
							{
								a4
								c'4
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
						}
						{
							R1 * 5/16
						}
						{
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r4..
							r16
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								g'16
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								f16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a16
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 ]
								\revert Stem.stemlet-length
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
						}
						{
							R1 * 7/16
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
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8
							}
						}
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 ]
								\revert Stem.stemlet-length
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
							R1 * 7/8
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								g'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								f8 ]
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
							R1 * 7/16
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
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
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
							r8.
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/8 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8
								f4
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8
								\revert Stem.stemlet-length
							}
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
						}
						{
							R1 * 3/16
						}
						{
							R1 * 5/16
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
							r8
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								a8
								c'4
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 ]
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
						}
						{
							R1 * 3/16
						}
						{
							R1 * 7/16
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
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								a16
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r8.
						}
						{
							r4.
							r8
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								a16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 ]
								\revert Stem.stemlet-length
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
							R1 * 3/16
						}
						{
							R1 * 5/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								a8
							}
						}
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e'16
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
								a8
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8 ]
								\revert Stem.stemlet-length
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
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								a16 ]
								\revert Stem.stemlet-length
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								c'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								e'8 ]
								\revert Stem.stemlet-length
							}
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
							r16
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								c'16
							}
						}
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e'16
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								a8 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r4
							r2
						}
						{
							r8
						}
					}
					{
						{
							\times 2/3 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ]
								\revert Stem.stemlet-length
							}
						}
					}
					{
						{
							r8
							r2
						}
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
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/8 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8
								a4
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								c'8
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
						}
						{
							R1 * 5/8
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								e'8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								a16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
								\revert Stem.stemlet-length
							}
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
							{
								\override Stem.stemlet-length = 0.75
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								c'16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								e'16
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
						}
						{
							R1 * 5/16
							\bar "||"
							\stopStaff
							\startStaff
						}
					}
				}
			}
		>>
	>>
}