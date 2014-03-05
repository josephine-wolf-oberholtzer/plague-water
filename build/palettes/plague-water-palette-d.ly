% Plague water (2014) for saxophone, e-guitar, piano and percussion

\version "2.19.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/plague-water-paper.ily"
\include "../../stylesheets/plague-water-layout.ily"
\include "../../stylesheets/plague-water-header.ily"

#(set-default-paper-size "11x17" 'portrait)
#(set-global-staff-size 12)

\score {
    {
        \include "../plague-water-segment-D04.ly"
        \include "../plague-water-segment-D14.ly"
        \include "../plague-water-segment-D17a.ly"
        \include "../plague-water-segment-D17b.ly"
    }
}

