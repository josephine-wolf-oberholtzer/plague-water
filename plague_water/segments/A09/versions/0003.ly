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
				\mark \markup { \override #'(box-padding . 0.5) \box 9 }
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
						\tag #'Segment9SaxophoneVoice1
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								a,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b,32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice3
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								e,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af,32 -\staccato
							}
						}
						\tag #'Segment9SaxophoneVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								e,32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								f,32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice6
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af,32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment9SaxophoneVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								f,32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								a,32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice9
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								af,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								f32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice11
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								c32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice13
						{
							{
								r16
								r8.
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						\tag #'Segment9SaxophoneVoice15
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								ef,32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								bf,32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8.
							}
						}
						\tag #'Segment9SaxophoneVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								fs,32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								af,32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment9SaxophoneVoice17
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
						\tag #'Segment9GuitarVoice1
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
						\tag #'Segment9GuitarVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								a32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice3
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								d32 -\staccato
							}
						}
						\tag #'Segment9GuitarVoice5
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f,32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								af,32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice6
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice7
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								a32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16.
							}
						}
						\tag #'Segment9GuitarVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								b,32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								af,32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice9
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice10
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								d32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								af32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice11
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								ef32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								f32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice13
						{
							{
								r16
								r8.
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								bf,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								c32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						\tag #'Segment9GuitarVoice15
						{
							\times 8/9 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								a,32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								b,32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8.
							}
						}
						\tag #'Segment9GuitarVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								f32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								d32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment9GuitarVoice17
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
						\tag #'Segment9PianoRHVoice1
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef bass
								a16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment9PianoRHVoice2
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment9PianoRHVoice3
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef treble
								<d f>16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<f' g' af' df''>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								af16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment9PianoRHVoice4
						{
							{
								r4
							}
						}
						\tag #'Segment9PianoRHVoice5
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment9PianoRHVoice6
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment9PianoRHVoice7
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\clef bass
									a16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment9PianoRHVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<c f>16 -\accent \sfz \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								<f af>8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment9PianoRHVoice9
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<ef af>16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d f>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								cs'16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment9PianoRHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment9PianoRHVoice11
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
						\tag #'Segment9PianoLHVoice1
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\clef bass
								a,,16 -\accent \sfz
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<as, b, cs>8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment9PianoLHVoice2
						{
							{
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									a,,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment9PianoLHVoice3
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<e, g,>16 -\accent \sfz \) [
								{
									a,16 [ \(
									b,16 ]
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e,16 -\staccato \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment9PianoLHVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d, f,>16 -\accent \f
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<a,, c,>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<af, bf, cf ff>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment9PianoLHVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment9PianoLHVoice6
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
									a,,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment9PianoLHVoice7
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								e,16 -\accent \sfz \) [
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								<b,, d, f,>8 -\staccato
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								{
									a,,16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<c, ef, f,>16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment9PianoLHVoice8
						{
							{
								r4
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\ottava #-1
									a,,16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment9PianoLHVoice9
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<c, ef,>16 -\accent \sfz \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b,,16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<f,, af,, bf,,>16 -\staccato
								\ottava #0
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment9PianoLHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment9PianoLHVoice11
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
					\tag #'Segment9PianoPedals1
					{
						{
							s1 * 1/4 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment9PianoPedals2
					{
						{
							r4
						}
					}
				}
				{
					\tag #'Segment9PianoPedals3
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/4 \sustainOn
						}
					}
					\tag #'Segment9PianoPedals4
					{
						{
							s1 * 3/16
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment9PianoPedals5
					{
						{
							r16
						}
					}
					\tag #'Segment9PianoPedals6
					{
						{
							R1 * 1/4
						}
					}
				}
				{
					\tag #'Segment9PianoPedals7
					{
						{
							s1 * 1/4 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment9PianoPedals8
					{
						{
							r16
						}
					}
				}
				{
					\tag #'Segment9PianoPedals9
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 3/16 \sustainOn
						}
					}
					\tag #'Segment9PianoPedals10
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/16
						}
					}
					\tag #'Segment9PianoPedals11
					{
						{
							s1 * 3/16
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment9PianoPedals12
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment9PianoPedals13
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
						\tag #'Segment9PercussionShakerVoice1
						{
							{
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment9PercussionShakerVoice2
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								f'16 \mp \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 ] \)
							}
						}
					}
					{
						\tag #'Segment9PercussionShakerVoice3
						{
							{
								r16
							}
						}
						\tag #'Segment9PercussionShakerVoice4
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									d'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment9PercussionShakerVoice5
						{
							\times 2/3 {
								\afterGrace
								f'4 \mp \)
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									g16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								b8 \)
							}
						}
					}
					{
						\tag #'Segment9PercussionShakerVoice6
						{
							{
								r8.
							}
						}
						\tag #'Segment9PercussionShakerVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment9PercussionShakerVoice8
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment9PercussionShakerVoice9
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								d'16 \mp [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								g16 \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								b16
							}
						}
						\tag #'Segment9PercussionShakerVoice10
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								d'16 \p
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								f'16 ]
							}
						}
					}
					{
						\tag #'Segment9PercussionShakerVoice11
						{
							{
								r8
							}
						}
						\tag #'Segment9PercussionShakerVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment9PercussionShakerVoice13
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
						\tag #'Segment9PercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment9PercussionWoodblockVoice2
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment9PercussionWoodblockVoice3
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment9PercussionWoodblockVoice4
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment9PercussionWoodblockVoice5
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment9PercussionWoodblockVoice6
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment9PercussionWoodblockVoice7
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
						\tag #'Segment9PercussionDrumVoice1
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								c'8 \mp [
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
						\tag #'Segment9PercussionDrumVoice2
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment9PercussionDrumVoice3
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								c'8 \mp [
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
						\tag #'Segment9PercussionDrumVoice4
						{
							{
								r4
							}
						}
						\tag #'Segment9PercussionDrumVoice5
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment9PercussionDrumVoice6
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment9PercussionDrumVoice7
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment9PercussionDrumVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16 ~ \< \mp
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								c'16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								e'16
							}
						}
						\tag #'Segment9PercussionDrumVoice9
						{
							\times 2/3 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								a8
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 \f \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment9PercussionDrumVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment9PercussionDrumVoice11
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