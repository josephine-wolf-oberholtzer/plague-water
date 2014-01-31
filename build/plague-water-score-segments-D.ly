% Plague water (2014) for saxophone, e-guitar, piano and percussion

\version "2.19.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../stylesheets/plague-water-paper.ly"
\include "../stylesheets/plague-water-layout.ly"
\include "../stylesheets/plague-water-header.ly"

\score {
    \include "plague-water-segment-D-04.ly"
}

\score {
    \include "plague-water-segment-D-14.ly"
}

\score {
    \include "plague-water-segment-D-17a.ly"
}

\score {
    \include "plague-water-segment-D-17b.ly"
}

