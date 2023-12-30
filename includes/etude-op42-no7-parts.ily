%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamPositionsA = \tweak Beam.positions #'(1 . 3) \etc
beamPositionsB = \tweak Beam.positions #'(5 . 4) \etc
beamPositionsC = \tweak Beam.positions #'(2 . 4) \etc
beamPositionsD = \tweak Beam.positions #'(2 . 5) \etc
beamPositionsE = \tweak Beam.positions #'(3 . 5) \etc
beamPositionsF = \tweak Beam.positions #'(1 . 4) \etc
beamPositionsG = \tweak Beam.positions #'(2 . 5) \etc

slurShapeA = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 2/4
  \key f \minor
  \set Staff.extraNatural = ##f
}

rightHand = \relative {
  \global
  \tuplet 3/2 4 { <af' f'>8 c, <g' ef'>  ef f <af c> | }
  \scaleDurations 2/3 {
    <f df'>8 af, <ef' c'>  c df <f af> |
    <df bf'>8 f, <c' af'>  af bf <df f> |
    <c af'>8 c f  g af c |
    <af f'>8 c, <g' ef'>  ef f <af c> |
    <f df'>8 af, <ef' c'>  c df <f af> |
    <ef c'>8 g, <ef' c'> g, <df' bf'> g, |
    <c af'> ef af  bf c ef |
    
    \barNumberCheck 9
    <c af'>8 ef, <bf' g'> g af <c ef> |
    <af f'>8 c, <g' ef'>  ef f <af c> |
    <g ef'>8( b,) <g' ef'>(  b,) <f' df'>( b,) |
    <e c'>8 c e   fs g c |
    <g ef'!>8( b,) <g' ef'>(  b,) <f' df'>( b,) |
    <e c'>8( c <e c'>)  <f df'>( b, <f' df'>) |
    <e c'>8( c) <e c'>(  c) <f df'>( c) |
    <fs d'>8( c) <g' ef'>(  c,) <g' e'>( c,) |
    
    \barNumberCheck 17
    <af' f'>8 c, <g' ef'>  ef f <af c> |
    <f df'>8 af, <ef' c'>  c df <f af> |
    <df bf'>8 f, <c' af'>  af bf <df f> |
    <c af'>8 c f  g af c |
    <af f'>8 c, <g' ef'>  ef f <af c> |
    <f df'>8 af, <ef' c'>  c df <f af> |
    <ef c'>8 g, <ef' c'> g, <df' bf'> g, |
    <c af'> ef af  bf c ef |
    
    \barNumberCheck 25
    \acciaccatura { d,8 } <c' af'> ef, <bf' gf'>  g! af <c ef>  |
    f8 <f, af> df'  ef f <df bf'> |
    <c af'>8 ef, <bf' gf'>  g! af <c ef> |
    <af f'>8 f <af f'>  f <f df'> df |
    \acciaccatura { c8 } <a' f'> c, <gf' ef'>  e f <af c> |
    <f df'>8 df <f df'>  bf, <df bf'> bf |
    <bf af'>8 af <bf af'>  af <bf g'> g |
    <af f'>8 <c g'> <f af>  <g b> <af c> f' |
    
    \barNumberCheck 33
    \acciaccatura { d,8 } <c' af'> ef, <bf' gf'>  g! af <c ef>  |
    f8 <f, af> df'  ef f <df bf'> |
    <c af'>8 ef, <bf' gf'>  g! af <c ef> |
    <af f'>8 f <af f'>  f <f df'> df |
    \acciaccatura { c8 } <a' f'> c, <gf' ef'>  e f <af c> |
    <f df'>8 df <f df'>  bf, <df bf'> bf |
    <bf af'>8 af <bf af'>  af <bf af'> af |
    <bf af'>8 af <bf af'>  af <bf af'> g |
    
    \barNumberCheck 41
    <af f'>8 c f  g af c |
    <bf, af'>8 af <bf af'>  af <bf af'> g |
    <af f'>8 c f  g af c |
    <bf, af'>8 af <bf af'>  af <bf af'> g |
    <af f'>8 c f  g af c |
    f8 c f  g af c |
  }
  <af f'>8 r r4 |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  af16( c, f, f  \beamPositionsA f, f' f c') |
  af'16( bf, f f  f, f' f bf) |
  af'16( df, f, f  f, f' f df') |
  af'16( c, f, f  \beamPositionsA f, f' f c') |
  af'16( c, f, f  \beamPositionsA f, f' f c') |
  af'16( df, bf bf  bf, bf' bf af') |
  \beamPositionsB g16( ef ef, ef'  \beamPositionsB g ef ef, ef') |
  af16( ef af, af  \beamPositionsC af, af' af ef') |
  
  \barNumberCheck 9
  c'16( ef, af, af  \beamPositionsC af, af' af ef') |
  c'16( d, af af  af, af' af d) |
  b'16( f g, g  g, g' g f') |
  c'16( e, c c  c, c' c e) |
  b'16( f g, g  g, g' g f') |
  c'16( e, c e  b' f g, df') |
  \tuplet 5/4 4 { 
    g16( c, c c, c'  af' c, c c, c') |
    a'16( c, c c, c'  bf' c, c c, c') |
  }
  
  \barNumberCheck 17
  af'16( c, f, f  \beamPositionsA f, f' f c') |
  af'16( bf, f f  f, f' f bf) |
  af'16( df, f, f  f, f' f df') |
  af'16( c, f, f  \beamPositionsA f, f' f c') |
  af'16( c, f, f  \beamPositionsA f, f' f c') |
  af'16( df, bf bf  bf, bf' bf af') |
  \beamPositionsB g16( ef ef, ef'  \beamPositionsB g ef ef, ef') |
  af16( ef af, af  \beamPositionsC af, af' af ef') |
  
  \barNumberCheck 25
  c'16( gf af, af  \beamPositionsD af, af' af gf') |
  df'16( f, df df  \beamPositionsE df, df' df f) |
  c'16( gf af, af  \beamPositionsD af, af' af gf') |
  df'16( f, df df  \beamPositionsE df, df' df f) |
  a16( ef f, f  \beamPositionsF f, f' f ef') |
  bf'16( f bf, df  df' f, g, bf) |
  df'16( e, c c  c, c' c e) |
  c'16( f, c f,  \beamPositionsG f, f' c' af') |
  
  \barNumberCheck 33
  c16( gf af, af  \beamPositionsD af, af' af gf') |
  df'16( f, df df  \beamPositionsE df, df' df f) |
  c'16( gf af, af  \beamPositionsD af, af' af gf') |
  df'16( f, df df  \beamPositionsE df, df' df f) |
  a16( ef f, f  \beamPositionsF f, f' f ef') |
  bf'16( f bf, df  df' f, g, bf) |
  df'16( e, c c  c, c' c e) |
  R2 |
  
  \barNumberCheck 41
  <f, c' f c'>8 r r4 |
  df''16-\slurShapeA ( e, c c  c,8) r |
  <f c' f c'>8 r r4 |
  df''16-\slurShapeA ( e, c c  c,8) r |
  <f c' f c'>8 r r4 |
  <f' c' af'>8 r r4 |
  \clef treble <f' c'>8 r r4 |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s2\p |
  s2 * 2 |
  s8 s4.\< <>\! |
  s2 |
  s4 s\cresc |
  s2 |
  s4 s\< <>\! |
  
  \barNumberCheck 9
  s2 * 2 |
  s4\f s8. s16\> |
  s16 s8.\! s4\< <>\! |
  s2 * 2 |
  s8\f s4.\cresc |
  s2 |
  
  \barNumberCheck 17
  s2\p |
  s2 * 2 |
  s4 s\cresc |
  s2 * 3 |
  s2\f |
  
  \barNumberCheck 25
  s2\pp |
  s2 * 3 |
  s2\cresc |
  s2 |
  s16 s8.\> s4 <>\! |
  s2 |
  
  \barNumberCheck 33
  s2\pp |
  s2 * 3 |
  s2\cresc |
  s2 * 2 
  s2\> |
  
  \barNumberCheck 41
  s2\< <>\! |
  s8 s4.\> <>\! |
  s16 s8.\< s4 <>\! |
  s4 s\> |
  s16 s8.\! s4 |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Agigato #2 #0 126
  \tempo 4 = 126
  s2
}

% MIDI only 
pedal = {
  s4\sd s\su\sd |
  \repeat unfold 7 { s4\su\sd s\su\sd | }
  
  \barNumberCheck 9
  \repeat unfold 8 { s4\su\sd s\su\sd | }
  
  \barNumberCheck 17
  \repeat unfold 8 { s4\su\sd s\su\sd | }
  
  \barNumberCheck 25
  \repeat unfold 8 { s4\su\sd s\su\sd | }
  
  \barNumberCheck 33
  \repeat unfold 7 { s4\su\sd s\su\sd | }
  s2\su |
  
  \barNumberCheck 41
  s2 |
  s4.\sd s8\su |
  s2 |
  s4.\sd s8\su |
}

forceBreaks = {
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 5 \pageBreak
  
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \break
  \grace { s8 } s2 * 5 \break
}

etudeSevenNotes =
\score {
  \header {
    title = "Etude 7"
    composer = "Alexander Scriabin"
    opus = "Opus 42, No. 7"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing.basic-distance = 12
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

etudeSevenMidi =
\book {
  \bookOutputName "etude-op42-no7"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
