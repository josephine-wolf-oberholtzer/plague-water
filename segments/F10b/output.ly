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
				\mark \markup { \override #'(box-padding . 0.5) \box 10B }
				\tempo 8=48
				\time 2/4
				s1 * 1/2
			}
			{
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
				\time 2/4
				s1 * 1/2
			}
			{
				\time 5/16
				s1 * 5/16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							a16 -\staccatissimo \p [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 -\snappizzicato \)
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 -\accent -\snappizzicato ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							a16 -\staccatissimo \pp [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 -\staccatissimo ] \)
						}
					}
					{
						{
							r4
						}
						{
							r2
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e16 -\accent -\snappizzicato \ppp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c'16 -\staccatissimo
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\afterGrace
							e16 -\accent -\snappizzicato
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								c'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							e32 -\staccatissimo ] \)
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
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							e32 -\snappizzicato \p [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 -\accent -\snappizzicato ]
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
							R1 * 5/16
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
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							<ef'>16 -\staccatissimo \)
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							r16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<fs>16 -\staccatissimo ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<fs>16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<g>16 -\staccatissimo ]
						}
					}
					{
						{
							r8.
						}
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\afterGrace
							c'16 -\staccatissimo \p [
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a'16 -\staccatissimo ] \)
						}
					}
					{
						{
							r4
						}
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
							<f d''>16 -\staccatissimo \arpeggio \pp
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							<b>32 -\staccatissimo
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							<g>16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<g, fs e'>16 -\staccatissimo \arpeggio
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
							R1 * 3/4
							\stopStaff
							\startStaff
						}
						{
							\afterGrace
							r8
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							<bf, a g'>16 -\staccatissimo \arpeggio \ppp \) [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							<c'>16 -\staccatissimo ]
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
							R1 * 5/16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #2
							\clef treble
							e''''16 -\staccatissimo \pp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							<g''''>32 -\staccatissimo
							\ottava #0
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
						}
					}
					{
						{
							r8
							r4
						}
						{
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #2
							<fs'''' g'''' c'''''>16 -\staccatissimo \ppp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c''''16 -\staccatissimo
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
							<a''' c'''' e''''>16 -\staccatissimo
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
							<c'''' d''''>16 -\staccatissimo
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
							r2
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #2
							a'''16 -\staccatissimo \p [
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
							r8
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #2
							e''''16 -\staccatissimo \pp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							<ef''''>16 -\staccatissimo
							\ottava #0
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							\ottava #2
							<d'''' ef'''' af''''>8 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c''''16 -\staccatissimo ]
							\ottava #0
						}
					}
					{
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
							\set stemRightBeamCount = 0
							a'''16 -\staccatissimo ]
						}
					}
					{
						{
							r8
							r4
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
							\ottava #1
							<g'''>16 -\staccatissimo \pp
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							<
								b'''
								\tweak #'color #red
								c''''
								f''''
							>32 -\staccatissimo
						}
						\times 2/3 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'''16 -\staccatissimo
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
							r8
						}
						{
							r2
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							c'''8 -\staccatissimo \ppp [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'''8 -\staccatissimo ]
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
							R1 * 3/4
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							\ottava #1
							e'''16 -\staccatissimo \p
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'''16 -\staccatissimo ]
							\ottava #0
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
							R1 * 5/16
							\stopStaff
							\startStaff
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						s1 * 1/8 \sustainOn
						<> \sustainOff
					}
				}
				{
					{
						r8
						r4
					}
					{
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
						r2
					}
				}
				{
					{
						s1 * 3/16 \sustainOn
						<> \sustainOff
					}
				}
				{
					{
						r16
					}
					{
						R1 * 3/4
					}
					{
						r8
					}
				}
				{
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						s1 * 3/16 \sustainOn
					}
					{
						s1 * 3/16
						<> \sustainOff
						\LV
					}
				}
				{
					{
						R1 * 5/16
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
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 -\staccatissimo \ppp [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							a8 -\staccatissimo ]
						}
					}
					{
						{
							r8
							r4
						}
						{
							r8
						}
					}
					{
						\times 2/3 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 -\staccatissimo \pp [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 -\staccatissimo ]
						}
					}
					{
						{
							r4
						}
						{
							r2
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 -\staccatissimo \p [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e'16 -\staccatissimo
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 -\staccatissimo ]
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
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							a8 -\staccatissimo \ppp [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							a8 -\staccatissimo
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							e'32 -\staccatissimo
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							a16 -\staccatissimo ]
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
							R1 * 3/4
						}
						{
							R1 * 3/4
						}
						{
							R1 * 1/2
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
							\afterGrace
							e'4 \mp
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
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8 \)
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							c'4 \mp
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
							\set stemRightBeamCount = -1
							a8 ~ ] \) \> \mp
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/8 {
							a4
							c'4 \p
						}
					}
					{
						{
							\afterGrace
							r8.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
						}
					}
					{
						{
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 \) [ \< \mp
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = -1
							c'8 ~ ]
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 9/10 {
							\afterGrace
							c'4.
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								a16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							c'4 \f \)
						}
					}
					{
						{
							r8.
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
							c'8 \< \mp
							{
								\override Flag #'stroke-style = #"grace"
								\override Stem #'length = #8
								e'16 \(
								\revert Flag #'stroke-style
								\revert Stem #'length
							}
							a4 ~ \)
						}
						\times 2/3 {
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 1
							a8 \f [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							r8
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 \sfp ]
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