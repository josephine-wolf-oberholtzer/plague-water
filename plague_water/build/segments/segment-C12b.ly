	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket.color = #red
	} <<
		\tag score.saxophone.guitar.piano.percussion
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\mark \markup { \override #'(box-padding . 0.5) \box 12B }
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
				\time 2/4
				s1 * 1/2
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
				s1 * 1/4
			}
			{
				\time 4/16
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
				\time 2/8
				s1 * 1/4
			}
			{
				s1 * 1/4
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 11/16 {
							b,2 \sfz
							\pitchedTrill
							d'2 \startTrillSpan f'
							<> \stopTrillSpan
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
								\override Beam.positions = #beam::place-broken-parts-individually
								d16 [ \(
								c16 ]
								\revert Beam #'positions
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
							\pitchedTrill
							cs8 \sfz \) [ \startTrillSpan fs
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								bf16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							d'8 ~ ] \)
						}
						{
							\afterGrace
							d'4
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								\override Beam.positions = #beam::place-broken-parts-individually
								af16 [ \(
								d16
								c16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							\pitchedTrill
							ef8 ~ \) \startTrillSpan gf
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 9/16 {
							\afterGrace
							ef2
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								b,16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							<> \stopTrillSpan
							f2 \)
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
							\afterGrace
							R1 * 1/2
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								\stopStaff
								\startStaff
								bf16 \(
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
							a4. \sfz \)
							\pitchedTrill
							b4 ~ \startTrillSpan e'
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							b4
							<> \stopTrillSpan
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							r8 [
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								\override Beam.positions = #beam::place-broken-parts-individually
								b16 [ \(
								af16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 ~ \) \< \sfz
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							a8
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							\pitchedTrill
							af8 ] \ff \) \startTrillSpan cf'
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
							R1 * 1/2
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
							\pitchedTrill
							g8 \sfz [ \startTrillSpan bf
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af8 \ff ]
						}
					}
					{
						{
							\afterGrace
							r8
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								\override Beam.positions = #beam::place-broken-parts-individually
								b16 [ \(
								af16 ]
								\revert Beam #'positions
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
							f8 \sfz \) [
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\pitchedTrill
							d'8 ~ \) \startTrillSpan f'
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							d'8 ]
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								\override Beam.positions = #beam::place-broken-parts-individually
								b16 [ \(
								af16
								d16 ]
								\revert Beam #'positions
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							<> \stopTrillSpan
							e4 \)
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
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								\stopStaff
								\startStaff
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/8 {
							\afterGrace
							d4 \sfz \)
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							d'4 ~ \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							d'2
							\pitchedTrill
							af4 \startTrillSpan cf'
							<> \stopTrillSpan
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
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								\stopStaff
								\startStaff
								\override Beam.positions = #beam::place-broken-parts-individually
								b16 [ \(
								af16 ]
								\revert Beam #'positions
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
							\set stemRightBeamCount = 1
							\afterGrace
							\pitchedTrill
							f8. \sfz \) [ \startTrillSpan gf
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								b16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							f'8 ~ ] \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							f'4
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 \ff ]
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
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							<bf>8 -\tenuto \p [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<ef'>16 -\tenuto
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<af, g f'>8 -\tenuto \arpeggio \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<b>8 -\tenuto ]
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
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/2
							\stopStaff
							\startStaff
						}
						{
							r2
							\afterGrace
							r16
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								b16 \(
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
							<c>8 -\tenuto \p \) [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<cs' af' bf''>8 -\tenuto \arpeggio
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<f ef'>8 -\tenuto \pp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b8 -\tenuto ]
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
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<d>16 -\tenuto \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<g>16 -\tenuto ]
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
						}
						{
							R1 * 1/4
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
							\stopStaff
							\startStaff
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<ef>16 -\tenuto \p [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<f>8 -\tenuto ]
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
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/4
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
							R1 * 1
						}
						{
							R1 * 1/4
							\stopStaff
							\startStaff
						}
						{
							r2.
							r16
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
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
							\clef treble
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<d''' f''' a'''>16 ] )
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
							r4
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<f'' a'' c'''>16 \p (
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
							\set stemRightBeamCount = 0
							<g'' b'' d'''>16 ] )
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
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
							R1 * 1/4
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
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<e'' g'' b'' d''' f'''>16 \p ~ (
								^ \markup {
									\center-align
										\flat
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
							<e'' g'' b'' d''' f'''>16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'''16 ] )
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
							R1 * 1/4
							\stopStaff
							\startStaff
						}
						{
							r2
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							<b' d'' f'' a''>8 \p [ (
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
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<d''' f''' a'''>16 )
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
							r16 ]
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
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/2
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
							\ottava #1
							ef''16 \p [ (
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<d''' f''' a'''>16 )
								^ \markup {
									\center-align
										\natural
									}
							\ottava #0
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
							r8.
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
							<e''>16 \p (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<d''>16 ] )
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
							<d''>16 \p (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a'16 ] )
						}
					}
					{
						{
							r8.
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
							<cs'' e''>16 \p ~ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<cs'' e''>16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<fs''>16 ] )
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 1/2
						}
						{
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
							\set stemRightBeamCount = 2
							e'16 \p [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							<af''>32 )
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
							R1 * 1/4
						}
						{
							R1 * 1/4
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
						r8.
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
						r8.
					}
					{
						R1 * 1/4
					}
					{
						r2.
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
						R1 * 1/2
					}
					{
						r4
						r8
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
						r8.
						r4
					}
					{
						R1 * 1/4
					}
					{
						R1 * 1/4
					}
					{
						r4
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
						R1 * 1/2
					}
					{
						R1 * 1/4
					}
					{
						r4
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
						R1 * 1/4
					}
					{
						R1 * 1/4
					}
					{
						r2
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
						r16
						r4
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
							R1 * 1/2
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
							R1 * 1/4
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
							R1 * 1/4
						}
						{
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
							r2
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
							f16 -\accent ~ \< \mp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16 -\staccato
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 -\accent
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 -\staccato ] \f
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
						}
						{
							R1 * 1/4
						}
						{
							R1 * 1/2
							\stopStaff
							\startStaff
						}
						{
							r2
							r16
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							f8 -\accent \mp [
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
							\set stemRightBeamCount = 2
							c'16 -\staccato \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f8 -\accent \mp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 -\staccato ]
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
							R1 * 1/2
							\stopStaff
							\startStaff
						}
						{
							r4
							\afterGrace
							r16
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								g'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 -\accent \mp \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 -\staccato
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
							R1 * 1/2
						}
						{
							R1 * 1/4
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
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
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
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\afterGrace
							c'4 -\accent \< \mp
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							a4 -\accent ~ \)
						}
						{
							a4.
							c'4 \f
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
							r8.
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 11/12 {
							\afterGrace
							a4 -\accent \mp \)
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							c'2 \)
						}
					}
					{
						{
							r8
						}
					}
					{
						\times 2/3 {
							\afterGrace
							e'4 -\accent \< \mp
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
							\set stemRightBeamCount = 1
							c'8 -\accent ~ \) [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							c'8
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 -\accent ~ \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 ]
							e'4 \f
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							c'4 -\accent \mp
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 -\accent ~ \> \mp
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							e'8
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
							c'8 -\accent ~ ] \)
						}
						{
							c'4
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 \p
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
							R1 * 1/4
						}
						{
							\afterGrace
							R1 * 1/4
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 11/16 {
							\afterGrace
							e'2 -\accent \) \< \mp
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							e'2 -\accent ~ \)
						}
						{
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							e'8. [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 -\accent ~
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 \f
							\set stemLeftBeamCount = 1
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
							\set stemRightBeamCount = 0
							e'16 \p ] \)
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
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
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
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 -\accent \) \< \mp
							c'4 -\accent ~
						}
						\times 2/3 {
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							c'8 \f [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
							\override Hairpin.circled-tip = ##t
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 -\accent ~ \> \sfp
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 -\accent ~
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							a8.
							{
								\override Flag.stroke-style = #"grace"
								\override Script.font-size = #0.5
								\override Stem.length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Script #'font-size
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ] \! \)
							\bar "||"
							\revert Hairpin #'circled-tip
						}
					}
				}
			}
		>>
	>>
