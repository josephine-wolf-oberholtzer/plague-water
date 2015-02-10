% Plague water (2014) for saxophone, e-guitar, piano and percussion

\version "2.19.0"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../stylesheets/stylesheet.ily"

#(set-default-paper-size "letter" 'portrait)
#(set-global-staff-size 7)

\paper {
    bottom-margin = 1\in
    left-margin = 1\in
    right-margin = 1\in
    top-margin = 1\in
    evenFooterMarkup = \markup { \null }
    oddFooterMarkup = \markup { \null }
    page-breaking = #ly:minimal-breaking
    system-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 0)
        (padding . 0)
        (stretchability . 100)
    )
}

\layout {
    \context {
        \Score
        proportionalNotationDuration = #(ly:make-moment 1 24)
    }
}

\score {
    {
        \include "segment-A01.ly"
        \include "segment-B02.ly"
        \include "segment-C03a.ly"
        \include "segment-C03b.ly"
        \include "segment-D04.ly"
        \include "segment-B05.ly"
        \include "segment-E06.ly"
        \include "segment-F07.ly"
        \include "segment-B08.ly"
        \include "segment-A09.ly"
        \include "segment-F10a.ly"
        \include "segment-F10b.ly"
        \include "segment-F10c.ly"
        \include "segment-F10d.ly"
        \include "segment-A11.ly"
        \include "segment-C12a.ly"
        \include "segment-C12b.ly"
        \include "segment-B13.ly"
        \include "segment-D14.ly"
        \include "segment-F15.ly"
        \include "segment-A16.ly"
        \include "segment-D17a.ly"
        \include "segment-D17b.ly"
    }
}