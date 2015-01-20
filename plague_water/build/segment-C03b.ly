	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket #'color = #red
	} <<
		\tag score.saxophone.guitar.piano.percussion
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\mark \markup { \override #'(box-padding . 0.5) \box 3B }
				\tempo 4=72
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
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							b,4 \sfz
							\pitchedTrill
							af2 ~ \startTrillSpan cf'
						}
						\times 2/3 {
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							af8 [
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								b,16 [ \(
								af16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							b,8 ~ ] \) \> \ff
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 11/16 {
							\afterGrace
							b,2
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								c16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							f2 ~ \)
						}
						{
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							\afterGrace
							f8. [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								bf16 [ \(
								b16
								af16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							\pitchedTrill
							a8 ] \mf \) \startTrillSpan d'
							<> \stopTrillSpan
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
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\afterGrace
							\pitchedTrill
							c2 \sfz \) \startTrillSpan f
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							<> \stopTrillSpan
							c'4 \)
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
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/8 {
							b4 \sfz
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							r8 [
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								b16 [ \(
								af16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 \sfz ] \)
						}
					}
					{
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\pitchedTrill
							d4 \sfz \) \startTrillSpan f
							<> \stopTrillSpan
							e'4
						}
					}
					{
						{
							r8
						}
						{
							r2
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							f8 \sfz
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\override Beam #'positions = #beam::place-broken-parts-individually
								b16 [ \(
								af'16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							f'4 ~ \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/12 {
							f'4
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\pitchedTrill
							f4 \f \) \startTrillSpan af
							<> \stopTrillSpan
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
		\tag score.guitar
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble"
				\transpose c c'
				\context Voice = "Guitar Voice" {
					{
						{
							r2
								^ \markup {
									\box
										\pad-around
											#0.5
											\large
												\bold
													\caps
														"Color Three"
									}
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							<d>4 -\tenuto \p
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							<fs>8 -\tenuto [
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
							R1 * 1
							\stopStaff
							\startStaff
						}
						{
							r16
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<d>16 -\tenuto \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<b fs' af''>16 -\tenuto \arpeggio
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
							R1 * 1/4
						}
						{
							R1 * 1
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
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							<ef' cs''>16 -\tenuto \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16 -\tenuto ]
							\ottava #0
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
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							<f>8 -\tenuto \) \> \p
							<fs>4 -\tenuto
						}
						{
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							<af>8 -\tenuto [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af'8 -\tenuto ] \!
							\revert Hairpin #'circled-tip
						}
					}
					{
						{
							r2.
						}
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
							r2
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							\clef treble
							d'''16 \p [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs''''16 ] )
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
							R1 * 1/4
							\stopStaff
							\startStaff
						}
						{
							r2.
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							<f'' a'' c''' e'''>16 \p (
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							<f''' a''' c''''>32
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
						}
						\times 2/3 {
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<g'' b'' d'''>16
								^ \markup {
									\center-align
										\natural
									}
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<f'' a'' c'''>16 )
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
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/4
						}
						{
							R1 * 1
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
							R1 * 1/4
						}
						{
							R1 * 1
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
						r2
						r8
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
						r4
					}
					{
						R1 * 1/4
					}
					{
						r2.
						r8
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
						\LV
					}
				}
				{
					{
						r8
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
							R1 * 1/4
						}
						{
							R1 * 1
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
							r2
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							f4 -\accent \mp
							c'4 -\staccato
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
							R1 * 1
							\stopStaff
							\startStaff
						}
						{
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 -\staccato ] \)
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
							R1 * 1
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
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f16 -\accent \mp
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a32 -\staccato ]
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
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r4
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							f8 -\accent \mp \) [
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
							\set stemRightBeamCount = 1
							g'8 -\staccato \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 -\accent \sfp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 -\staccato ]
						}
					}
					{
						{
							r2.
						}
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
							r4
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							a2 -\accent \mp
							r4
							e'4 \sfp
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
							r4
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\afterGrace
							c'4 -\accent \mp
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							a4 \)
						}
					}
					{
						{
							r8.
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							c'8 -\accent \mp
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							a4 \)
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
							r2
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						{
							c'4 -\accent \mp \)
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8
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
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								a16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
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
							c'8 -\accent \mp \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 \mp ] \)
						}
					}
					{
						{
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							e'4 -\accent \< \mp
							c'4 -\accent ~
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							c'4.
							e'4 \f
						}
					}
					{
						{
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Script #'font-size = #0.5
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 -\accent \mp \)
							e'4
						}
					}
					{
						{
							r2.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
							\bar "||"
							\stopStaff
							\startStaff
						}
					}
				}
			}
		>>
	>>
