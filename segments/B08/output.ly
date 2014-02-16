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
				\mark \markup { \override #'(box-padding . 0.5) \box 8 }
				\tempo 4=80
				\time 3/4
				s1 * 3/4
			}
			{
				\time 6/16
				s1 * 3/8
			}
			{
				\time 3/8
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
				\time 6/8
				s1 * 3/4
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
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
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							d4 -\accent \) \< \mp
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e16 -\tenuto [
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f8. -\accent \f
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
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
							R1 * 3/8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								\stopStaff
								\startStaff
								e16 \(
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
							\pitchedTrill
							fs4 -\accent \mp \) \startTrillSpan b
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8
						}
					}
					{
						{
							r16
						}
						{
							r4
							r8.
						}
					}
					{
						{
							fs,4 -\accent \mp
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
							\pitchedTrill
							c4 -\accent \mp \startTrillSpan ef
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef8 -\tenuto \)
						}
					}
					{
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e,16 [ \(
								d16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\afterGrace
							b,4 -\accent \) \< \mp
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b,16 -\tenuto \) [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs16 -\accent
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							ef,8 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16 -\tenuto ] \f
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
							R1 * 3/8
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e,16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							d,4 \mp \)
							\pitchedTrill
							b,4 \startTrillSpan d
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
							\afterGrace
							r8.
								^ \markup {
									\box
										\pad-around
											#0.5
											\large
												\bold
													\caps
														"Color Two"
									}
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								af16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							f4 -\accent \) \< \mp
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 - \bendAfter #'-4.0 [
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							e8. -\accent
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								af16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 - \bendAfter #'-4.0 ] \f \)
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
							R1 * 3/8
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\pitchedTrill
							c4 -\accent \mp \startTrillSpan f
							<> \stopTrillSpan
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8
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
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							ef4 -\accent \mp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8
						}
					}
					{
						{
							\afterGrace
							r16
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\afterGrace
							\pitchedTrill
							b,4 -\accent \) \< \mp \startTrillSpan d
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e16 [ \(
								d16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							<> \stopTrillSpan
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b16 - \bendAfter #'4.0 \) [
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c16 -\accent
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							d8 -\accent
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b16 - \bendAfter #'4.0 \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs8. -\accent ] \f
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
							R1 * 3/8
							\stopStaff
							\startStaff
						}
						{
							r4
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\afterGrace
							a,4 -\accent \< \mp
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b,8 - \bendAfter #'-4.0 \) [
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a,8 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 - \bendAfter #'-4.0 ] \f
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
		\tag score.piano
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\context Voice = "Piano RH Voice" {
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
							\clef treble
							af'8 -\accent \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							<f''>8 -\staccato ]
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
							R1 * 3/8
						}
						{
							R1 * 3/8
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
						\times 5/8 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 -\accent ~ \> \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<f'' gf'' cf'''>8 -\staccato
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f'16 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef'16 -\staccato
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<g' b' d'' f''>16 -\staccato ] \!
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\revert Hairpin #'circled-tip
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
							R1 * 3/4
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
							\set stemRightBeamCount = 1
							c''8 -\accent \p [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<df''>16 -\staccato
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							<cs'' d'' g''>8 -\accent \p [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af''8 -\staccato
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
						}
					}
					{
						{
							r8.
							r4
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
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #-1
							\clef bass
							<fs,, g,, c,>16 -\accent \> \p
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							d,32 -\staccato
						}
						{
							\once \override Accidental.stencil = ##f
							\once \override AccidentalCautionary.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<f,, a,, c,>8 -\accent
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							<af,, bf,,>8 -\staccato \!
							\ottava #0
							\revert Hairpin #'circled-tip
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
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<ef,>16 -\accent \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f,16 -\staccato
						}
						\times 2/3 {
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
							\ottava #-1
							<a,, c, e,>16 -\accent \pp
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<af,, bf,,>16 -\staccato
							\ottava #0
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<d, gf,>16 -\accent ~ \< \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<d, gf,>16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f,,16 -\staccato
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs,16 -\accent
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<bf,, ef,>16 -\staccato \mf
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
						}
					}
					{
						{
							r4
							r4.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/8
						}
						{
							R1 * 3/4
							\stopStaff
							\startStaff
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
						R1 * 3/4
					}
					{
						R1 * 3/8
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
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							g16 -\staccatissimo [ \> \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = -1
							f'16 -\staccatissimo ]
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							b4 -\staccatissimo
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 -\staccatissimo \! [
							\revert Hairpin #'circled-tip
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
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							r32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f'16 -\staccatissimo \p
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							d'32 -\staccatissimo
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 -\staccatissimo \< \pp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g8 -\staccatissimo
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f'16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b32 -\staccatissimo \p
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
						}
					}
					{
						{
							r4
							r4.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/8
						}
						{
							R1 * 3/4
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\afterGrace
							f8 -\staccatissimo \p [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 -\staccatissimo ] \)
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
							\set stemRightBeamCount = 2
							r16 [
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							g'16 -\staccatissimo \> \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16 -\staccatissimo
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 -\staccatissimo ]
							c'4 -\staccatissimo \!
							\revert Hairpin #'circled-tip
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
							r16
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
							\afterGrace
							f8 -\staccatissimo \> \p
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								g'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							a8 -\staccatissimo ] \)
						}
						{
							\afterGrace
							e'4 -\staccatissimo
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f16 [ \(
								e'16 ]
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 -\staccatissimo \! \)
							\revert Hairpin #'circled-tip
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
							R1 * 3/8
							\stopStaff
							\startStaff
						}
						{
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/8 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							r8 [
							\override Hairpin #'circled-tip = ##t
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							g'8 -\staccatissimo ~ \> \p
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							g'8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 -\staccatissimo ] \! \)
							\revert Hairpin #'circled-tip
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 -\staccatissimo \p [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							f16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g'16 -\staccatissimo \pp
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							a16 -\staccatissimo
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8 -\staccatissimo \mp ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\afterGrace
							e'8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								f16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 -\staccatissimo ] \)
						}
					}
					{
						{
							r8.
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
							R1 * 3/4
						}
						{
							R1 * 3/8
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