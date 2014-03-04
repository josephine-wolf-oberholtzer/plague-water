% Plague water (2014) for saxophone, e-guitar, piano and percussion

\version "2.19.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../stylesheets/plague-water-paper.ily"
\include "../stylesheets/plague-water-layout.ily"
\include "../stylesheets/plague-water-header.ily"

#(set-default-paper-size "11x17" 'landscape)
#(set-global-staff-size 13)

\layout {
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 0)
            (padding . 4)
            (stretchability . 100)
            )
        \override VerticalAxisGroup.staff-staff-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 0)
            (padding . 4)
            (stretchability . 100)
            )
        proportionalNotationDuration = #(ly:make-moment 1 32)
    }
    
    \context {
        \TimeSignatureContext
        \override VerticalAxisGroup.default-staff-staff-spacing = #'(
            (basic-distance . 6)
            (minimum-distance . 8)
            (padding . 6)
            (stretchability . 0)
            )
    }
}

\paper {
    system-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 0)
        (padding . 4)
        (stretchability . 30)
        )
}

\score {
    {
        \include "plague-water-segment-A01.ly"
        \include "plague-water-segment-B02.ly"
        \include "plague-water-segment-C03a.ly"
        \include "plague-water-segment-C03b.ly"
        \include "plague-water-segment-D04.ly"
        \include "plague-water-segment-B05.ly"
        \include "plague-water-segment-E06.ly"
        \include "plague-water-segment-F07.ly"
        \include "plague-water-segment-B08.ly"
        \include "plague-water-segment-A09.ly"
        \include "plague-water-segment-F10a.ly"
        \include "plague-water-segment-F10b.ly"
        \include "plague-water-segment-F10c.ly"
        \include "plague-water-segment-F10d.ly"
        \include "plague-water-segment-A11.ly"
        \include "plague-water-segment-C12a.ly"
        \include "plague-water-segment-C12b.ly"
        \include "plague-water-segment-B13.ly"
        \include "plague-water-segment-D14.ly"
        \include "plague-water-segment-F15.ly"
        \include "plague-water-segment-A16.ly"
        \include "plague-water-segment-D17a.ly"
        \include "plague-water-segment-D17b.ly"
    }
}

