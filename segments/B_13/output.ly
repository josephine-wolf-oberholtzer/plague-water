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
				\mark \markup { \override #'(box-padding . 0.5) \box 13 }
				\tempo 4=72
				\time 3/4
				s1 * 3/4
			}
			{
				\time 6/16
				s1 * 3/8
			}
			{
				s1 * 3/8
			}
			{
				\time 3/4
				s1 * 3/4
			}
			{
				\time 9/16
				s1 * 9/16
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				\time 6/16
				s1 * 3/8
			}
			{
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
							r4
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 14/15 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16. [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32 (
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b32 ~
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							c32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							ef32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 0
							d32 ] )
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
							f32 [ (
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							ef32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							c32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							d32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							c'32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							ef32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							f32 ~
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							f32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							f32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							af32
						}
						\times 4/5 {
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							b16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							af32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							af32
						}
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 6/7 {
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							bf32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							b32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							bf32 ~
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							bf32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 3
							af32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							bf,32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b16.
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
							\set stemRightBeamCount = 0
							af,32 ] )
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
						\times 7/8 {
							\pitchedTrill
							\override Stem.stemlet-length = 0.75
							bf,4 \startTrillSpan df
							<> \stopTrillSpan
							\pitchedTrill
							d4 \startTrillSpan g
							<> \stopTrillSpan
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
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32 (
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							bf,32
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
							\set stemRightBeamCount = 2
							e,16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e,32 )
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16 ]
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
							r32 [
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e,32 (
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
							\set stemRightBeamCount = 2
							e16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e,16 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs16 ] )
							\revert Stem.stemlet-length
						}
					}
					{
						{
							\stopStaff
							\once \override Staff.StaffSymbol.line-count = 1
							\startStaff
							R1 * 3/8
							\stopStaff
							\startStaff
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
							r4
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
							ef32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							f32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16.
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							f16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							c'32
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
							r16
						}
					}
					{
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 10/11 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 3
							ef32 [ (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							c32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							c'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							ef32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							f32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 1
							cs16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							ef32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							f32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs'16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							b,16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							c'32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							ef16
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 1
							bf32
						}
						{
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d16
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 3
							bf32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d16.
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							af32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b,32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							d16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							d32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							af,32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf16 ] )
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
						\tweak #'text #tuplet-number::calc-fraction-text
						\times 7/8 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16. [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							b,32 (
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
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							bf,32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							b,32 )
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							r16. ]
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
						\times 3/4 {
							\pitchedTrill
							\override Stem.stemlet-length = 0.75
							af,4 \startTrillSpan df
							<> \stopTrillSpan
							\pitchedTrill
							cs4 ~ \startTrillSpan d
						}
						\times 2/3 {
							\set stemLeftBeamCount = -1
							\set stemRightBeamCount = 3
							cs32 [
							<> \stopTrillSpan
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs16 ]
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r8
						}
					}
					{
						\times 16/17 {
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 2
							r16 [
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e32 (
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							e32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							cs32 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							cs16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 2
							e16
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 3
							cs32
							\set stemLeftBeamCount = 3
							\set stemRightBeamCount = 2
							e32
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs16 ] )
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
							R1 * 3/8
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
							r8
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							ef'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							f'8. ]
						}
						{
							d'4
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
							cs'8.
						}
						{
							af'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							af'16
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
							bf8
						}
						{
							b'4
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							d'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
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
							e'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							cs'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
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
						r32
						c'4 \> \f
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 \p
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
						c'8.
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
						c'8 \< \sfp ~
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
						c'32 ] \ff
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
						c'16. \> \f
					}
					{
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8..
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
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
						c'32 ] \!
						\revert Stem.stemlet-length
						\revert Hairpin #'stencil
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
						\set stemRightBeamCount = 3
						r32 [
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8 \< \sfp
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
						\set stemLeftBeamCount = 1
						\set stemRightBeamCount = 1
						c'8. \> \f
						\set stemLeftBeamCount = 3
						\set stemRightBeamCount = 0
						c'32 ] \p
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r16
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
							ef,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							ef,16
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
							d,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							b,8. ]
						}
						{
							f,4
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
							c,8.
						}
						{
							bf,4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							bf,16
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
							d,4
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							af,,8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							af,,8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs,,16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs,,8 ]
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
							cs,,8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							cs,,16 ]
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
							e,,4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4
						}
					}
				}
			>>
			\context Dynamics = "Piano Pedals" {
				{
					{
						\override Stem.stemlet-length = 0.75
						s1 * 5/16 \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
					}
					{
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						s1 * 3/16
					}
					{
						s1 * 1/4
						<> \sustainOff
						\LV
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
						s1 * 3/16 \sustainOn
					}
					{
						s1 * 5/16 \sustainOff \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/4
						<> \sustainOff
						\LV
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
					{
						\override Stem.stemlet-length = 0.75
						s1 * 1/8 \sustainOn
					}
					{
						s1 * 1/8 \sustainOff \sustainOn
					}
					{
						s1 * 3/16 \sustainOff \sustainOn
						<> \sustainOff
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
						\once \override PianoPedalBracket.edge-height = #'(1 . 0)
						\once \override PianoPedalBracket.shorten-pair = #'(0 . 2)
						\override Stem.stemlet-length = 0.75
						s1 * 3/16 \sustainOn
						<> \sustainOff
						\LV
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
						s1 * 1/4 \sustainOn
						<> \sustainOff
						\revert Stem.stemlet-length
					}
				}
				{
					{
						r16
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
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							f'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							cs'8. ]
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
							ef'8.
						}
						{
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
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							d'8
						}
						{
							af'4
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							bf'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							bf'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							e'16 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							e'8 ]
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
							e'8 [ ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							e'16 ]
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
							cs'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
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
							f'4 ~
							\set stemLeftBeamCount = 2
							\set stemRightBeamCount = 0
							f'16
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
							b'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 0
							c'8. ]
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
							d'8.
						}
						{
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
							bf'4
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
						{
							\override Stem.stemlet-length = 0.75
							\set stemLeftBeamCount = 0
							\set stemRightBeamCount = 1
							b'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							b'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 2
							cs'16 ~
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
							r16
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
							r8
						}
						{
							r8.
						}
					}
					{
						{
							\override Stem.stemlet-length = 0.75
							e'4
							\revert Stem.stemlet-length
						}
					}
					{
						{
							r16
							r4
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}