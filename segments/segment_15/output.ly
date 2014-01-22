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
				\mark \markup { \override #'(box-padding . 0.5) \box 15 }
				\tempo 8=108
				\time 2/4
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
				\time 3/4
				s1 * 3/4
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 2/4
				s1 * 1/2
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
							R1 * 3/4
						}
						{
							R1 * 3/4
						}
						{
							R1 * 1/2
						}
						{
							R1 * 3/4
						}
						{
							R1 * 5/16
						}
						{
							R1 * 1/2
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
							R1 * 3/4
						}
						{
							R1 * 3/4
						}
						{
							R1 * 1/2
						}
						{
							R1 * 3/4
						}
						{
							R1 * 5/16
						}
						{
							R1 * 1/2
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
						R1 * 3/4
					}
					{
						R1 * 3/4
					}
					{
						R1 * 1/2
					}
					{
						R1 * 3/4
					}
					{
						R1 * 5/16
					}
					{
						R1 * 1/2
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
							r16
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #3
							r32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32 -\staccato
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							r16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
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
							r16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
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
						\times 3/4 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #1
							c'8 -\accent [
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #0
							c'8 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #3
							r32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato ~
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
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
							\set stemRightBeamCount = #3
							c'32 -\accent [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato ~
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32 -\staccato
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8 -\accent
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8 -\staccato
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8 -\staccato
						}
						\times 4/5 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato ~
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							c'32 -\staccato
						}
						{
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
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
							c'16 -\accent [
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8 -\staccato
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8 -\staccato
						}
						\times 4/5 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato ~
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
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
							\set stemRightBeamCount = #3
							c'32 -\accent [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							c'16 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							r16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							r16
						}
						\times 4/5 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #3
							c'32 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
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
							\set stemRightBeamCount = #3
							c'32 -\accent [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							c'16 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16 -\staccato
						}
						\times 4/5 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato ~
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							c'32 -\staccato
						}
						{
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
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
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = #0
							\set stemRightBeamCount = #2
							c'16 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							r16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
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
							c'16 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
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
							\set stemRightBeamCount = #2
							c'16 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato ~
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
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
							c'16 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
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
							r32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32 -\staccato
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							r16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
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
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
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
							c'16 -\accent [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16 -\staccato
						}
						\times 4/5 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
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
							\set stemRightBeamCount = #2
							c'16 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato ~
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16 -\staccato
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32 -\accent
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							r32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32 -\staccato
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r16
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
							c'32 -\staccato ~
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #0
							c'32 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							R1 * 5/16
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
							c'16 -\accent [
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8 -\staccato
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8 -\staccato
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/5 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							r16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\accent
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16 -\staccato ~
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #0
							c'16 -\staccato ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
				{
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
						R1 * 3/4
					}
					{
						R1 * 5/16
					}
					{
						R1 * 1/2
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
							R1 * 3/4
						}
						{
							R1 * 3/4
						}
						{
							R1 * 1/2
						}
						{
							R1 * 3/4
						}
						{
							R1 * 5/16
						}
						{
							R1 * 1/2
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
							R1 * 3/4
						}
						{
							R1 * 3/4
						}
						{
							R1 * 1/2
						}
						{
							R1 * 3/4
						}
						{
							R1 * 5/16
						}
						{
							R1 * 1/2
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}