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
				\mark \markup { \override #'(box-padding . 0.5) \box 1 }
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
						\tag #'Segment1SaxophoneVoice1
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								d'32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								c'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice3
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								d'32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b32 -\staccato
							}
						}
						\tag #'Segment1SaxophoneVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								c'32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								cs'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice6
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								a32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment1SaxophoneVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								a32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice9
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b32 -\accent \sfz [
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
						\tag #'Segment1SaxophoneVoice11
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								e32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								af'32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice13
						{
							{
								r16
								r8.
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								af32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						\tag #'Segment1SaxophoneVoice15
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								af32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								d'32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8.
							}
						}
						\tag #'Segment1SaxophoneVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								bf32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								ef32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment1SaxophoneVoice17
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
						\tag #'Segment1GuitarVoice1
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
						\tag #'Segment1GuitarVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								e32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								ef'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice3
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs'32 -\staccato
							}
						}
						\tag #'Segment1GuitarVoice5
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								ef32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c'32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice6
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice7
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								a32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16.
							}
						}
						\tag #'Segment1GuitarVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								b32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								a32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice9
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice10
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								a32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								af'32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice11
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								d'32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice13
						{
							{
								r16
								r8.
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								d'32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						\tag #'Segment1GuitarVoice15
						{
							\times 8/9 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								f32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8.
							}
						}
						\tag #'Segment1GuitarVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								cs'32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								bf32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment1GuitarVoice17
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
				\clef "treble"
				\context Voice = "Piano RH Voice" {
					{
						\tag #'Segment1PianoRHVoice1
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<ef' gf'>16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<fs' a'>16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment1PianoRHVoice2
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment1PianoRHVoice3
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef'16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<cs'' e'' fs''>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<b' c'' ef''>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment1PianoRHVoice4
						{
							{
								r4
							}
						}
						\tag #'Segment1PianoRHVoice5
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment1PianoRHVoice6
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment1PianoRHVoice7
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment1PianoRHVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<d' f'>16 -\accent \sfz \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								e'8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment1PianoRHVoice9
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								e'16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<d'' f''>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<
									\tweak #'color #red
									f''
									g''
									af''
									df'''
								>16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment1PianoRHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment1PianoRHVoice11
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
				\clef "bass"
				\context Voice = "Piano LH Voice" {
					{
						\tag #'Segment1PianoLHVoice1
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\clef treble
								<f af>16 -\accent \sfz
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<af' cf''>8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment1PianoLHVoice2
						{
							{
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\clef bass
									f16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment1PianoLHVoice3
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								b,16 -\accent \sfz \) [
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									f16 [ \(
									af16 ]
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<b d' e'>16 -\staccato \)
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment1PianoLHVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef treble
								<as b d'>16 -\accent \f
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<a c'>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								b'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment1PianoLHVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment1PianoLHVoice6
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
									ef16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment1PianoLHVoice7
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<as b cs'>16 -\accent \sfz \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								\afterGrace
								<f' af'>8 -\staccato
								{
									ef'16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								d'16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment1PianoLHVoice8
						{
							{
								r4
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									ef16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment1PianoLHVoice9
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								af16 -\accent \sfz \) [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<e' g'>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<
									d''
									e''
									\tweak #'color #red
									f''
									bf''
								>16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment1PianoLHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment1PianoLHVoice11
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
					\tag #'Segment1PianoPedals1
					{
						{
							s1 * 1/4 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment1PianoPedals2
					{
						{
							r4
						}
					}
				}
				{
					\tag #'Segment1PianoPedals3
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/4 \sustainOn
						}
					}
					\tag #'Segment1PianoPedals4
					{
						{
							s1 * 3/16
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment1PianoPedals5
					{
						{
							r16
						}
					}
					\tag #'Segment1PianoPedals6
					{
						{
							R1 * 1/4
						}
					}
				}
				{
					\tag #'Segment1PianoPedals7
					{
						{
							s1 * 1/4 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment1PianoPedals8
					{
						{
							r16
						}
					}
				}
				{
					\tag #'Segment1PianoPedals9
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 3/16 \sustainOn
						}
					}
					\tag #'Segment1PianoPedals10
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/16
						}
					}
					\tag #'Segment1PianoPedals11
					{
						{
							s1 * 3/16
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment1PianoPedals12
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment1PianoPedals13
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
						\tag #'Segment1PercussionShakerVoice1
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
						\tag #'Segment1PercussionShakerVoice2
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
						\tag #'Segment1PercussionShakerVoice3
						{
							{
								r16
							}
						}
						\tag #'Segment1PercussionShakerVoice4
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
						\tag #'Segment1PercussionShakerVoice5
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
						\tag #'Segment1PercussionShakerVoice6
						{
							{
								r8.
							}
						}
						\tag #'Segment1PercussionShakerVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment1PercussionShakerVoice8
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment1PercussionShakerVoice9
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
						\tag #'Segment1PercussionShakerVoice10
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
						\tag #'Segment1PercussionShakerVoice11
						{
							{
								r8
							}
						}
						\tag #'Segment1PercussionShakerVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment1PercussionShakerVoice13
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
						\tag #'Segment1PercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment1PercussionWoodblockVoice2
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment1PercussionWoodblockVoice3
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment1PercussionWoodblockVoice4
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment1PercussionWoodblockVoice5
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment1PercussionWoodblockVoice6
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment1PercussionWoodblockVoice7
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
						\tag #'Segment1PercussionDrumVoice1
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
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
						\tag #'Segment1PercussionDrumVoice2
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment1PercussionDrumVoice3
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
						\tag #'Segment1PercussionDrumVoice4
						{
							{
								r4
							}
						}
						\tag #'Segment1PercussionDrumVoice5
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment1PercussionDrumVoice6
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment1PercussionDrumVoice7
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment1PercussionDrumVoice8
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
						\tag #'Segment1PercussionDrumVoice9
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
						\tag #'Segment1PercussionDrumVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment1PercussionDrumVoice11
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