% Plague water (2014) for saxophone, e-guitar, piano and percussion

\version "2.19.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/plague-water-paper.ily"
\include "../../stylesheets/plague-water-layout.ily"
\include "../../stylesheets/plague-water-header.ily"
\include "../../stylesheets/plague-water-parts.ily"

\score {
    \keepWithTag #'saxophone
    {
        \include "../plague-water-A01.ly"
        \include "../plague-water-B02.ly"
        \include "../plague-water-C03a.ly"
        \include "../plague-water-C03b.ly"
        \include "../plague-water-D04.ly"
        \include "../plague-water-B05.ly"
        \include "../plague-water-E06.ly"
        \include "../plague-water-F07.ly"
        \include "../plague-water-B08.ly"
        \include "../plague-water-A09.ly"
        \include "../plague-water-F10a.ly"
        \include "../plague-water-F10b.ly"
        \include "../plague-water-F10c.ly"
        \include "../plague-water-F10d.ly"
        \include "../plague-water-A11.ly"
        \include "../plague-water-C12a.ly"
        \include "../plague-water-C12b.ly"
        \include "../plague-water-B13.ly"
        \include "../plague-water-D14.ly"
        \include "../plague-water-F15.ly"
        \include "../plague-water-A16.ly"
        \include "../plague-water-D17a.ly"
        \include "../plague-water-D17b.ly"
    }
}

