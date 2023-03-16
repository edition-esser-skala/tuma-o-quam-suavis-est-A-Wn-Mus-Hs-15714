\version "2.24.0"

\include "../definitions.ly"
\include "score_settings/coro.ly"

\book {
  \bookpart {
    \section "O quam suavis est"
    \addTocEntry
    \paper { indent = 2\cm }
    \score {
      <<
        \new ChoirStaff <<
          \new Staff {
            \set Staff.instrumentName = "Soprano"
            \new Voice = "Soprano" { \dynamicUp \OQuamSoprano }
          }
          \new Lyrics \lyricsto Soprano \OQuamSopranoLyrics

          \new Staff {
            \set Staff.instrumentName = "Alto"
            \new Voice = "Alto" { \dynamicUp \OQuamAlto }
          }
          \new Lyrics \lyricsto Alto \OQuamAltoLyrics

          \new Staff {
            \set Staff.instrumentName = "Tenore"
            \new Voice = "Tenore" { \dynamicUp \OQuamTenore }
          }
          \new Lyrics \lyricsto Tenore \OQuamTenoreLyrics

          \new Staff {
            \set Staff.instrumentName = "Basso"
            \new Voice = "Basso" { \dynamicUp \OQuamBasso }
          }
          \new Lyrics \lyricsto Basso \OQuamBassoLyrics
        >>
        \new Staff {
          \set Staff.instrumentName = "Organo"
          \OQuamOrgano
        }
        \new FiguredBass { \OQuamBassFigures }
      >>
    }
  }
}
