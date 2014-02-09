% Plague water (2014) for saxophone, e-guitar, piano and percussion

\version "2.19.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../stylesheets/plague-water-paper.ly"
\include "../stylesheets/plague-water-layout.ly"
\include "../stylesheets/plague-water-header.ly"

\score {
    \include "plague-water-segment-A01.ly"
}

\score {
    \include "plague-water-segment-A09.ly"
}

\score {
    \include "plague-water-segment-A11.ly"
}

\score {
    \include "plague-water-segment-A16.ly"
}
