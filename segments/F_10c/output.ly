\version "2.19.1"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/plague-water-header.ly"
\include "../../stylesheets/plague-water-layout.ly"
\include "../../stylesheets/plague-water-paper.ly"

\score {
	\context Score = "Plague Water Score" \with {
		\override HorizontalBracket #'color = #red
	} <<
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\mark \markup { \override #'(box-padding . 0.5) \box 10C }
				\tempo 8=48
				\time 3/4
				s1 * 3/4
			}
			{
				\time 5/16
				s1 * 5/16
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 7/16
				s1 * 7/16
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							c'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f8 ]
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d'8. ]
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
							b8
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							bf8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8.
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
							e16 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e16 ]
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
		>>
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble_8"
				\context Voice = "Guitar Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							ef'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d''8.
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							af'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							d''8. ]
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
							bf16 ~
							bf4
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							e'8. ~
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
				}
			}
			\context Dynamics = "Guitar Pedals" {
			}
		>>
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" <<
				\context Voice = "Piano RH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							\clef "treble"
							d''''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c''''8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c''''8 ]
							\ottava #0
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
							r16
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							\ottava #1
							c''''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c''''16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d''''16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf'''16 ]
							\ottava #0
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
							\set stemRightBeamCount = 1
							\ottava #1
							bf'''8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b''''16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b''''8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'''8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b'''8 ]
							\ottava #0
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							cs''''8 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs''''8 ]
							\ottava #0
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
				}
			>>
			\context Dynamics = "Piano Dynamics" {
				{
					{
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 \> \f
					}
					{
						c'4
					}
					{
						\set stemLeftBeamCount = -1
						\set stemRightBeamCount = 2
						c'16. [
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
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
						\override Hairpin #'stencil = #constante-hairpin
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 1
						c'8 [ \< \ppp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 0
						c'16 ]
					}
					{
						c'4 ~
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16 [
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'16
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8.
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16
					}
					{
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 0
						c'16 ]
					}
					{
						c'4
					}
					{
						\set stemLeftBeamCount = -1
						\set stemRightBeamCount = 2
						c'16. [
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Hairpin #'stencil
						\revert Stem.stemlet-length
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" <<
				\context Voice = "Piano LH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							\clef "treble"
							f'''8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							ef'''8 ]
							\ottava #0
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
							b''8
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
							b''4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b''16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							\ottava #1
							d'''8 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d'''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af'''16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'''16 ]
							\ottava #0
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
							\ottava #1
							cs'''16 ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'''16
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'''8 ]
							\ottava #0
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
							\ottava #1
							e'''8
							\ottava #0
							\revert Stem.stemlet-length
						}
					}
				}
			>>
			\context Dynamics = "Piano Pedals" {
				{
					{
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/4 \sustainOff \sustainOn
					}
					{
						s1 * 1/8
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/16
					}
					{
						s1 * 5/16
					}
					{
						s1 * 1/8
					}
					{
						s1 * 1/16
					}
					{
						s1 * 1/8
					}
					{
						s1 * 1/16
					}
					{
						s1 * 3/16
					}
					{
						s1 * 1/8
					}
					{
						s1 * 1/16
					}
					{
						s1 * 1/16
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/4
					}
					{
						s1 * 1/8
						\sustainOff
						\LV
						\revert Stem.stemlet-length
					}
				}
			}
		>>
		\context PercussionStaffGroup = "Percussion Staff Group" <<
			\context PercussionStaff = "Percussion Staff" {
				\clef "percussion"
				\context Voice = "Percussion Voice" {
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
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							cs'8 ~ [
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8 ]
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
							af'8.
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							af'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8 ~
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
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							e'8. ~ [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ]
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