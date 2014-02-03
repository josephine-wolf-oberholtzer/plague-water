\version "2.19.1"
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
				\mark \markup { \override #'(box-padding . 0.5) \box 4 }
				\tempo 4=96
				\time 11/16
				s1 * 11/16
			}
			{
				s1 * 11/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 11/16
				s1 * 11/16
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 5/16
				s1 * 5/16
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
				\time 5/8
				s1 * 5/8
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 11/16
				s1 * 11/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 11/16
				s1 * 11/16
			}
			{
				\time 7/16
				s1 * 7/16
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 3/16
				s1 * 3/16
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "percussion"
				\context Voice = "Saxophone Voice" {
					{
						{
							r8.
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							b'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
						}
						{
							r8.
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							cs'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							c'32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef'8 ]
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
						\times 8/9 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							ef'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r4..
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							cs'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							c'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							ef'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r2
						}
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							c'16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							f'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b'32 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8.
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							c'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							ef'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16. ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							b'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							c'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							ef'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
							r16
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							bf'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							b'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							d'32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4.
							r4
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							bf'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							d'32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af'8
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf'8 ~
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							bf'32 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
							\stopStaff
							\startStaff
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/8
							\stopStaff
							\startStaff
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b'16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d'32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af'8 ]
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							af'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							bf'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
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
							r16
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							af'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							bf'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4..
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							e'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							cs'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 11/16
							\stopStaff
							\startStaff
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							cs'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4
						}
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e'32 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/8
							\stopStaff
							\startStaff
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
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
						\times 8/9 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							c'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							ef'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4.
						}
						{
							r4..
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							d'32 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8.. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							c'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							ef'32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r2
						}
					}
					{
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							f'32 [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef'8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							cs'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							f'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
							r2
						}
						{
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 10/11 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							d'32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ] ~
							f'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							af'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							r16
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							af'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							bf'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16. ]
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							d'32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16. ]
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
						\times 4/5 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							af'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							bf'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16. ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							bf'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							r32
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							r8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r4.
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							d'32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							bf'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							bf'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							d'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							af'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							d'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							d'32 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 11/16
							\stopStaff
							\startStaff
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
						{
							r8.
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							e'32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4
						}
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							e'32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							r32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r4.
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 10/11 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							cs'32 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ] ~
							cs'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/8
							\stopStaff
							\startStaff
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
				}
			}
			\context Dynamics = "Guitar Pedals" {
			}
		>>
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" <<
				\clef "treble"
				\context Voice = "Piano RH Voice" {
					{
						{
							r4..
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							c'16. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r8
						}
						{
							r8.
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							d''8 [ \glissando ~
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							d''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a'32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							f'8.. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							ef''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r16
						}
						{
							r4..
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							b'16. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							g'8 [ \glissando ~
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							g'32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r16
							r4
						}
						{
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							a'8.. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f'32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r8.
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							ef'16. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							c''8 [ \glissando ~
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							c''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g'32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							d'8.. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							f''16. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							ef'32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							b8 [ \glissando ~
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							g'8.. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							a16. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							ef''8 [ \glissando ~
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							ef''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b'32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r16
							r4
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							c'8 [ \glissando
								- \markup {
									\center-align
										\natural
									}
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							g''16. \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r16
						}
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							a'16. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							f'32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r4
						}
						{
							r8.
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							ef'8 [ \glissando ~
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							ef'32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							b''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r8.
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							c''8.. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							g'32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r16
						}
						{
							r8.
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							d'16. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							a''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r16
						}
						{
							r4.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							f''8 [ \glissando ~
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							f''32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							ef'32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							b8 [ \glissando ~
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b32 \glissando
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\override Accidental #'stencil = ##f
							\override Glissando #'bound-details #'right #'end-on-accidental = ##f
							\override NoteHead #'style = #'cross
							\override Tie #'stencil = ##f
							g'16. [ \glissando
								- \markup {
									\center-align
										\natural
									}
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d''32 ]
							\revert Stem.stemlet-length
							\revert Accidental #'stencil
							\revert Glissando #'bound-details
							\revert NoteHead #'style
							\revert Tie #'stencil
						}
					}
					{
						{
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
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
							r4..
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r4..
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							f'4
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 [ ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4..
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b'16 [ ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b'8 ]
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
							b'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
						{
							r4.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							cs'4
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
							cs'8
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
							d'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
						{
							r4
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							b'8.
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
							\stopStaff
							\startStaff
						}
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b'16 [ ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 5/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
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
							af'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							cs'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 7/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							cs'8.
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
							e'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							cs'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4.
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							e'8.
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
							e'8
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r8
						}
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
				}
			>>
			\context Dynamics = "Piano Pedals" {
			}
		>>
		\context PercussionStaffGroup = "Percussion Staff Group" <<
			\context PercussionShakerStaff = "Percussion Shaker Staff" {
				\clef "percussion"
				\context Voice = "Percussion RH Voice" {
					{
						{
							r8.
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							ef'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f'16 [ ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							d'4
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
							cs'8
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
							d'8
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
							c'8
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
							ef'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef'16
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							d'8
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
							d'8
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
							af'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							bf'8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							bf'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf'16 ]
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
							b'8.
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 [ ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8 ]
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
							af'8
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
							d'8
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
							bf'4
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
						{
							\override Stem.stemlet-length = 0.75
							bf'4
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
							bf'8
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
							bf'8.
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							cs'8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 [ ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8 ]
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
							cs'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							cs'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							e'8.
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8. [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8 ]
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
							e'8
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
							e'8
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
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion LH Voice" {
					{
						{
							r8.
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							f'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							d'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b'16 [ ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							f'4
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
							c'8
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
							f'8
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
							ef'8
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
							d'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							d'16
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							f'8
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
							af'8
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
							bf'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/16
							\stopStaff
							\startStaff
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							b'8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							b'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16 ]
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
							d'8.
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							af'16 [ ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							af'8 ]
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
							bf'8
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
							af'8
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
							b'4
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
						{
							\override Stem.stemlet-length = 0.75
							b'4
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
							b'8
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
							b'8.
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							e'8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 [ ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
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
							e'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							e'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
						{
							\override Stem.stemlet-length = 0.75
							cs'8.
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8. [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
						}
						{
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
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
							cs'8
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
							cs'8
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}