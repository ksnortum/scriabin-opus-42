%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 2/4
  \key fs \minor
  \set Staff.extraNatural = ##f
  \override Beam.breakable = ##t
}

rightHandUpper = \relative {
  \partial 4. r8 fs'8.. gs32 |
  a4~ \tuplet 3/2 { a4 b8 } |
  \voiceOne \tuplet 3/2 4 { d8 cs fs,  a4 a8 } |
  g4 es |
  \oneVoice r4 fs8.. gs32 |
  a4~ \tuplet 3/2 { a4 b8 } |
  \voiceOne \tuplet 3/2 4 { d8 cs fs,  a4 a8 } |
  b4 cs |
  \oneVoice r4 cs8.. ds32 |
  
  \barNumberCheck 9
  e4 <as, fs'> |
  \tuplet 5/4 { <b fs'>8. \voiceOne es,16[ fs } \scaleDurations 4/5 { 
      b as d]  es,[ fs |
    cs'16 b d]  \oneVoice as[ b e d fs]  r8 |
  }
  r4 b,8.. cs32 |
  d4 <gs, e'> |
  <a e'>4 <fs d'> |
  <g d'>4 \tuplet 5/4 { <es cs'>8. bs16[ cs } |
  \tuplet 5/4 { fs16 es a] r8 } fs8.. gs32 |
  
  \barNumberCheck 17
  a4~ \tuplet 3/2 { a4 b8 } |
  \voiceOne \tuplet 3/2 4 { d8 cs fs,  a4 a8 } |
  fs4 \tuplet 5/4 { g8. cs,16[ d }
  \tuplet 5/4 { a'16 g d] r8 } g8. a16 |
  b4~ \tuplet 3/2 { b4 cs8 } |
  \tuplet 3/2 4 { e8 d g,  b4 b8 } |
  b4^\smorz a |
  \oneVoice \compressMMRests { R2 * 2 } |
  
  % measure 25 comes in the middle of the MM rest
  \barNumberCheck 26
  \voiceOne a4 gs |
  \oneVoice \tupletUp \tuplet 5/4 4 { r8. gs16[ a  d cs fs]  gs,[ a } |
  \scaleDurations 4/5 {
    cs16 bs e]  e,[ es b' a d]  es,[ fs |
    b16 a cs]  gs,[ a d cs fs]  as,[ b |
    e16 d g] r8
  } <b, cs es>4 |
  <a cs fs>4 r |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4. s4. |
  s2 |
  \tupletOff
  \voiceTwo fs'4 \tuplet 3/2 { fs4 d8 } |
  b4 b |
  s2 * 2 |
  fs'4 cs |
  e4 e |
  s2 |
  
  \barNumberCheck 9 
  s2 |
  s4 <e fs>8 s |
  <d fs>8 s4. |
  s2 * 4 |
  <b! cs>8 s4. |
  
  \barNumberCheck 17
  s2 |
  fs'4 \tuplet 3/2 { cs4 d8 } |
  a4 \tuplet 5/4 { g8. s8 } |
  s4 d'4~ |
  d2~ |
  d2 |
  d2 |
  \compressMMRests { s2 * 2 } |
  
  % measure 25 comes in the middle of the MM rest
  \barNumberCheck 26
  <b cs es>2 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \tupletUp
  \partial 4. gs16[\<_\legatissimo a \tuplet 5/4 4 { d\> cs fs]\!  gs,[\< a |
    cs16\> bs e]\!  e,[\< es b'\> a d]\!  es,[-\tweak to-barline ##f \< fs | 
  }
  \scaleDurations 4/5 {
    b16\> a cs]\!  gs,[\< a d\> cs fs]\!  as,[-\tweak to-barline ##f \< b |
    e16\> d g]\!  bs,[ cs d cs gs!]  cs,[ gs' |
    cs16 gs' cs]  gs[ a d cs fs]  gs,[ a |
    cs16 bs e]  e,[ es b' a d]  es,[ fs |
    b16 a cs]  bs,[ cs fs e a]  ds,[ e |
    a16 gs e]  gs[ a b a e]  a,[ e' |
    a16 e' a]  \clef treble ds,[ e a gs cs]  ds,[ e |
    
    \barNumberCheck 9
    gs16 g b]  es,,[ fs fs' e! as]  as,[ b | 
  } 
  \tuplet 5/4 { e16 d b'] r8 } \clef bass <fs,, fs'>4~ |
  <b, fs' b>4 \tuplet 5/4 { r8. \clef treble es''16[ fs } |
  \scaleDurations 4/5 {
    cs'16 b d]  cs,[ d g fs b]  cs,[ d |
    fs16 f a]  \clef bass ds,,[ e e' d! gs]  gs,[ a |
    d16 cs a']  cs,,[ d d' c fs]  fs,[ g |
    c16 b g']  bs,,[ cs cs' b es]  r8 |
    <cs,, cs'>8.  gs''16[ a d cs fs]  gs,[ a |
    
    \barNumberCheck 17
    cs16 bs e]  e,[ es b' a d]  es,[ fs |
    b16 a cs]  bs,[ cs gs' fs a]  b,[ c |
    e16 d a']  as,[ b e d d']  r8 |
  }
  r4 << { g,4~ | g2~ | g2 | fs2 | } \\ { b,4~ | b2~ | b2 | c2 | } >>
  \compressMMRests { R2 * 2 } |
  
  % measure 25 comes in the middle of the MM rest
  \barNumberCheck 26
  <cs, cs'>2 |
  \tuplet 5/4 4 { r8. gs''16[ a  d cs fs]  gs,[ a } |
  \scaleDurations 4/5 {
    cs16 bs e]  e,[ es b' a d]  es,[ fs |
    b16 a cs]  gs,[ a d cs fs]  as,[ b |
    e16 d g] r8
  } <cs,, cs'>4 |
  <fs, fs'>4 r |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \partial 4. s4.\p |
  s4. s8-\tweak Y-offset 1 \< |
  \tag layout { s4-\tweak Y-offset 1 \> } \tag midi { s4\> } s8\! s8\< |
  s4\> s\! |
  s2 |
  s4. s8\< |
  s4\> s8\! s\< |
  s4\> s4\! |
  s4 s-\tweak Y-offset 1 \cresc |
  
  \barNumberCheck 9
  s2 |
  \scaleDurations 4/5 {
    s8. s8\f\<  s8.\> s8\< |
    s8.\> s8\!
  } s4 | 
  s2 * 2 |
  s4 s\dim |
  s2 |
  \scaleDurations 4/5 { s8. s8\p  s8. s8 } |
  
  \barNumberCheck 17
  s2 * 3 |
  s4 s\pp |
  s2 * 2 |
  s4\> s\! |
  s2 * 2 |
  
  % measure 25 comes in the middle of the MM rest
  \barNumberCheck 26
  s2\ppp\> <>\! |
  \tuplet 5/4 { s8. s8\ppp  } s4 |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "" #2 #0 112
  \tempo 4 = 100
  \partial 4. s4.
  s2 * 8 |
  
  \barNumberCheck 9
  s2 * 8 |
  
  \barNumberCheck 17
  s2 * 3 |
  s4 \tempo 4 = 88 s |
  s2 * 5 |
  
  % measure 25 comes in the middle of the MM rest
  \barNumberCheck 26
  \tempo 4 = 80
  s2 |
  \tempo "Presto" 4 = 138
  s2
}

% MIDI only 
pedal = {
  \partial 4. s8 \tuplet 5/4 { s8.\sd s8\su |
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su\sd | 
    s8. s8\su  s8.\sd s8\su |
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su\sd | 
    s8. s8\su  s8.\sd s8\su | 
    
    \barNumberCheck 9
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8 | 
    s8.\su\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 

    \barNumberCheck 17
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8. s8 | 
  } 
  s2 * 5 |
  
  % measure 25 comes in the middle of the MM rest
  \barNumberCheck 26
  s2 |
  \tuplet 5/4 { 
    s8. s8  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 
    s8.\sd s8\su  s8.\sd s8\su | 
  }
}

forceBreaks = {
  \partial 4. s4.
  s2 * 3 \break
  s2 * 5 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 6 \break
}

etudeTwoNotes =
\score {
  \header {
    title = "Etude 2"
    composer = "Alexander Scriabin"
    opus = "Opus 42, No. 2"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

etudeTwoMidi =
\book {
  \bookOutputName "etude-op42-no2"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
