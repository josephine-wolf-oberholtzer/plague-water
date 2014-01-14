% 2014-01-14 13:55

\version "2.19.0"
\language "english"

\include "/Users/josiah/Documents/Scores/plague_water/stylesheets/plague-water-header.ly"
\include "/Users/josiah/Documents/Scores/plague_water/stylesheets/plague-water-layout.ly"
\include "/Users/josiah/Documents/Scores/plague_water/stylesheets/plague-water-paper.ly"

#(set-default-paper-size "11x17" 'landscape)
#(set-global-staff-size 14)

\score {
	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket #'color = #red
	} <<
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\mark \default
				\tempo 8=72
				\time 5/16
				s1 * 5/16
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				s1 * 5/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 6/8
				s1 * 3/4
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				s1 * 5/16
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				\time 5/8
				s1 * 5/8
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
							r16
						}
					}
					{
						\times 8/9 {
							\override Stem.stemlet-length = 0.75
							r32 [
							c'16 ~
							c'16. ~
							c'16
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 10/11 {
							\override Stem.stemlet-length = 0.75
							r16 [
							c'32 ] ~
							c'4
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
							c'8. [ ~
							c'16.
							r32 ]
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
							r32 [
							c'32 ~
							c'8 ~
							c'8
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							c'16. ~
							c'32
							r32
							r16 ]
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
						\times 5/6 {
							\override Stem.stemlet-length = 0.75
							r16. [
							c'32 ~
							c'8 ~
							c'16.
							r32 ]
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
						{
							\override Stem.stemlet-length = 0.75
							c'16 [ ~
							c'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
							r4
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 14/15 {
							\override Stem.stemlet-length = 0.75
							r16 [
							c'16. ~
							c'16. ~
							c'16 ~
							c'8
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4
						}
						{
							R1 * 5/16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							r32 [
							c'16 ~
							c'16 ~
							c'32
							r32 ]
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
							r32 [
							c'8..
						}
						{
							c'8
							r16 ]
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
							c'4 ~
							c'16 [
						}
						\times 8/9 {
							c'8. ~
							c'16. ]
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
							R1 * 5/16
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							r16 [
							c'8 ~
							c'8
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 12/13 {
							c'8.. ~
							c'16 ~
							c'16 ~
							c'32
							r32 ]
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
							r32 [
							c'32 ] ~
							c'4
						}
						{
							c'8. [ ~
							c'16
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
					}
					{
						\times 8/9 {
							\override Stem.stemlet-length = 0.75
							c'8. [ ~
							c'16.
						}
						{
							c'8. ~
							c'8 ~
							c'32
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r4
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 10/11 {
							\override Stem.stemlet-length = 0.75
							r32 [
							c'16 ] ~
							c'4
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
							r16 [
							c'16 ] ~
							c'4
						}
						{
							c'4 ~
							c'16. [
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							R1 * 5/16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							r32 [
							c'32 ~
							c'16.
							r32 ]
							\revert Stem.stemlet-length
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
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							c'8. [ ~
							c'8 ~
							c'16.
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							r16 [
							c'16 ~
							c'16 ]
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
						R1 * 5/16
					}
					{
						R1 * 5/8
					}
					{
						R1 * 7/16
					}
					{
						R1 * 5/16
					}
					{
						R1 * 5/16
					}
					{
						R1 * 7/16
					}
					{
						R1 * 3/4
					}
					{
						R1 * 3/4
					}
					{
						R1 * 5/16
					}
					{
						R1 * 5/16
					}
					{
						R1 * 1/2
					}
					{
						R1 * 5/8
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
							\override Stem.stemlet-length = 0.75
							r16 [
							c'8 ~
							c'8
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 12/13 {
							c'8.. ~
							c'16 ~
							c'16 ~
							c'16
						}
						\times 8/9 {
							c'8. ~
							c'16.
						}
						{
							c'8. ~
							c'8
							r16 ]
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
							r32 [
							c'32 ~
							c'8 ~
							c'32
							r32 ]
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
						\times 5/6 {
							\override Stem.stemlet-length = 0.75
							c'4.
						}
						{
							c'4..
						}
						{
							c'8. [
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 14/15 {
							c'16. ~
							c'16 ~
							c'16. ~
							c'16 ~
							c'8
							r32 ]
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
						{
							\override Stem.stemlet-length = 0.75
							r16
							c'4 ~
							c'8 [
						}
						{
							c'8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
					}
					{
						\times 8/9 {
							\override Stem.stemlet-length = 0.75
							r16 [
							c'32 ~
							c'16. ~
							c'16
							r32 ]
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
						\times 10/11 {
							\override Stem.stemlet-length = 0.75
							r32 [
							c'16 ] ~
							c'4
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							c'8.. [
						}
						{
							c'16 ~
							c'8 ~
							c'32
							r16. ]
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
							c'16 [ ~
							c'8.
						}
						{
							c'16 ~
							c'16.
							r32 ]
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
							r32 [
							c'32 ~
							c'8 ]
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
							r16
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							r16. [
							c'16. ~
							c'16
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							r32 [
							c'16. ~
							c'8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							R1 * 7/16
						}
					}
					{
						\times 8/9 {
							\override Stem.stemlet-length = 0.75
							c'8. [ ~
							c'16
							r32 ]
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
						\times 8/9 {
							\override Stem.stemlet-length = 0.75
							r32 [
							c'16 ~
							c'16. ~
							c'16
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							R1 * 7/16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							r32 [
							c'16. ~
							c'16.
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r2
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							c'8.
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							r16 [
							c'8 ~
							c'8 ~
							c'16.
							r32 ]
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
							r32 [
							c'32 ~
							c'8
						}
						{
							c'8.
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							r16. [
							c'16 ~
							c'32
							r32 ]
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
						\times 14/15 {
							\override Stem.stemlet-length = 0.75
							c'16. [ ~
							c'16 ~
							c'16. ~
							c'16 ~
							c'16. ~
							c'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
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
						R1 * 5/16
					}
					{
						R1 * 5/8
					}
					{
						R1 * 7/16
					}
					{
						R1 * 5/16
					}
					{
						R1 * 5/16
					}
					{
						R1 * 7/16
					}
					{
						R1 * 3/4
					}
					{
						R1 * 3/4
					}
					{
						R1 * 5/16
					}
					{
						R1 * 5/16
					}
					{
						R1 * 1/2
					}
					{
						R1 * 5/8
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
							R1 * 5/16
						}
					}
					{
						\times 8/9 {
							\override Stem.stemlet-length = 0.75
							r16 [
							c'32 ~
							c'16. ~
							c'32
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						\times 8/9 {
							\override Stem.stemlet-length = 0.75
							c'8. [
							r16. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							R1 * 7/16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							r16. [
							c'16. ~
							c'32
							r32 ]
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
					{
						{
							\override Stem.stemlet-length = 0.75
							r32 [
							c'32 ~
							c'8 ~
							c'16 ]
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/8 {
							\override Stem.stemlet-length = 0.75
							r16 [
							c'8. ~
							c'8..
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							c'8 [
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 12/13 {
							\override Stem.stemlet-length = 0.75
							r32 [
							c'16 ] ~
							c'4 ~
							c'32 [
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							R1 * 5/16
						}
						{
							R1 * 5/16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 12/13 {
							\override Stem.stemlet-length = 0.75
							r16 [
							c'32 ] ~
							c'4 ~
							c'16
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
							c'8 [ ~
							c'32
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							r32 [
							c'16.
							r16 ]
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
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion LH Voice" {
					{
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							r16 [
							c'16 ~
							c'16.
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							R1 * 5/8
						}
						{
							r8.
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							c'16 [ ~
							c'8
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							c'16. ~
							c'16 ~
							c'32
							r32 ]
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
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\override Stem.stemlet-length = 0.75
							r32 [
							c'16. ~
							c'16.
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							r16 [
							c'16 ] ~
							c'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 12/13 {
							\override Stem.stemlet-length = 0.75
							r16 [
							c'32 ] ~
							c'4 ~
							c'32 [
							r32 ]
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
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							c'16. [ ~
							c'16
							r16 ]
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
					{
						{
							\override Stem.stemlet-length = 0.75
							r16. [
							c'16. ~
							c'16.
							r32 ]
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
							r32 [
							c'16. ~
							c'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							c'8. [ ~
							c'8 ~
							c'16
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							r32 [
							c'32 ~
							c'16.
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
								_ \markup {
									\italic
										\right-column
											{
												" "
												" "
												" "
												"Jamaica Plain"
												"December 2013 - February 2014"
											}
									}
							\bar "|."
						}
					}
				}
			}
		>>
	>>
}