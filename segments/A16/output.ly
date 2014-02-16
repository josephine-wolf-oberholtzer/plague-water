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
				\mark \markup { \override #'(box-padding . 0.5) \box 16 }
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
						\tag #'Segment16SaxophoneVoice1
						{
							{
								r4
							}
						}
					}
					{
						\tag #'Segment16SaxophoneVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								ef32 -\accent \sfz [
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
						\tag #'Segment16SaxophoneVoice3
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment16SaxophoneVoice4
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
						\tag #'Segment16SaxophoneVoice5
						{
							\times 2/3 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								ef32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								c32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment16SaxophoneVoice6
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment16SaxophoneVoice7
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								a,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								cs'32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16
							}
						}
						\tag #'Segment16SaxophoneVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								c32 -\accent \sfz
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
						\tag #'Segment16SaxophoneVoice9
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment16SaxophoneVoice10
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								c32 -\accent \sfz [
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
						\tag #'Segment16SaxophoneVoice11
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment16SaxophoneVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								d32 -\accent \sfz [
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
						\tag #'Segment16SaxophoneVoice13
						{
							{
								r16
								r8.
							}
						}
					}
					{
						\tag #'Segment16SaxophoneVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								af32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						\tag #'Segment16SaxophoneVoice15
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								af32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								f32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8.
							}
						}
						\tag #'Segment16SaxophoneVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								f32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								a,32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment16SaxophoneVoice17
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
						\tag #'Segment16GuitarVoice1
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
						\tag #'Segment16GuitarVoice2
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								f,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								ef32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								r32 ]
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice3
						{
							{
								r16
								r16
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice4
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								c32 -\staccato
							}
						}
						\tag #'Segment16GuitarVoice5
						{
							{
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d32 -\accent
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								cs32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice6
						{
							{
								r8.
								r8
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice7
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								b,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								bf,32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								r16.
							}
						}
						\tag #'Segment16GuitarVoice8
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								ef32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								b,32 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice9
						{
							{
								r8
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice10
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								d32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								c32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice11
						{
							{
								r16
								r8
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice12
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								e,32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								af32 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice13
						{
							{
								r16
								r8.
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice14
						{
							\times 2/3 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 3
								d32 -\accent \sfz [
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								f32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 2
								r32
							}
						}
						\tag #'Segment16GuitarVoice15
						{
							\times 8/9 {
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 3
								d32 -\accent \sfz
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 3
								e,32 -\staccato
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 1
								r32
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8.
							}
						}
						\tag #'Segment16GuitarVoice16
						{
							{
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 3
								b,32 -\accent \f
								\set stemLeftBeamCount = 3
								\set stemRightBeamCount = 0
								af,32 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment16GuitarVoice17
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
						\tag #'Segment16PianoRHVoice1
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef treble
								<ef'>16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<bf' df'' gf''>16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment16PianoRHVoice2
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment16PianoRHVoice3
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								r16 [
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<e''>16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<gf''>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<ef''>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment16PianoRHVoice4
						{
							{
								r4
							}
						}
						\tag #'Segment16PianoRHVoice5
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment16PianoRHVoice6
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment16PianoRHVoice7
						{
							{
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									c''16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment16PianoRHVoice8
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<ef' cf''>16 -\accent \sfz \) [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								d''8 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 1
								r8
							}
						}
						\tag #'Segment16PianoRHVoice9
						{
							\times 4/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<d'' g''>16 -\accent \sfz
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<af''>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								d'''16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment16PianoRHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment16PianoRHVoice11
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
						\tag #'Segment16PianoLHVoice1
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								r8 [
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								\clef bass
								<af bf>16 -\accent \sfz
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								<b ef'>8 -\staccato ]
							}
						}
					}
					{
						\tag #'Segment16PianoLHVoice2
						{
							{
								\afterGrace
								r4
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\clef treble
									c16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment16PianoLHVoice3
						{
							{
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								\afterGrace
								<f>16 -\accent \sfz \) [
								{
									c'16 [ \(
									ef16 ]
								}
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 1
								<b d' f'>16 -\staccato \)
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
								r8
							}
						}
						\tag #'Segment16PianoLHVoice4
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								r16
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								\clef bass
								<e>16 -\accent \f
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<ef>16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								ef'16 -\staccato
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment16PianoLHVoice5
						{
							{
								r16
							}
						}
						\tag #'Segment16PianoLHVoice6
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
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment16PianoLHVoice7
						{
							\times 4/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								<f>16 -\accent \sfz \) [
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
								<a c' e'>8 -\staccato
									^ \markup {
										\center-align
											\concat
												{
													\natural
													\flat
												}
										}
								{
									ef16 \(
								}
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 2
								<ef cf'>16 -\staccato \)
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 0
								r16 ]
							}
						}
					}
					{
						\tag #'Segment16PianoLHVoice8
						{
							{
								r4
								\afterGrace
								r16
								{
									\override Flag #'stroke-style = #"grace"
									\override Stem #'length = #8
									\clef treble
									c'16 \(
									\revert Flag #'stroke-style
									\revert Stem #'length
								}
							}
						}
					}
					{
						\tag #'Segment16PianoLHVoice9
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/5 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 2
								af16 -\accent \sfz \) [
								\once \override Accidental.stencil = ##f
								\once \override AccidentalCautionary.stencil = ##f
								\once \override Arpeggio.X-offset = #-2
								\once \override NoteHead.stencil = #ly:text-interface::print
								\once \override NoteHead.text = \markup {
									\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
								}
								\set stemLeftBeamCount = 2
								\set stemRightBeamCount = 2
								<c' e' g'>16 -\staccato
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
								<af bf>16 -\staccato
								\set stemLeftBeamCount = 1
								\set stemRightBeamCount = 0
								r8 ]
							}
						}
					}
					{
						\tag #'Segment16PianoLHVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment16PianoLHVoice11
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
					\tag #'Segment16PianoPedals1
					{
						{
							s1 * 1/4 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment16PianoPedals2
					{
						{
							r4
						}
					}
				}
				{
					\tag #'Segment16PianoPedals3
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/4 \sustainOn
						}
					}
					\tag #'Segment16PianoPedals4
					{
						{
							s1 * 3/16
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment16PianoPedals5
					{
						{
							r16
						}
					}
					\tag #'Segment16PianoPedals6
					{
						{
							R1 * 1/4
						}
					}
				}
				{
					\tag #'Segment16PianoPedals7
					{
						{
							s1 * 1/4 \sustainOn
							<> \sustainOff
						}
					}
				}
				{
					\tag #'Segment16PianoPedals8
					{
						{
							r16
						}
					}
				}
				{
					\tag #'Segment16PianoPedals9
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 3/16 \sustainOn
						}
					}
					\tag #'Segment16PianoPedals10
					{
						{
							\once \override PianoPedalBracket.edge-height = #'(1 . 0)
							s1 * 1/16
						}
					}
					\tag #'Segment16PianoPedals11
					{
						{
							s1 * 3/16
							<> \sustainOff
							\LV
						}
					}
				}
				{
					\tag #'Segment16PianoPedals12
					{
						{
							R1 * 1/4
						}
					}
					\tag #'Segment16PianoPedals13
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
						\tag #'Segment16PercussionShakerVoice1
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
						\tag #'Segment16PercussionShakerVoice2
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
						\tag #'Segment16PercussionShakerVoice3
						{
							{
								r16
							}
						}
						\tag #'Segment16PercussionShakerVoice4
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
						\tag #'Segment16PercussionShakerVoice5
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
						\tag #'Segment16PercussionShakerVoice6
						{
							{
								r8.
							}
						}
						\tag #'Segment16PercussionShakerVoice7
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment16PercussionShakerVoice8
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
					}
					{
						\tag #'Segment16PercussionShakerVoice9
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
						\tag #'Segment16PercussionShakerVoice10
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
						\tag #'Segment16PercussionShakerVoice11
						{
							{
								r8
							}
						}
						\tag #'Segment16PercussionShakerVoice12
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment16PercussionShakerVoice13
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
						\tag #'Segment16PercussionWoodblockVoice1
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/2
							}
						}
						\tag #'Segment16PercussionWoodblockVoice2
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment16PercussionWoodblockVoice3
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment16PercussionWoodblockVoice4
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment16PercussionWoodblockVoice5
						{
							{
								R1 * 1/2
							}
						}
						\tag #'Segment16PercussionWoodblockVoice6
						{
							{
								R1 * 1/4
							}
						}
						\tag #'Segment16PercussionWoodblockVoice7
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
						\tag #'Segment16PercussionDrumVoice1
						{
							\tweak #'text #tuplet-number::calc-fraction-text
							\times 3/4 {
								\set stemLeftBeamCount = 0
								\set stemRightBeamCount = 1
								\afterGrace
								c'8 \mp [
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
						\tag #'Segment16PercussionDrumVoice2
						{
							{
								r16
								r4
							}
						}
					}
					{
						\tag #'Segment16PercussionDrumVoice3
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
						\tag #'Segment16PercussionDrumVoice4
						{
							{
								r4
							}
						}
						\tag #'Segment16PercussionDrumVoice5
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment16PercussionDrumVoice6
						{
							{
								R1 * 1/4
								\stopStaff
								\startStaff
							}
						}
						\tag #'Segment16PercussionDrumVoice7
						{
							{
								r16
							}
						}
					}
					{
						\tag #'Segment16PercussionDrumVoice8
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
						\tag #'Segment16PercussionDrumVoice9
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
						\tag #'Segment16PercussionDrumVoice10
						{
							{
								\stopStaff
								\once \override Staff.StaffSymbol.line-count = 1
								\startStaff
								R1 * 1/4
							}
						}
						\tag #'Segment16PercussionDrumVoice11
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