% 2013-12-21 10:58

\version "2.17.28"
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
				\time 6/8
				s1 * 3/4
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 2/4
				s1 * 1/2
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
				\time 2/4
				s1 * 1/2
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 2/4
				s1 * 1/2
			}
			{
				\time 3/8
				s1 * 3/8
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
						r4
					}
					{
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #1
						c'8 \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8.
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
					{
						r16
					}
					{
						c'4. \startGroup \stopGroup
					}
					{
						r4.
					}
					{
						c'4 \startGroup ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #1
						c'16 [
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
					{
						r16
					}
					{
						r8.
					}
					{
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #1
						c'16 \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
					{
						r16
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 ]
					}
					{
						c'4. \stopGroup
					}
					{
						r16
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \startGroup [ ] ~
						c'4 ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #1
						c'16 [
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. ]
					}
					{
						c'4.. \stopGroup
					}
					{
						r16
					}
					{
						r8.
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ]
					}
					{
						c'4
					}
					{
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #1
						c'8. [
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. ]
					}
					{
						c'4 ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						c'16 \stopGroup [ ]
					}
					{
						r4..
					}
					{
						c'4 \startGroup
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup [ ]
					}
					{
						r16
					}
					{
						r4. ~
					}
					{
						r8. ~
						r8
					}
				}
			}
		>>
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "percussion"
				\context Voice = "Guitar Voice" {
					{
						r4.
					}
					{
						c'4. \startGroup
					}
					{
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #1
						c'8. [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \stopGroup ]
					}
					{
						r8
					}
					{
						c'4 \startGroup ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						c'16 \stopGroup [ ]
					}
					{
						r16
					}
					{
						r4 ~
						r16
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \stopGroup ]
					}
					{
						r8
					}
					{
						r8
					}
					{
						c'4. \startGroup
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup [ ]
					}
					{
						r8
					}
					{
						r8. ~
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \stopGroup ]
					}
					{
						r8
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
					{
						r16
					}
					{
						c'4. \startGroup \stopGroup
					}
					{
						r8
					}
					{
						r8
					}
					{
						c'4 \startGroup ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup [ ]
					}
					{
						r16
					}
					{
						r4.
					}
					{
						c'4 \startGroup
					}
					{
						c'4 ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #1
						c'16 [
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. ]
					}
					{
						c'4 ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #1
						c'16 [
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
					{
						r4.
					}
					{
						r8.
						r8
					}
				}
			}
			\context Dynamics = "Guitar Pedals" {
			}
		>>
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" {
				\clef "percussion"
				\context Voice = "Piano Right-hand" {
					{
						r4.
					}
					{
						c'4 \startGroup ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						c'16 \stopGroup [ ]
					}
					{
						r16
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						c'16 \startGroup [ ] ~
						c'4 \stopGroup
					}
					{
						r8
					}
					{
						c'4 \startGroup \stopGroup
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \stopGroup ]
					}
					{
						r4.
					}
					{
						c'4. \startGroup \stopGroup
					}
					{
						r8
					}
					{
						r16
					}
					{
						c'4 \startGroup
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup [ ]
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \stopGroup ]
					}
					{
						r8
					}
					{
						r2
					}
					{
						c'4 \startGroup
					}
					{
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #1
						c'8. [
					}
					{
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #1
						c'16 ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \stopGroup ]
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ]
					}
					{
						c'4.. \stopGroup
					}
					{
						r4.
					}
					{
						c'4.. \startGroup \stopGroup
					}
					{
						r16
						r4
					}
					{
						c'4 \startGroup
					}
					{
						c'4
					}
					{
						c'4. \stopGroup
					}
					{
						r8.
						r8
					}
				}
			}
			\context Dynamics = "Piano Dynamics" {
			}
			\context PianoLowerStaff = "Piano Lower Staff" {
				\clef "percussion"
				\context Voice = "Piano Left-hand" {
					{
						r4
						r16
					}
					{
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						c'16 \startGroup [ ] ~
						c'4 \stopGroup
					}
					{
						r8
					}
					{
						r4..
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup \stopGroup [ ]
					}
					{
						r8.
					}
					{
						r4
					}
					{
						c'4 \startGroup ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #1
						c'16 [
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
					{
						r16
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ]
					}
					{
						c'4 \stopGroup
					}
					{
						r16
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						c'16 \startGroup [ ] ~
						c'4
					}
					{
						c'4 \stopGroup
					}
					{
						r2
					}
					{
						r8
					}
					{
						c'4. \startGroup
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup [ ]
					}
					{
						r8.
					}
					{
						c'4 \startGroup \stopGroup
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup \stopGroup [ ]
					}
					{
						r16
					}
					{
						c'4 \startGroup ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #1
						c'16 [
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. ]
					}
					{
						c'4
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup [ ]
					}
					{
						r16
						r4
					}
					{
						\set stemLeftBeamCount = #0
						\set stemRightBeamCount = #1
						c'8. \startGroup [
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
					{
						r8.
						r8
					}
				}
			}
			\context Dynamics = "Piano Pedals" {
			}
		>>
		\context PercussionStaffGroup = "Percussion Staff Group" <<
			\context PercussionShakerStaff = "Percussion Shaker Staff" {
				\clef "percussion"
				\context Voice = "Percussion Voice One" {
					{
						r8.
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ] ~
						c'4 \stopGroup
					}
					{
						r8
					}
					{
						r4..
					}
					{
						c'4 \startGroup \stopGroup
					}
					{
						r8
					}
					{
						r8
					}
					{
						c'4. \startGroup
					}
					{
						c'4 \stopGroup
					}
					{
						r4
						r16
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup \stopGroup [ ]
					}
					{
						r8. ~
						r8
					}
					{
						r8.
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ]
					}
					{
						c'4 \stopGroup
					}
					{
						r16
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
					{
						r16 ~
						r4
					}
					{
						r16
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ]
					}
					{
						c'4 \stopGroup
					}
					{
						r4..
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ]
					}
					{
						c'4 \stopGroup
					}
					{
						r8
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \startGroup [ ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \stopGroup ]
					}
					{
						r8
					}
					{
						c'4 \startGroup ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						c'16 \stopGroup [ ]
					}
					{
						r8.
					}
					{
						r4.
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup \stopGroup [ ]
					}
					{
						r8
					}
				}
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion Voice Two" {
					{
						r4
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \startGroup [ ] ~
						c'4 ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						c'16 \stopGroup [ ]
					}
					{
						r16
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [ ]
					}
					{
						c'4
					}
					{
						c'4.
					}
					{
						c'4.. \stopGroup
					}
					{
						r16
						r4
					}
					{
						c'4 \startGroup
					}
					{
						c'4
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup [ ]
					}
					{
						r8
					}
					{
						c'4 \startGroup \stopGroup
					}
					{
						r16
					}
					{
						r8.
					}
					{
						c'4 \startGroup \stopGroup
					}
					{
						r16
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
					{
						r16
						r4
					}
					{
						c'4. \startGroup \stopGroup
					}
					{
						r8
					}
					{
						r8
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [
					}
					{
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #1
						c'16 ~
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8 \stopGroup ]
					}
					{
						r8
					}
					{
						c'4 \startGroup ~
						\set stemLeftBeamCount = #2
						\set stemRightBeamCount = #2
						c'16 \stopGroup [ ]
					}
					{
						r16
					}
					{
						r4
					}
					{
						c'4.. \startGroup \stopGroup
					}
					{
						r16
					}
					{
						c'4 \startGroup
					}
					{
						c'4 \stopGroup
					}
					{
						r8.
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \startGroup [
					}
					{
						\set stemLeftBeamCount = #1
						\set stemRightBeamCount = #1
						c'8. \stopGroup ]
					}
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
		>>
	>>
}