%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/etude-op42-no1-parts.ily"
\include "includes/etude-op42-no2-parts.ily"
\include "includes/etude-op42-no3-parts.ily"
\include "includes/etude-op42-no4-parts.ily"
\include "includes/etude-op42-no5-parts.ily"
\include "includes/etude-op42-no6-parts.ily"
\include "includes/etude-op42-no7-parts.ily"
\include "includes/etude-op42-no8-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDFs

\tocItem \markup \concat { 
  "No. 1 Presto in D" \raise #0.75 \teeny \flat " major" 
}
\etudeOneNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 2 in F" \raise #0.75 \teeny \sharp " minor" 
}
\etudeTwoNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 3 Prestissimo in F" \raise #0.75 \teeny \sharp " major" 
}
\etudeThreeNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 4 Antante in F" \raise #0.75 \teeny \sharp " major" 
}
\etudeFourNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 5 Affannato in C" \raise #0.75 \teeny \sharp " minor" 
}
\etudeFiveNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 6 Esaltato in D" \raise #0.75 \teeny \flat " major" 
}
\etudeSixNotes
\pageBreak

\tocItem \markup { No. 7 Agigato in F minor }
\etudeSevenNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 8 Allegro in E" \raise #0.75 \teeny \flat " major" 
}
\etudeEightNotes

% Midi

\etudeOneMidi
\etudeTwoMidi
\etudeThreeMidi
\etudeFourMidi
\etudeFiveMidi
\etudeSixMidi
\etudeSevenMidi
\etudeEightMidi
