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
				\mark \markup { \override #'(box-padding . 0.5) \box 8 }
				\tempo 4=72
				\time 3/4
				s1 * 3/4
			}
			{
				\time 9/16
				s1 * 9/16
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 6/16
				s1 * 3/8
			}
			{
				\time 6/8
				s1 * 3/4
			}
			{
				\time 6/16
				s1 * 3/8
			}
			{
				\time 3/8
				s1 * 3/8
			}
		}
		\context SaxophoneStaffGroup = "Saxophone Staff Group" <<
			\context SaxophoneStaff = "Saxophone Staff" {
				\clef "bass"
				\context Voice = "Saxophone Voice" {
					{
						{
							r8
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 12/13 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16. [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							ef32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d'32 ~
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							f32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							c'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b,16 ] )
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							ef32 [ (
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							f32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16.
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							f32 ~
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							f32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							c32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							ef32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							c'32 ] )
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
						}
						{
							r4
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 3/4 {
							\pitchedTrill
							\override Stem.stemlet-length = 0.75
							bf,4 \startTrillSpan df
							<> \stopTrillSpan
							\pitchedTrill
							bf4 \startTrillSpan ef'
							<> \stopTrillSpan
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
							\set stemRightBeamCount = 2
							r16 [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							bf32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							af,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b,32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							b,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							af,32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							bf,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d32 ~
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							af,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32 ~
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							e32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							e32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16.
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ] )
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
							r32 [ (
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e,32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							e,32
						}
						\times 8/9 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e,32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e,16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							cs32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							cs32 ] )
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
		>>
		\context GuitarStaffGroup = "Guitar Staff Group" <<
			\context GuitarStaff = "Guitar Staff" {
				\clef "treble_8"
				\context Voice = "Guitar Voice" {
					{
						{
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							b,32 [ (
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							f32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b,16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							ef32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f16 ] )
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
						\times 14/15 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							cs32 [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b,32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							ef32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							ef32 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs'16 ] )
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16. [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							af32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							bf,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							af,16
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b,32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							af16.
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d32 ~
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							af,32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							bf,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							af16
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 12/13 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							bf32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							af32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b32 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							bf32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							bf16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							r32 ] )
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
						\times 3/4 {
							\pitchedTrill
							\override Stem.stemlet-length = 0.75
							cs4 \startTrillSpan fs
							<> \stopTrillSpan
							\pitchedTrill
							e4 \startTrillSpan f
							<> \stopTrillSpan
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							cs32
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							e32 ] )
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
			\context Dynamics = "Guitar Pedals" {
			}
		>>
		\context PianoStaffGroup = "Piano Staff Group" <<
			\context PianoUpperStaff = "Piano Upper Staff" <<
				\clef "treble"
				\context Voice = "Piano RH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							c''8
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
							b'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							b'16
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
							c''16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							c''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							f''8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = -1
							f''16 ]
						}
						{
							d''4
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
							b'8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							d''16 ] ~
							d''4
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
							\set stemRightBeamCount = 1
							bf'8
						}
						{
							d''4
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
							cs''16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e''16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e''16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8. ]
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
							\set stemRightBeamCount = 2
							cs''16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e''8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
				}
			>>
			\context Dynamics = "Piano Dynamics" {
				{
					{
						\override Stem.stemlet-length = 0.75
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 3
						r32 [
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 2
						c'16 \> \f
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
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
						\set stemRightBeamCount = 3
						r32
						\override Hairpin #'stencil = #constante-hairpin
						c'4 \< \ppp
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 \!
						\revert Stem.stemlet-length
						\revert Hairpin #'stencil
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
						\set stemRightBeamCount = 3
						r32 [
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16. \< \sfp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8.
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8..
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
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
						\set stemRightBeamCount = 3
						r32 [
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8 \> \f ~
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = -1
						c'32 ]
					}
					{
						c'4 ~
						\set stemLeftBeamCount = 0
						\set stemRightBeamCount = 3
						c'32 [
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
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
						r32 [
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						\override Hairpin #'stencil = #constante-hairpin
						c'16. \< \ppp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8..
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \!
						\revert Stem.stemlet-length
						\revert Hairpin #'stencil
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
						r32 [
						\set stemLeftBeamCount = 2
						\set stemRightBeamCount = 1
						c'16. \< \sfp
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8 ~
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 3
						c'32
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \ff
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
						\set stemRightBeamCount = 3
						r32 [
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 1
						c'32 \> \f
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 2
						c'16.
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r4
					}
				}
			}
			\context PianoLowerStaff = "Piano Lower Staff" <<
				\clef "bass"
				\context Voice = "Piano LH Voice" {
					{
						{
							\override Stem.stemlet-length = 0.75
							ef,,8
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
							cs,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs,16
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
							ef,,16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							ef,,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b,,8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = -1
							b,,16 ]
						}
						{
							f,,4
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
							d,8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							af,16 ] ~
							af,4
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
							\set stemRightBeamCount = 1
							b,,8
						}
						{
							af,4
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
							e,,16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e,,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs,16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs,16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,8. ]
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
							\set stemRightBeamCount = 2
							e,,16 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,8 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r4
						}
					}
				}
			>>
			\context Dynamics = "Piano Pedals" {
				{
					{
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						\override Stem.stemlet-length = 0.75
						s1 * 5/16 \sustainOn
						<> \sustainOff
						\LV
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
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 3/16 \sustainOff \sustainOn
					}
					{
						s1 * 1/4 \sustainOff \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						\override Stem.stemlet-length = 0.75
						s1 * 3/16 \sustainOn
					}
					{
						s1 * 5/16
						<> \sustainOff
						\LV
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
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/4 \sustainOff \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 1/8
					}
					{
						s1 * 3/16
						<> \sustainOff
						\LV
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
						s1 * 1/16 \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
						<> \sustainOff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r4
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
							c'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							c'16
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
							d'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							d'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							cs'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = -1
							cs'16 ]
						}
						{
							b'4
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
							af'8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							bf'16 ] ~
							bf'4
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
							\set stemRightBeamCount = 1
							d'8
						}
						{
							bf'4
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8. ]
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
							\set stemRightBeamCount = 2
							cs'16 [
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
				}
			}
			\context PercussionWoodblockStaff = "Percussion Woodblock Staff" {
				\clef "percussion"
			}
			\context PercussionDrumStaff = "Percussion Drum Staff" {
				\clef "percussion"
				\context Voice = "Percussion LH Voice" {
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							f'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = -1
							c'16 ]
						}
						{
							cs'4
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
							bf'8. [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b'16 ] ~
							b'4
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
							\set stemRightBeamCount = 1
							af'8
						}
						{
							b'4
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
							e'16 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							e'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs'16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs'16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8. ]
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
							\set stemRightBeamCount = 2
							e'16 [
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
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}