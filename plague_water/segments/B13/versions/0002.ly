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
				\mark \markup { \override #'(box-padding . 0.5) \box 13 }
				\tempo 4=80
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
			{
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
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a,16 \< \mp \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\times 4/5 {
							b,4 \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							\pitchedTrill
							a,8 \startTrillSpan c
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,8. \f
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
					{
						{
							\pitchedTrill
							af,4 \mp \startTrillSpan df
							<> \stopTrillSpan
						}
					}
					{
						{
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\afterGrace
							f4 \mp
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
							\set stemRightBeamCount = 0
							d8 \)
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
							\afterGrace
							R1 * 3/4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a,16 [ \< \mp \(
								b,16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\afterGrace
							\pitchedTrill
							g,4 \) \startTrillSpan bf,
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e16 \) [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f,16
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c8
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16 ] \f
						}
					}
					{
						{
							r4
						}
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a,16 \< \mp \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c8 \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\pitchedTrill
							f8 ~ \startTrillSpan af
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							f8 ]
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							f,4 \f \)
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
							\pitchedTrill
							b,8 \mp [ \startTrillSpan e
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs8 ]
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
								a,16 \< \mp \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							b,4 \)
						}
						{
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 2
							a16 [
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\pitchedTrill
							b,8. \startTrillSpan d
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a,16
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							b8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d16 ] \f \)
						}
					}
					{
						{
							r16
						}
					}
					{
						\times 4/5 {
							\pitchedTrill
							f4 \mp \startTrillSpan bf
							<> \stopTrillSpan
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16
						}
					}
					{
						{
							r16
						}
					}
					{
						{
							e4 \mp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16
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
							\afterGrace
							R1 * 3/4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a,16 \< \mp \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\afterGrace
							\pitchedTrill
							g,4 \) \startTrillSpan bf,
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 [ \(
								b16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							g8 \) [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\afterGrace
							ef16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ] \f \)
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
							\afterGrace
							ef4 \< \mp
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f16 \) [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							\pitchedTrill
							b,8 ] \f \startTrillSpan d
							<> \stopTrillSpan
						}
					}
					{
						{
							r8
						}
						{
							r8.
						}
					}
					{
						\times 4/5 {
							cs4 \mp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf16
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
							\clef treble
							a'16 \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e''16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = -1
							r16 ]
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							f'4 \p
							d'4
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/8
							\stopStaff
							\startStaff
						}
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
							af16 \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							b'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\clef bass
							af16 \< \pp
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							b32
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af8 \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\clef treble
							f'16 \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef'16 ]
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
							R1 * 3/4
						}
						{
							R1 * 3/4
							\stopStaff
							\startStaff
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
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
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\clef bass
							f,16 \> \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af,16
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e,16
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d,8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e,8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af,,8 \!
							\revert Hairpin #'circled-tip
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #-1
							d,16 \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af,,16 ]
							\ottava #0
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
							R1 * 3/4
						}
						{
							R1 * 3/8
							\stopStaff
							\startStaff
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
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\ottava #-1
							c,8 \> \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef,8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f,,8
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c,16 ] \!
							\ottava #0
							\revert Hairpin #'circled-tip
						}
					}
					{
						{
							r16
							r2
						}
						{
							r4
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
							\ottava #-1
							b,,,16 \p ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b,,,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af,,16 ]
							\ottava #0
						}
					}
					{
						{
							r8
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
						R1 * 3/8
					}
					{
						R1 * 3/8
					}
					{
						R1 * 3/4
					}
					{
						R1 * 3/8
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
							r2
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g16 \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							g16 \pp
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b32 ]
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
							R1 * 3/4
						}
						{
							R1 * 3/8
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
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f'16 ~ \> \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							g16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b16 \!
							\revert Hairpin #'circled-tip
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r16
							r2
						}
						{
							r4
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 \p [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8 ]
						}
					}
					{
						{
							r8
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						\times 2/3 {
							r4
							\afterGrace
							f4 \p
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							a4 \)
						}
					}
					{
						{
							r4
						}
						{
							r8
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
							g'16 \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
						}
					}
					{
						{
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 \p ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							e'8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								c'16 \(
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
							r2
							\afterGrace
							r16
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							e'8 \) [
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
							\set stemRightBeamCount = 2
							e'16 \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 \mp
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
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 \p [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							r8 ]
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/8 {
							\afterGrace
							c'4 \pp
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								f16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							g'4 \)
						}
					}
					{
						{
							r16
							r4
						}
						{
							r8.
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
							a8 \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
						}
					}
					{
						{
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
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/4
						}
						{
							R1 * 3/8
						}
						{
							R1 * 3/8
						}
						{
							R1 * 3/4
						}
						{
							R1 * 3/8
						}
						{
							R1 * 3/8
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