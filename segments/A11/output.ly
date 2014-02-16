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
						\tag #'Segment11SaxophoneVoice1
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								af32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice3
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d'32 -\staccato
							}
						}
						\tag #'Segment11SaxophoneVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								af32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice6
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								d32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment11SaxophoneVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								d32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								f32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice9
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								ef32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								bf32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice11
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								af32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								e32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice13
						{
							{
								r16
								r8.
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								c32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						\tag #'Segment11SaxophoneVoice15
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								b,32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								ef32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8.
							}
						}
						\tag #'Segment11SaxophoneVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								b32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a,32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment11SaxophoneVoice17
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
						\tag #'Segment11GuitarVoice1
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
					}
					{
						\tag #'Segment11GuitarVoice2
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
					}
					{
						\tag #'Segment11GuitarVoice3
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment11GuitarVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								af,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								e32 -\staccato
							}
						}
						\tag #'Segment11GuitarVoice5
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								af,32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment11GuitarVoice6
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment11GuitarVoice7
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
						}
						\tag #'Segment11GuitarVoice8
						{
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
					}
					{
						\tag #'Segment11GuitarVoice9
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment11GuitarVoice10
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
					}
					{
						\tag #'Segment11GuitarVoice11
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment11GuitarVoice12
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
					}
					{
						\tag #'Segment11GuitarVoice13
						{
							{
								r16
								r8.
							}
						}
					}
					{
						\tag #'Segment11GuitarVoice14
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
						}
						\tag #'Segment11GuitarVoice15
						{
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
						}
						\tag #'Segment11GuitarVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								a32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								b,32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment11GuitarVoice17
						{
							{
								r8
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
						\tag #'Segment11PianoRHVoice1
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
					}
					{
						\tag #'Segment11PianoRHVoice2
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment11PianoRHVoice3
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
					}
					{
						\tag #'Segment11PianoRHVoice4
						{
							{
								r4
							}
						}
						\tag #'Segment11PianoRHVoice5
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment11PianoRHVoice6
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment11PianoRHVoice7
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\clef bass
									af16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment11PianoRHVoice8
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
						}
						\tag #'Segment11PianoRHVoice9
						{
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
					}
					{
						\tag #'Segment11PianoRHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment11PianoRHVoice11
						{
							{
								R1 * 3/16
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
						\tag #'Segment11PianoLHVoice1
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
					}
					{
						\tag #'Segment11PianoLHVoice2
						{
							{
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									b,,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment11PianoLHVoice3
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
									af,16 [ \(
									f,16 ]
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<cf df>16 -\staccato \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment11PianoLHVoice4
						{
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
					}
					{
						\tag #'Segment11PianoLHVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment11PianoLHVoice6
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
									\ottava #-1
									af,,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment11PianoLHVoice7
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<d, gf,>16 -\accent \sfz \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								<df,>8 -\staccato
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
					}
					{
						\tag #'Segment11PianoLHVoice8
						{
							{
								r4
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #-1
									af,,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment11PianoLHVoice9
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
					}
					{
						\tag #'Segment11PianoLHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment11PianoLHVoice11
						{
							{
								R1 * 3/16
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					\tag #'Segment11PianoPedals1
					{
						{
							s1 * 1/4 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment11PianoPedals2
					{
						{
							r4
						}
					}
				}
				{
					\tag #'Segment11PianoPedals3
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/4 \sustainOn
						}
					}
					\tag #'Segment11PianoPedals4
					{
						{
							s1 * 3/16
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment11PianoPedals5
					{
						{
							r16
						}
					}
					\tag #'Segment11PianoPedals6
					{
						{
							R1 * 1/4
						}
					}
				}
				{
					\tag #'Segment11PianoPedals7
					{
						{
							s1 * 1/4 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment11PianoPedals8
					{
						{
							r16
						}
					}
				}
				{
					\tag #'Segment11PianoPedals9
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 3/16 \sustainOn
						}
					}
					\tag #'Segment11PianoPedals10
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/16
						}
					}
					\tag #'Segment11PianoPedals11
					{
						{
							s1 * 3/16
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment11PianoPedals12
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment11PianoPedals13
					{
						{
							R1 * 3/16
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
						\tag #'Segment11PercussionShakerVoice1
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
					}
					{
						\tag #'Segment11PercussionShakerVoice2
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
					}
					{
						\tag #'Segment11PercussionShakerVoice3
						{
							{
								r16
							}
						}
						\tag #'Segment11PercussionShakerVoice4
						{
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
					}
					{
						\tag #'Segment11PercussionShakerVoice5
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
					}
					{
						\tag #'Segment11PercussionShakerVoice6
						{
							{
								r8.
							}
						}
						\tag #'Segment11PercussionShakerVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment11PercussionShakerVoice8
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment11PercussionShakerVoice9
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
						}
						\tag #'Segment11PercussionShakerVoice10
						{
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
					}
					{
						\tag #'Segment11PercussionShakerVoice11
						{
							{
								r8
							}
						}
						\tag #'Segment11PercussionShakerVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment11PercussionShakerVoice13
						{
							{
								R1 * 3/16
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
						\tag #'Segment11PercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment11PercussionWoodblockVoice2
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment11PercussionWoodblockVoice3
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment11PercussionWoodblockVoice4
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment11PercussionWoodblockVoice5
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment11PercussionWoodblockVoice6
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment11PercussionWoodblockVoice7
						{
							{
								R1 * 3/16
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
						\tag #'Segment11PercussionDrumVoice1
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
										,
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
					}
					{
						\tag #'Segment11PercussionDrumVoice2
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment11PercussionDrumVoice3
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
					}
					{
						\tag #'Segment11PercussionDrumVoice4
						{
							{
								r4
							}
						}
						\tag #'Segment11PercussionDrumVoice5
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment11PercussionDrumVoice6
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment11PercussionDrumVoice7
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment11PercussionDrumVoice8
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
						}
						\tag #'Segment11PercussionDrumVoice9
						{
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
					}
					{
						\tag #'Segment11PercussionDrumVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment11PercussionDrumVoice11
						{
							{
								R1 * 3/16
								\bar "||"
								\stopStaff
								\startStaff
							}
						}
					}
				}
			}
		>>
	>>
}