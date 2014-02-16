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
						\tag #'Segment3aSaxophoneVoice1
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment3aSaxophoneVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								b,8 \sfz
								af,4 ~
							}
						}
						\tag #'Segment3aSaxophoneVoice3
						{
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
						}
						\tag #'Segment3aSaxophoneVoice4
						{
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
						}
						\tag #'Segment3aSaxophoneVoice5
						{
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
						}
						\tag #'Segment3aSaxophoneVoice6
						{
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
					}
					{
						\tag #'Segment3aSaxophoneVoice7
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
					}
					{
						\tag #'Segment3aSaxophoneVoice8
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
					}
					{
						\tag #'Segment3aSaxophoneVoice9
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
					}
					{
						\tag #'Segment3aSaxophoneVoice10
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
					}
					{
						\tag #'Segment3aSaxophoneVoice11
						{
							{
								r8
							}
						}
						\tag #'Segment3aSaxophoneVoice12
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
						\tag #'Segment3aSaxophoneVoice13
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment3aSaxophoneVoice14
						{
							{
								\pitchedTrill
								b,4 \sfz \startTrillSpan d
								<> \stopTrillSpan
								a4
							}
						}
					}
					{
						\tag #'Segment3aSaxophoneVoice15
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment3aSaxophoneVoice16
						{
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
					}
					{
						\tag #'Segment3aSaxophoneVoice17
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
					}
					{
						\tag #'Segment3aSaxophoneVoice18
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
					}
					{
						\tag #'Segment3aSaxophoneVoice19
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
						}
						\tag #'Segment3aSaxophoneVoice20
						{
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
						}
						\tag #'Segment3aSaxophoneVoice21
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								f8 ]
								<> \stopTrillSpan
								g4 ~
							}
						}
						\tag #'Segment3aSaxophoneVoice22
						{
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
						}
						\tag #'Segment3aSaxophoneVoice23
						{
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
					}
					{
						\tag #'Segment3aSaxophoneVoice24
						{
							{
								r8.
								r2
							}
						}
					}
					{
						\tag #'Segment3aSaxophoneVoice25
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
						}
						\tag #'Segment3aSaxophoneVoice26
						{
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
						}
						\tag #'Segment3aSaxophoneVoice27
						{
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
					}
					{
						\tag #'Segment3aSaxophoneVoice28
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
					}
					{
						\tag #'Segment3aSaxophoneVoice29
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
						}
						\tag #'Segment3aSaxophoneVoice30
						{
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
					}
					{
						\tag #'Segment3aSaxophoneVoice31
						{
							{
								r8
							}
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
						\tag #'Segment3aGuitarVoice1
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
					}
					{
						\tag #'Segment3aGuitarVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<e d'>16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								<ef' c''>32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3aGuitarVoice4
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice5
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<c b d' a'>16 \p [
								{
									c''16 \(
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<gf ef'>16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment3aGuitarVoice6
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<ds cs'>8 \pp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<ef c'>8 ]
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment3aGuitarVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3aGuitarVoice9
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3aGuitarVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice11
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<d b>8 \p
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<b fs' a' gs''>8 ]
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice12
						{
							{
								r8
							}
						}
						\tag #'Segment3aGuitarVoice13
						{
							{
								r2.
								r16
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice14
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<af c' gf'>16 \p [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								d'8 ]
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice15
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment3aGuitarVoice16
						{
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
					}
					{
						\tag #'Segment3aGuitarVoice17
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								<af f'>8 \p \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								<a g'>16 ]
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice18
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment3aGuitarVoice19
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
						\tag #'Segment3aGuitarVoice20
						{
							{
								r2
								r16
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice21
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<g e'>16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<g f'>16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<cf af>16
							}
						}
						\tag #'Segment3aGuitarVoice22
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16 \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								e'16 ]
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice23
						{
							{
								r8.
							}
						}
						\tag #'Segment3aGuitarVoice24
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3aGuitarVoice25
						{
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
					}
					{
						\tag #'Segment3aGuitarVoice26
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								f'8 \p \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<ef' c''>8 ]
							}
						}
					}
					{
						\tag #'Segment3aGuitarVoice27
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
			}
		>>
		\tag score.piano
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\context Voice = "Piano RH Voice" {
					{
						\tag #'Segment3aPianoRHVoice1
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
						\tag #'Segment3aPianoRHVoice2
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment3aPianoRHVoice3
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\clef treble
								af''16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								d'''16 ]
							}
						}
					}
					{
						\tag #'Segment3aPianoRHVoice4
						{
							{
								r8
								r2
							}
						}
						\tag #'Segment3aPianoRHVoice5
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment3aPianoRHVoice6
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
								<d'' f'' a''>16 \p [
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
								d'''16 ]
							}
						}
					}
					{
						\tag #'Segment3aPianoRHVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment3aPianoRHVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoRHVoice9
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoRHVoice10
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3aPianoRHVoice11
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3aPianoRHVoice12
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPianoRHVoice13
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPianoRHVoice14
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoRHVoice15
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3aPianoRHVoice16
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoRHVoice17
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPianoRHVoice18
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoRHVoice19
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPianoRHVoice20
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoRHVoice21
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment3aPianoLHVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment3aPianoLHVoice2
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPianoLHVoice3
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3aPianoLHVoice4
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoLHVoice5
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3aPianoLHVoice6
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment3aPianoLHVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								r32 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef treble
								<b' d''>16 \p
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								<a' c''>32 ]
							}
						}
					}
					{
						\tag #'Segment3aPianoLHVoice8
						{
							{
								r8
							}
						}
						\tag #'Segment3aPianoLHVoice9
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
						\tag #'Segment3aPianoLHVoice10
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment3aPianoLHVoice11
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<a' c''>16 \p [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b'32
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment3aPianoLHVoice12
						{
							{
								r16
								r2
							}
						}
						\tag #'Segment3aPianoLHVoice13
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment3aPianoLHVoice14
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoLHVoice15
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3aPianoLHVoice16
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoLHVoice17
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPianoLHVoice18
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoLHVoice19
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPianoLHVoice20
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPianoLHVoice21
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment3aPianoPedals1
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment3aPianoPedals2
					{
						{
							r4
						}
					}
				}
				{
					\tag #'Segment3aPianoPedals3
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/8 \sustainOn
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment3aPianoPedals4
					{
						{
							r8
							r2
						}
					}
					\tag #'Segment3aPianoPedals5
					{
						{
							r4
							r16
						}
					}
				}
				{
					\tag #'Segment3aPianoPedals6
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/8 \sustainOn
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment3aPianoPedals7
					{
						{
							r16
						}
					}
					\tag #'Segment3aPianoPedals8
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment3aPianoPedals9
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment3aPianoPedals10
					{
						{
							r4
						}
					}
				}
				{
					\tag #'Segment3aPianoPedals11
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/8 \sustainOn
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment3aPianoPedals12
					{
						{
							r8
						}
					}
					\tag #'Segment3aPianoPedals13
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment3aPianoPedals14
					{
						{
							r4
							r16
						}
					}
				}
				{
					\tag #'Segment3aPianoPedals15
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/8 \sustainOn
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment3aPianoPedals16
					{
						{
							r16
							r2
						}
					}
					\tag #'Segment3aPianoPedals17
					{
						{
							R1 * 1
						}
					}
					\tag #'Segment3aPianoPedals18
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment3aPianoPedals19
					{
						{
							R1 * 1/2
						}
					}
					\tag #'Segment3aPianoPedals20
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment3aPianoPedals21
					{
						{
							R1 * 1
						}
					}
					\tag #'Segment3aPianoPedals22
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment3aPianoPedals23
					{
						{
							R1 * 1
						}
					}
					\tag #'Segment3aPianoPedals24
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment3aPianoPedals25
					{
						{
							R1 * 1/2
						}
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
						\tag #'Segment3aPercussionShakerVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment3aPercussionShakerVoice2
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPercussionShakerVoice3
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3aPercussionShakerVoice4
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPercussionShakerVoice5
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPercussionShakerVoice6
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3aPercussionShakerVoice7
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3aPercussionShakerVoice8
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPercussionShakerVoice9
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPercussionShakerVoice10
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPercussionShakerVoice11
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3aPercussionShakerVoice12
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPercussionShakerVoice13
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPercussionShakerVoice14
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPercussionShakerVoice15
						{
							{
								R1 * 1
							}
						}
						\tag #'Segment3aPercussionShakerVoice16
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment3aPercussionShakerVoice17
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
				\context Voice = "Percussion Woodblock Voice" {
					{
						\tag #'Segment3aPercussionWoodblockVoice1
						{
							{
								r4
								r8
							}
						}
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice2
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
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice3
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3aPercussionWoodblockVoice4
						{
							{
								r4
								r16
							}
						}
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice5
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
						}
						\tag #'Segment3aPercussionWoodblockVoice6
						{
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
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice7
						{
							{
								r16
							}
						}
						\tag #'Segment3aPercussionWoodblockVoice8
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3aPercussionWoodblockVoice9
						{
							{
								R1 * 1/2
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment3aPercussionWoodblockVoice10
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice11
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
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice12
						{
							{
								r8
							}
						}
						\tag #'Segment3aPercussionWoodblockVoice13
						{
							{
								r2.
								r16
							}
						}
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice14
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
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice15
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1
							}
						}
						\tag #'Segment3aPercussionWoodblockVoice16
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice17
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
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice18
						{
							{
								r8
								r4
							}
						}
						\tag #'Segment3aPercussionWoodblockVoice19
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
						\tag #'Segment3aPercussionWoodblockVoice20
						{
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
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice21
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								f16 -\accent \) [ \< \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								c'8 -\staccato
							}
						}
						\tag #'Segment3aPercussionWoodblockVoice22
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								g'16 -\accent
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								c'16 -\staccato ] \f
							}
						}
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice23
						{
							{
								r8.
							}
						}
						\tag #'Segment3aPercussionWoodblockVoice24
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3aPercussionWoodblockVoice25
						{
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
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice26
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
					}
					{
						\tag #'Segment3aPercussionWoodblockVoice27
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
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Drum Voice" {
					{
						\tag #'Segment3aPercussionDrumVoice1
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
					{
						\tag #'Segment3aPercussionDrumVoice2
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 11/12 {
								a2 :32 -\accent \mp
								e'4 :32
							}
						}
					}
					{
						\tag #'Segment3aPercussionDrumVoice3
						{
							{
								r16
								r4
							}
						}
						\tag #'Segment3aPercussionDrumVoice4
						{
							{
								r8.
							}
						}
					}
					{
						\tag #'Segment3aPercussionDrumVoice5
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
					}
					{
						\tag #'Segment3aPercussionDrumVoice6
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
					}
					{
						\tag #'Segment3aPercussionDrumVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								c'8 :64 -\accent \mp [
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
					}
					{
						\tag #'Segment3aPercussionDrumVoice8
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
					}
					{
						\tag #'Segment3aPercussionDrumVoice9
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/12 {
								c'4 :32 -\accent \) \< \mp
								e'2 :32 -\accent ~
							}
						}
						\tag #'Segment3aPercussionDrumVoice10
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 5/6 {
								\set stemLeftBeamCount = -1
								\set stemRightBeamCount = 1
								e'8 :64 \f [
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
					}
					{
						\tag #'Segment3aPercussionDrumVoice11
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
					}
					{
						\tag #'Segment3aPercussionDrumVoice12
						{
							\times 2/3 {
								a4 -\accent \) \< \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								e'8 :64 -\accent ~
							}
						}
						\tag #'Segment3aPercussionDrumVoice13
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 9/16 {
								e'2 :32
								c'2 :32 \f
							}
						}
					}
					{
						\tag #'Segment3aPercussionDrumVoice14
						{
							{
								r8.
							}
						}
						\tag #'Segment3aPercussionDrumVoice15
						{
							{
								r2
								r8
							}
						}
					}
					{
						\tag #'Segment3aPercussionDrumVoice16
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								e'4 :32 -\accent \mp
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
					}
					{
						\tag #'Segment3aPercussionDrumVoice17
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment3aPercussionDrumVoice18
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment3aPercussionDrumVoice19
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment3aPercussionDrumVoice20
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								e'8 :64 -\accent [ \< \mp
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								e'8 :64 -\accent ~ ] \)
							}
						}
						\tag #'Segment3aPercussionDrumVoice21
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 11/20 {
								\afterGrace
								e'2. :32
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
					}
					{
						\tag #'Segment3aPercussionDrumVoice22
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment3aPercussionDrumVoice23
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
						}
						\tag #'Segment3aPercussionDrumVoice24
						{
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
								e'4 :32 \mp \)
							}
						}
					}
					{
						\tag #'Segment3aPercussionDrumVoice25
						{
							{
								r2
							}
						}
					}
					{
						\tag #'Segment3aPercussionDrumVoice26
						{
							\times 2/3 {
								c'4 :32 -\accent \< \mp
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = -1
								e'8 -\accent ~
							}
						}
						\tag #'Segment3aPercussionDrumVoice27
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 7/8 {
								e'4
								a4 :32 \f
							}
						}
					}
					{
						\tag #'Segment3aPercussionDrumVoice28
						{
							{
								r16
								\bar "||"
							}
						}
					}
				}
			}
		>>
	>>
}