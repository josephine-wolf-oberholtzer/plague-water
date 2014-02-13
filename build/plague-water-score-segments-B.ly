% Plague water (2014) for saxophone, e-guitar, piano and percussion

\version "2.19.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../stylesheets/plague-water-paper.ily"
\include "../stylesheets/plague-water-layout.ily"
\include "../stylesheets/plague-water-header.ily"

\score {
    \include "plague-water-segment-B02.ly"
}

\score {
    \include "plague-water-segment-B05.ly"
}

\score {
    \include "plague-water-segment-B08.ly"
}

\score {
    \include "plague-water-segment-B13.ly"
}

