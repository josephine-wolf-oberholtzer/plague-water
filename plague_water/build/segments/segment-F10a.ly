	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket.color = #red
	} <<
		\tag score.saxophone.guitar.piano.percussion
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\mark \markup { \override #'(box-padding . 0.5) \box 10A }
				\tempo 8=48
				\time 5/16
				s1 * 5/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				s1 * 3/4
			}
			{
				\time 7/16
				s1 * 7/16
			}
		}
		\tag score.saxophone
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "treble"
				\transpose ef, c'
				\context Voice = "Saxophone Voice" {
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 -\staccatissimo \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							r16
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16 -\snappizzicato \)
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 -\staccatissimo
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 -\snappizzicato ]
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
							r4
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							c'32 -\staccatissimo \pp [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							\afterGrace
							r32
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 -\staccatissimo ] \)
						}
					}
					{
						{
							r2
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c'16 -\accent -\snappizzicato \ppp
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a32 -\staccatissimo ]
						}
					}
					{
						{
							r8
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
							c'16 -\snappizzicato \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16 -\accent -\snappizzicato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a16 -\snappizzicato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e16 -\accent -\snappizzicato ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							c'16 -\staccatissimo \ppp [
								^ \markup {
									\box
										\pad-around
											#0.5
											\large
												\bold
													\caps
														"Color Six"
									}
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								a'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<ef'>16 -\staccatissimo ] \)
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
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r4
							r8
						}
					}
					{
						{
							\override Hairpin.circled-tip = ##t
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							<f d''>16 -\staccatissimo \arpeggio [ \> \p
							{
								c''16 \(
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<fs>16 -\staccatissimo \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<ef>8 -\staccatissimo
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<d cs' b'>16 -\staccatissimo \arpeggio \!
							\revert Hairpin #'circled-tip
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							<g>16 -\staccatissimo \pp
							{
								c''16 \(
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							<fs>32 -\staccatissimo ] \)
						}
					}
					{
						{
							r8
						}
						{
							r2
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							<d cs' b'>16 -\staccatissimo \arpeggio \ppp [
							{
								a'16 \(
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<ef'>16 -\staccatissimo \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<d a b'>16 -\staccatissimo \arpeggio
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<f ef'>16 -\staccatissimo ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #2
							\clef treble
							e''''16 -\staccatissimo \pp [
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							\ottava #2
							<ef''''>16 -\staccatissimo
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<d'''' ef'''' af''''>16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e''''16 -\staccatissimo ]
							\ottava #0
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
							r4
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #2
							a'''16 -\staccatissimo \ppp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<c'''''>16 -\staccatissimo
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r2
						}
					}
					{
						\times 2/3 {
							\override Hairpin.circled-tip = ##t
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #2
							<b''' c'''' f''''>16 -\staccatissimo [ \> \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a''''8 -\staccatissimo
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							a'''16 -\staccatissimo
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<a''' c'''' e''''>16 -\staccatissimo ] \!
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\ottava #0
							\revert Hairpin #'circled-tip
						}
					}
					{
						{
							r2
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #2
							a'''8 -\staccatissimo \pp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<ef''''>16 -\staccatissimo ]
							\ottava #0
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
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
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
							\clef treble
							<e'' g'' b'' d'''>16 -\staccatissimo \p [
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e'''32 -\staccatissimo
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
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
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r4
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							c'''16 -\staccatissimo \pp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c'''16 -\staccatissimo
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r2
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
							<ef'''>16 -\staccatissimo \ppp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<fs''' g''' c''''>16 -\staccatissimo
							\ottava #0
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							a''16 -\staccatissimo
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							<c''' e''' g'''>32 -\staccatissimo ]
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\ottava #0
						}
					}
					{
						{
							r2
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							c'''8 -\staccatissimo \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'''16 -\staccatissimo ]
							\ottava #0
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
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						s1 * 3/16 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
					}
				}
				{
					{
						R1 * 7/16
					}
					{
						r4
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
						r2
					}
				}
				{
					{
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
					}
				}
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
						R1 * 7/16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 -\staccatissimo \ppp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16 -\staccatissimo
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 -\staccatissimo ]
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
							\stopStaff
							\startStaff
						}
						{
							r4
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 -\staccatissimo \pp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 -\staccatissimo ]
						}
					}
					{
						{
							r2
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 -\staccatissimo \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 -\staccatissimo ]
						}
					}
					{
						{
							r16
						}
						{
							r2
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							e'32 -\staccatissimo \ppp [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 -\staccatissimo ]
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
							R1 * 5/16
						}
						{
							R1 * 7/16
						}
						{
							R1 * 1/2
						}
						{
							R1 * 3/4
						}
						{
							R1 * 3/4
						}
						{
							R1 * 7/16
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
						\times 5/6 {
							\afterGrace
							e'4 \< \mp
								^ \markup {
									\box
										\pad-around
											#0.5
											\large
												\bold
													\caps
														Styrofoam
									}
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							c'8 ~ \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							c'4
							a4 \f
						}
					}
					{
						{
							\afterGrace
							r16
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							e'4 \mp \)
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 \mp ]
						}
					}
					{
						{
							r8.
						}
						{
							\afterGrace
							r2
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								e'16 \(
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
							a8 \) [ \< \mp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 ~
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							e'8.
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 ] \f \)
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							a16 [ \< \mp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							e'8 ~ ]
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/12 {
							e'4 \f
							\afterGrace
							r4
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							e'4 \sfp \)
							\bar "||"
						}
					}
				}
			}
		>>
	>>
