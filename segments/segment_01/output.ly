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
			{
				\time 7/16
				s1 * 7/16
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
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "percussion"
				\context Voice = "Saxophone Voice" {
					{
						{
							r8
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #2
							c'16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							c'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
							r8.
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							c'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
						{
							r8.
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #2
							c'16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							c'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r8.
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
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
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
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
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #1
							c'8 [
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r8.
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #2
							c'16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							c'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							R1 * 1/2
						}
						{
							r8.
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
						}
						{
							r8
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #1
							c'8 [
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
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
					}
				}
			}
			\context Dynamics = "Guitar Pedals" {
				{
					{
						R1 * 3/4
					}
					{
						R1 * 5/16
					}
					{
						R1 * 1/2
					}
					{
						R1 * 7/16
					}
					{
						R1 * 1/2
					}
					{
						R1 * 5/16
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #2
							c'16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							c'16 ]
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
							\set stemRightBeamCount = #2
							c'16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
						}
						{
							r16
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r16
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r8.
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #2
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
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
							r8
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #2
							c'16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							c'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							R1 * 5/16
						}
						{
							r16
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #1
							c'8 [
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							c'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
						{
							r8.
							r16
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r4
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #2
							c'16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							c'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							R1 * 5/16
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
						R1 * 5/16
					}
					{
						R1 * 1/2
					}
					{
						R1 * 7/16
					}
					{
						R1 * 1/2
					}
					{
						R1 * 5/16
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
							r16
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #2
							c'16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							c'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #2
							c'16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8.
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							c'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							R1 * 5/16
						}
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion LH Voice" {
					{
						{
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 5/6 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #1
							c'8 [
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							c'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #3
							c'32 [
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32
						}
						{
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #1
							c'16
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #1
							c'32
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #1
							c'8
						}
						\times 2/3 {
							\set stemLeftBeamCount = #1
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							\set stemRightBeamCount = #3
							c'32
							\set stemLeftBeamCount = #3
							c'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
						{
							R1 * 7/16
						}
					}
					{
						\times 2/3 {
							\override Stem.stemlet-length = 0.75
							\set stemRightBeamCount = #2
							c'16 [
							\set stemLeftBeamCount = #2
							\set stemRightBeamCount = #2
							c'16
							\set stemLeftBeamCount = #2
							c'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
							r4
						}
						{
							R1 * 5/16
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}