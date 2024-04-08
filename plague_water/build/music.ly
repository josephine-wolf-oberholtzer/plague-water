% Plague water (2014) for saxophone, e-guitar, piano and percussion

\version "2.19.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../stylesheets/plague-water-paper.ily"
\include "../stylesheets/plague-water-layout.ily"
\include "../stylesheets/plague-water-header.ily"

#(set-default-paper-size "11x17" 'landscape)
#(set-global-staff-size 10)

\layout {
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing = #'(
            (basic-distance . 12)
            (minimum-distance . 8)
            (padding . 2)
            (stretchability . 0)
            )
        \override VerticalAxisGroup.staff-staff-spacing = #'(
            (basic-distance . 12)
            (minimum-distance . 8)
            (padding . 2)
            (stretchability . 0)
            )
        proportionalNotationDuration = #(ly:make-moment 1 32)
    }
    
    \context {
        \TimeSignatureContext
        \override VerticalAxisGroup.staff-staff-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 0)
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
        (stretchability . 100)
        )
}

\score {
    \include "segments.ly"
}
