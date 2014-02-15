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
				\mark \markup { \override #'(box-padding . 0.5) \box 2 }
				\tempo 4=80
				\time 3/4
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				\time 6/8
				s1 * 3/4
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				\time 6/8
				s1 * 3/4
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
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								ef16 \< \mp \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							fs4 \)
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 [
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							c8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								f16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\pitchedTrill
							cs'8 \f \startTrillSpan e'
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							r2
						}
					}
					{
						{
							\pitchedTrill
							b,4 \< \mp \startTrillSpan e
							<> \stopTrillSpan
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 [
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							b,8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								ef16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8 \)
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							a8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								ef16 [ \(
								fs,16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8. \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\pitchedTrill
							b,8. \startTrillSpan d
							<> \stopTrillSpan
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f,16
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e,8 \f
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							\afterGrace
							R1 * 3/4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								ef,16 \< \mp \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							af,4 \)
							\pitchedTrill
							c4 ~ \startTrillSpan ef
						}
						\times 2/3 {
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							\afterGrace
							c8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								ef,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							bf,4 \f \)
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
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								f16 \< \mp \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							af4 \)
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 [
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							ef8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								fs16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d8 \)
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							\pitchedTrill
							b,8. ] \f \startTrillSpan d
							<> \stopTrillSpan
						}
					}
					{
						{
							r2
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\afterGrace
							\pitchedTrill
							a4 \< \mp \startTrillSpan d'
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								ef16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b8 \) [
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							a,8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								ef16 [ \(
								fs16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8 \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							af8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								ef16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\pitchedTrill
							b,8 \) \startTrillSpan d
							<> \stopTrillSpan
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af,16
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a,16
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af8.
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f16 ]
							d4
						}
						{
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 2
							af,16 [
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f8. \f
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/4
							\stopStaff
							\startStaff
						}
						{
							r8.
						}
					}
					{
						{
							\afterGrace
							ef4 \mp
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								fs16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf16 \)
						}
					}
					{
						{
							r4
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
							r2
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
							\clef treble
							cs'16 \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f''16
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef'8
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = -1
							f'16 ]
						}
						\times 2/3 {
							r4
							c''4 \p
							ef'4
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
						{
							r4
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
							d'16 \p ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16 ]
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
						{
							r8.
						}
					}
					{
						{
							f'4 \p
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs''8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
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
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/8 {
							\clef bass
							d,4 \p
							cs4
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
							R1 * 3/4
							\stopStaff
							\startStaff
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
							f,16 \p ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 ]
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							f,4 \p
							bf4
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
						R1 * 3/4
					}
					{
						R1 * 3/4
					}
					{
						R1 * 3/4
					}
					{
						R1 * 3/4
					}
					{
						R1 * 3/4
					}
					{
						R1 * 3/4
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
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/12 {
							g2 \p
							f'4
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ]
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							d'4 \p
							g4
						}
					}
					{
						{
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
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							f8 [ \> \p
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							a8 ] \)
						}
						{
							g'4
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 \! [
							\revert Hairpin #'circled-tip
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 \p ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							e'16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16 ] \)
						}
					}
					{
						{
							r8.
						}
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								g'16 \p [ \(
								a16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\afterGrace
							e'4 \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								f16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							e'4 \)
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
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							g'8 ]
						}
					}
					{
						{
							r8
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
							c'8 \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
						}
					}
					{
						{
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~ \> \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 ] \!
							\revert Hairpin #'circled-tip
						}
					}
					{
						{
							r4.
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/4
						}
						{
							R1 * 3/4
						}
						{
							R1 * 3/4
						}
						{
							R1 * 3/4
						}
						{
							R1 * 3/4
						}
						{
							R1 * 3/4
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