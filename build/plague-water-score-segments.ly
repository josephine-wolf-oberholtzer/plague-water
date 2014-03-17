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
        \include "plague-water-A01.ly"
        \include "plague-water-B02.ly"
        \include "plague-water-C03a.ly"
        \include "plague-water-C03b.ly"
        \include "plague-water-D04.ly"
        \include "plague-water-B05.ly"
        \include "plague-water-E06.ly"
        \include "plague-water-F07.ly"
        \include "plague-water-B08.ly"
        \include "plague-water-A09.ly"
        \include "plague-water-F10a.ly"
        \include "plague-water-F10b.ly"
        \include "plague-water-F10c.ly"
        \include "plague-water-F10d.ly"
        \include "plague-water-A11.ly"
        \include "plague-water-C12a.ly"
        \include "plague-water-C12b.ly"
        \include "plague-water-B13.ly"
        \include "plague-water-D14.ly"
        \include "plague-water-F15.ly"
        \include "plague-water-A16.ly"
        \include "plague-water-D17a.ly"
        \include "plague-water-D17b.ly"
    }
}

