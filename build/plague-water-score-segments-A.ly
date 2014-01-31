% Plague water (2014) for saxophone, e-guitar, piano and percussion

\version "2.19.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../stylesheets/plague-water-paper.ly"
\include "../stylesheets/plague-water-layout.ly"
\include "../stylesheets/plague-water-header.ly"

\score {
    \include "plague-water-segment-A-01.ly"
}

\score {
    \include "plague-water-segment-A-09.ly"
}

\score {
    \include "plague-water-segment-A-11.ly"
}

\score {
    \include "plague-water-segment-A-16.ly"
}
