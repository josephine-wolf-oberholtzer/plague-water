\version "2.19.2"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/plague-water-header.ily"
\include "../../stylesheets/plague-water-layout.ily"
\include "../../stylesheets/plague-water-paper.ily"
\include "../../stylesheets/plague-water-parts.ily"

\score {
	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket #'color = #red
	} <<
		\tag score.saxophone.guitar.piano.percussion
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\mark \markup { \override #'(box-padding . 0.5) \box 1 }
				\tempo 4=64
				\time 2/4
				s1 * 1/2
			}
			{
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
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						{
							r4
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							d'32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							c'32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
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
							\set stemRightBeamCount = 3
							d'32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b32 -\staccato
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							c'32 -\accent -\snappizzicato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs'32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							a32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							a32 -\accent -\snappizzicato \sfz
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							b32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							a32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							e32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							af'32 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							r16
							r8.
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							af32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e'32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							af32 -\accent -\snappizzicato \sfz
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							d'32 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							bf32 -\accent -\snappizzicato \f
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							ef32 -\staccato ]
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
							r4
								^ \markup {
									\box
										\pad-around
											#0.5
											\large
												\bold
													\caps
														"Color One"
									}
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							e32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							ef'32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
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
							\set stemRightBeamCount = 3
							f32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs'32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							ef32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c'32 -\staccato ]
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						\times 4/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							b32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							a32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b32 -\accent \sfz
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							a32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
							\set stemRightBeamCount = 3
							a32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							af'32 -\staccato ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							f32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							d'32 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							r16
							r8.
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							f32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d'32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 8/9 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							f32 -\accent \sfz
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							cs'32 -\accent \f
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							bf32 -\staccato ]
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
		\tag score.piano
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\clef "treble"
				\context Voice = "Piano RH Voice" {
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<gf'>16 -\accent \sfz
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<a'>16 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						\times 4/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef'16 -\accent \sfz
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<e'' fs''>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<b' ef''>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
							R1 * 1/4
						}
						{
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
								ef'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<f'>16 -\accent \sfz \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 -\accent \sfz
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<f''>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<g'' af'' df'''>16 -\staccato
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
							R1 * 1/4
						}
						{
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\clef "bass"
				\context Voice = "Piano LH Voice" {
					{
						\times 4/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\clef treble
							<af>16 -\accent \sfz
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<cf''>8 -\staccato ]
						}
					}
					{
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\clef bass
								f16 \(
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
							b,16 -\accent \sfz \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								f16 [ \(
								af16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<d' e'>16 -\staccato \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\clef treble
							<as d'>16 -\accent \f
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<c'>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b'16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
							R1 * 1/4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								ef16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						\times 4/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<as cs'>16 -\accent \sfz \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							<af'>8 -\staccato
							{
								ef'16 \(
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d'16 -\staccato \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
								ef16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af16 -\accent \sfz \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<g'>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<e'' f'' bf''>16 -\staccato
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
							R1 * 1/4
						}
						{
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
						s1 * 3/16
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r16
					}
					{
						R1 * 1/4
					}
				}
				{
					{
						s1 * 1/4 \sustainOn
						<> \sustainOff
					}
				}
				{
					{
						r16
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 3/16 \sustainOn
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
						R1 * 1/4
					}
					{
						R1 * 3/16
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
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								g16 \(
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
							b16 \mp \) [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								d'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8 ] \)
						}
					}
					{
						{
							r16
						}
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								g16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\afterGrace
							b4 \mp \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								d'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8 \)
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
							R1 * 1/4
						}
						{
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							g16 \mp [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d'16 \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							g16 \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b16 ]
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
							R1 * 1/4
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
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
						}
						{
							R1 * 1/2
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/2
						}
						{
							R1 * 1/4
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							a8 \mp [
								^ \markup {
									\box
										\pad-around
											#0.5
											\large
												\bold
													\caps
														"Soft Mallets"
									}
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ] \)
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							a8 \mp [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ] \)
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
							R1 * 1/4
						}
						{
							R1 * 1/4
							\stopStaff
							\startStaff
						}
						{
							r16
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
							a16 ~ \< \mp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							a16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16
						}
						\times 2/3 {
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
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 \f \)
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
							R1 * 1/4
						}
						{
							R1 * 3/16
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