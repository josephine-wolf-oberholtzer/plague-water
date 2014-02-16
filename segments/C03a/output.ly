\version "2.19.2"
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
				\mark \markup { \override #'(box-padding . 0.5) \box 3A }
				\tempo 4=72
				\time 2/4
				s1 * 1/2
			}
			{
				\time 4/4
				s1 * 1
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
				\time 2/4
				s1 * 1/2
			}
			{
				s1 * 1/2
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				s1 * 1
			}
			{
				\time 2/8
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
				\time 4/4
				s1 * 1
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				\time 2/8
				s1 * 1/4
			}
			{
				\time 2/4
				s1 * 1/2
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
							\set stemRightBeamCount = 1
							b,8 \sfz
							af,4 ~
						}
						\times 2/3 {
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							af,8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								cs,16 [ \(
								bf,16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							\pitchedTrill
							b,8 ~ ] \) \> \ff \startTrillSpan d
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\afterGrace
							b,4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							cs4 ~ \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\afterGrace
							cs4.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								bf,16 [ \(
								b,16
								af,16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							b,4 ~ \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							b,4 \mf
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							r8 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef,8 \sfz ] \)
						}
					}
					{
						{
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								af,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\pitchedTrill
							b,4 \sfz \) \startTrillSpan e
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d8
						}
					}
					{
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
								b,16 [ \(
								af,16 ]
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
							cs4 \sfz \)
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							r8 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 \sfz ] \)
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
							R1 * 1/2
							\stopStaff
							\startStaff
						}
						{
							r8.
						}
					}
					{
						{
							\pitchedTrill
							b,4 \sfz \startTrillSpan d
							<> \stopTrillSpan
							a4
						}
					}
					{
						{
							r16
							r4
						}
						{
							r4
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b,16 [ \(
								af,16 ]
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
							c8 \sfz \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\pitchedTrill
							c'4 \) \startTrillSpan ef'
							<> \stopTrillSpan
						}
					}
					{
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b,16 [ \(
								af,16
								d16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\afterGrace
							f4 \sfz \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f8 ~ \) [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							f8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\pitchedTrill
							f8 ~ \) \startTrillSpan af
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f8 ]
							<> \stopTrillSpan
							g4 ~
						}
						\times 2/3 {
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							g8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 [ \(
								af16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							\pitchedTrill
							d'8 ~ ] \) \< \sfz \startTrillSpan g'
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							\afterGrace
							d'4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							d4 \ff \)
						}
					}
					{
						{
							r8.
							r2
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\pitchedTrill
							f8 \sfz [ \startTrillSpan gf
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af16 ~ \> \ff
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							af8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b,16 [ \(
								af16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							d8 ~ ] \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\afterGrace
							d2
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\pitchedTrill
							f4 \mf \) \startTrillSpan af
							<> \stopTrillSpan
						}
					}
					{
						{
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 [ \(
								af16
								d16 ]
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
							\pitchedTrill
							f8 \sfz \) [ \startTrillSpan bf
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							\once \override TrillSpanner.bound-details.left.text = \markup {
								\null
								}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							\pitchedTrill
							f'8 ~ ] \) \startTrillSpan gf'
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\afterGrace
							f'4.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							f4 \)
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
														"Color Three"
									}
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<e>16 -\tenuto \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							<ef'>32 -\tenuto
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							<c b a'>16 -\tenuto \arpeggio \p [
							{
								c''16 \(
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<gf>16 -\tenuto \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<ds>8 -\tenuto \pp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<ef>8 -\tenuto ]
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
						}
						{
							R1 * 1/2
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
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<d>8 -\tenuto \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<b fs' gs''>8 -\tenuto \arpeggio ]
						}
					}
					{
						{
							r8
						}
						{
							r2.
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<af gf'>16 -\tenuto \p [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 -\tenuto ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1
						}
						{
							\afterGrace
							R1 * 1/4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							<af>8 -\tenuto \p \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<a>16 -\tenuto ]
						}
					}
					{
						{
							r8
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
							r2
							r16
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<g>16 -\tenuto \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<g>16 -\tenuto
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<cf>16 -\tenuto
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d'16 -\tenuto \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 -\tenuto ]
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
							\afterGrace
							R1 * 1
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								b16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 -\tenuto \p \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<ef'>8 -\tenuto ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
							\stopStaff
							\startStaff
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
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
							\stopStaff
							\startStaff
						}
						{
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\clef treble
							af''16 \p [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'''16 ] )
						}
					}
					{
						{
							r8
							r2
						}
						{
							r4
							r16
						}
					}
					{
						{
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<d'' f'' a''>16 \p [ (
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'''16 ] )
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
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/2
						}
						{
							R1 * 1/2
						}
						{
							R1 * 1
						}
						{
							R1 * 1
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
							R1 * 1
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/2
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
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
						}
						{
							R1 * 1
						}
						{
							R1 * 1/2
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/4
							\stopStaff
							\startStaff
						}
						{
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\clef treble
							<d''>16 \p (
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							<c''>32 ] )
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
							R1 * 1/2
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<c''>16 \p [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b'32 )
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
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
							R1 * 1
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
							R1 * 1
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/2
							\stopStaff
							\startStaff
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						R1 * 1/2
					}
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
						r2
					}
					{
						r4
						r16
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
						r16
					}
					{
						R1 * 1/4
					}
					{
						R1 * 1/4
					}
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
					{
						R1 * 1/2
					}
					{
						r4
						r16
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
						r16
						r2
					}
					{
						R1 * 1
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
						R1 * 1
					}
					{
						R1 * 1/4
					}
					{
						R1 * 1
					}
					{
						R1 * 1/4
					}
					{
						R1 * 1/2
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
							R1 * 1/2
						}
						{
							R1 * 1
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
							R1 * 1/2
						}
						{
							R1 * 1
						}
						{
							R1 * 1
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
							R1 * 1
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/2
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
							r4
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
							f16 -\accent \mp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 -\staccato ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1
							\stopStaff
							\startStaff
						}
						{
							r4
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
							g'16 -\accent ~ \< \mp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							g'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16 -\staccato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 -\staccato ] \f
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
						}
						{
							R1 * 1/2
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
							\set stemRightBeamCount = 1
							\afterGrace
							c'8 -\accent \mp [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							c'16 -\staccato \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r8
						}
						{
							r2.
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							g'16 -\accent \mp [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 -\staccato \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1
						}
						{
							R1 * 1/4
							\stopStaff
							\startStaff
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f16 -\accent \mp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 -\staccato ]
						}
					}
					{
						{
							r8
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
							r2
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
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f16 -\accent \) [ \< \mp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 -\staccato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 -\staccato ] \f
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
							\afterGrace
							R1 * 1
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						\times 2/3 {
							\afterGrace
							f4 -\accent \mp \)
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 -\staccato \)
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
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
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
								^ \markup {
									\box
										\pad-around
											#0.5
											\large
												\bold
													\caps
														Superball
									}
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 11/12 {
							a2 -\accent \mp
							e'4
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
						\times 5/8 {
							c'4 -\accent \mp
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							r8 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 \mp ] \)
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
							\afterGrace
							c'8 -\accent \mp [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 ] \)
						}
					}
					{
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/12 {
							c'4 -\accent \) \< \mp
							e'2 -\accent ~
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							e'8 \f [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 \sfp ] \)
						}
					}
					{
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							a4 -\accent \) \< \mp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							e'8 -\accent ~
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 9/16 {
							e'2
							c'2 \f
						}
					}
					{
						{
							r8.
						}
						{
							r2
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							e'4 -\accent \mp
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							r8 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 \p ] \)
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
							R1 * 1/2
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
							\set stemRightBeamCount = 1
							\afterGrace
							e'8 -\accent [ \< \mp
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							e'8 -\accent ~ ] \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 11/20 {
							\afterGrace
							e'2.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							e'2 \f \)
						}
					}
					{
						{
							r16
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							a8 -\accent \< \mp
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							e'4 -\accent ~ \)
						}
						\times 2/3 {
							e'4 \f
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							e'4 \mp \)
						}
					}
					{
						{
							r2
						}
					}
					{
						\times 2/3 {
							c'4 -\accent \< \mp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							e'8 -\accent ~
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/8 {
							e'4
							a4 \f
						}
					}
					{
						{
							r16
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}