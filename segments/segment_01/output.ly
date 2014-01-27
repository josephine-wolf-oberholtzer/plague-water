\version "2.19.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/plague-water-header.ly"
\include "../../stylesheets/plague-water-layout.ly"
\include "../../stylesheets/plague-water-paper.ly"

#(set-default-paper-size "11x17" 'landscape)
#(set-global-staff-size 14)

\score {
	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket #'color = #red
	} <<
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\mark \markup { \override #'(box-padding . 0.5) \box 1 }
				\tempo 4=64
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
				\time 4/8
				s1 * 1/2
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				\time 2/8
				s1 * 1/4
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "percussion"
				\context Voice = "Saxophone Voice" {
					{
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
							R1 * 1/2
						}
						{
							R1 * 1/2
						}
						{
							R1 * 1/4
						}
					}
				}
			}
		>>
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "percussion"
				\context Voice = "Guitar Voice" {
					{
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
							R1 * 1/2
						}
						{
							R1 * 1/2
						}
						{
							R1 * 1/4
						}
					}
				}
			}
			\context Dynamics = "Guitar Pedals" {
				{
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
						R1 * 1/2
					}
					{
						R1 * 1/2
					}
					{
						R1 * 1/4
					}
				}
			}
		>>
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" <<
				\clef "treble"
				\context Voice = "Piano RH Voice" {
					{
						{
							r8
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							r16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16 -\accent
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							<
								\tweak #'color #red
								c''
								d''
							>8 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							<
								\tweak #'color #red
								c''
								f''
							>16 -\staccato
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c''32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							<c''' d'''>32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c''32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #3
							<
								b
								\tweak #'color #red
								c'
								ef'
							>32 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c''16 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							<c'' f''>32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							R1 * 1/4
						}
						{
							r16
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #3
							c''32 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c''16 -\staccato
							\arpeggioArrowDown
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							<g' b' d'' f''>16 -\staccato \arpeggio
								^ \markup {
									\center-align
										\natural
									}
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							r16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							<c'' d''>16 -\accent
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'''8 -\staccato
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							<a' c'' e''>16 -\staccato
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'''32 -\accent
							\arpeggioArrowDown
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							<g'' b'' d''' f'''>16 -\staccato \arpeggio
								^ \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							<b'' c''' ef'''>32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\arpeggioArrowDown
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #3
							<g' b' d'' f''>32 -\accent \arpeggio [
								^ \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							<b'' c''' ef'''>32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							<c''' d'''>32 -\staccato
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'''16 -\accent
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							<a'' c''' e'''>16 -\staccato ]
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							c''16 -\accent [
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							<a'' c''' e'''>16 -\staccato
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							r16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'''16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							r16 ]
							\revert Stem.stemlet-length
						}
					}
				}
			>>
			\context Dynamics = "Piano Dynamics" {
			}
			\context PianoLowerStaff = "Piano Lower Staff" <<
				\clef "bass"
				\context Voice = "Piano LH Voice" {
					{
						{
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							<
								b
								\tweak #'color #red
								c'
								ef'
							>16 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							r16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c''16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							<b c' ef'>16 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							<c' f'>16 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c''16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							<
								\tweak #'color #red
								c'
								d'
							>16 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							r16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16 -\accent
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							<b c' ef'>8 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							<c' d'>16 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							<c f>16 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16 -\staccato
						}
						\times 4/5 {
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							<a c' e'>32 -\accent
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							<b c' ef'>16 -\staccato
							\arpeggioArrowDown
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							<g b d' f'>16 -\staccato \arpeggio
								^ \markup {
									\center-align
										\natural
									}
						}
						\times 4/5 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							<b c' ef'>32 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							<c' d'>16 -\staccato
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							<a c' e'>32 -\staccato ]
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							r16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							<c d>16 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							r16
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							<a c' e'>16 -\staccato ]
								^ \markup {
									\center-align
										\concat
											{
												\natural
												\flat
											}
									}
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							r16 [
							\arpeggioArrowDown
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							<g b d' f'>16 -\accent \arpeggio
								^ \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							<b c' ef'>16 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							<c d>16 -\accent [
							\arpeggioArrowDown
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							<g b d' f'>16 -\staccato \arpeggio
								^ \markup {
									\center-align
										\natural
									}
						}
						\times 4/5 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							<b, c ef>32 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							<c' d'>16 -\staccato
							\arpeggioArrowDown
							\once \override Accidental.stencil = ##f
							\once \override Arpeggio.X-offset = #-2
							\once \override NoteHead.stencil = #ly:text-interface::print
							\once \override NoteHead.text = \markup {
								\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
							}
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							<g b d' f'>16 -\staccato \arpeggio ]
								^ \markup {
									\center-align
										\natural
									}
							\revert Stem.stemlet-length
						}
					}
				}
			>>
			\context Dynamics = "Piano Pedals" {
				{
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
						R1 * 1/2
					}
					{
						R1 * 1/2
					}
					{
						R1 * 1/4
					}
				}
			}
		>>
		\context PercussionStaffGroup = "Percussion Staff Group" <<
			\context PercussionShakerStaff = "Percussion Shaker Staff" {
				\clef "percussion"
				\context Voice = "Percussion RH Voice" {
					{
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
							R1 * 1/2
						}
						{
							R1 * 1/2
						}
						{
							R1 * 1/4
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion LH Voice" {
					{
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
							R1 * 1/2
						}
						{
							R1 * 1/2
						}
						{
							R1 * 1/4
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}