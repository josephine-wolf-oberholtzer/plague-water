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
				\tempo 4=72
				\time 7/16
				s1 * 7/16
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				s1 * 5/8
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				s1 * 1/2
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "percussion"
				\context Voice = "Saxophone Voice" {
					{
						{
							r4..
						}
						{
							r2
							r8
						}
						{
							r2
							r8
						}
						{
							r2
						}
						{
							r2
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
							r4..
						}
						{
							r2
							r8
						}
						{
							r2
							r8
						}
						{
							r2
						}
						{
							r2
						}
					}
				}
			}
			\context Dynamics = "Guitar Pedals" {
				{
					{
						r4..
					}
					{
						r2
						r8
					}
					{
						r2
						r8
					}
					{
						r2
					}
					{
						r2
					}
				}
			}
		>>
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\clef "percussion"
				\context Voice = "Piano RH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #3
							c'32 -\accent [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							r4.
						}
						{
							\set stemLeftBeamCount = #-1
							\set stemRightBeamCount = #3
							c'32 -\accent [
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							r8
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							r32
						}
						{
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							r4
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							r16. [
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							r16.
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							r4.
						}
						{
							\set stemLeftBeamCount = #-1
							\set stemRightBeamCount = #3
							c'32 -\accent [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							c'32 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							r16.
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32 -\staccato
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							r8..
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32 -\staccato
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #0
							r8.. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
				}
			}
			\context Dynamics = "Piano Dynamics" {
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\clef "percussion"
				\context Voice = "Piano LH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #3
							c'32 -\accent [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							r4
						}
						{
							\set stemLeftBeamCount = #-1
							\set stemRightBeamCount = #3
							c'32 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'32 -\staccato
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							r8
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							r4
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							r32
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
							c'32 -\accent [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							c'32 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							r16.
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							r4
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							r16 [
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'32 -\staccato
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							r8
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							r32
						}
						{
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							r4
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							r32 [
						}
						{
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32 -\staccato
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #0
							r8.. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
					{
						r4..
					}
					{
						r2
						r8
					}
					{
						r2
						r8
					}
					{
						r2
					}
					{
						r2
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
							r4..
						}
						{
							r2
							r8
						}
						{
							r2
							r8
						}
						{
							r2
						}
						{
							r2
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion LH Voice" {
					{
						{
							r4..
						}
						{
							r2
							r8
						}
						{
							r2
							r8
						}
						{
							r2
						}
						{
							r2
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}