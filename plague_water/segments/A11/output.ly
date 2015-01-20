\version "2.19.3"
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
				\mark \markup { \override #'(box-padding . 0.5) \box 11 }
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
							af32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d'32 -\staccato
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
							f32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d'32 -\staccato
						}
						\times 2/3 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							f32 -\accent -\snappizzicato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							af32 -\staccato
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
							d32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							d32 -\accent -\snappizzicato \sfz
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							f32 -\staccato
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
							ef32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							bf32 -\staccato
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
							af32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							e32 -\staccato
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
							c32 -\accent -\snappizzicato \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d'32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32 -\accent -\snappizzicato \sfz
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							ef32 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b32 -\accent -\snappizzicato \f
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a,32 -\staccato ]
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
							f,32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32 -\staccato
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
							af,32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e32 -\staccato
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							af,32 -\accent
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d32 -\staccato ]
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
							af,32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							f32 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							af,32 -\accent \sfz
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e,32 -\staccato
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
							bf,32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							cs32 -\staccato ]
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
							d32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							ef32 -\staccato
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
							ef32 -\accent \sfz [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							f32 -\staccato
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						\times 8/9 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32 -\accent \sfz
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							c32 -\staccato
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
							a32 -\accent \f
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b,32 -\staccato ]
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
				\context Voice = "Piano RH Voice" {
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\clef treble
							af16 -\accent \sfz
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<bf'>16 -\staccato
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
							<af>16 -\accent \sfz
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<cs' e'>16 -\staccato
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\clef bass
								af16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<af>16 -\accent \sfz \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<fs, a, d>16 -\accent \sfz
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<fs>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<af>16 -\staccato
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
				\context Voice = "Piano LH Voice" {
					{
						\times 4/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\clef bass
							<cs d g>16 -\accent \sfz
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a,8 -\staccato ]
						}
					}
					{
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b,,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
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
							\afterGrace
							<c, e, g,>16 -\accent \sfz \) [
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							{
								\override Beam #'positions = #beam::place-broken-parts-individually
								af,16 [ \(
								f,16 ]
								\revert Beam #'positions
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<b, cs>16 -\staccato \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<e,, g,, b,, d,>16 -\accent \f
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f,16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<g, a,>16 -\staccato
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								\ottava #-1
								af,,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
							<d, fs,>16 -\accent \sfz \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							<cs,>8 -\staccato
							{
								af,,16 \(
							}
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<d,, f,, a,,>16 -\staccato \)
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\ottava #0
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\ottava #-1
								af,,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<cs,, e,,>16 -\accent \sfz \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<d,>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs,,16 -\staccato
							\ottava #0
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								g16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								d'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								g16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								d'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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