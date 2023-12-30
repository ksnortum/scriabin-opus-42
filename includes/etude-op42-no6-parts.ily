%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 3/4
  \key df \major
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \voiceOne 
  bf'4^\marcatoMarkup bf4~ bf8.. bf32 |
  bf4 g af |
  \tuplet 5/4 { bf8 d, ef16 } bf'4~ bf8.. bf32 |
  bf4^\accel g af |
  c4 c~ c8.. c32 |
  c4 a bf |
  df4 f ef^\rit |
  bf4~ bf af8.. a32 |
  
  \barNumberCheck 9
  bf4^\rit bf~ bf8.. bf32 |
  bf4 g af |
  \tuplet 5/4 { bf8 d, ef16 }  bf'4~ bf8.. bf32 |
  bf4 g af |
  c4 c~ c8.. c32 |
  c4 a bf |
  df4 f~ f8.. ef32 |
  ef4 df af |
  \bar "||"
  
  \barNumberCheck 17
  \key cs \minor
  ds4-- ds--~ ds8.. ds32 |
  ds4-- fss, gs |
  ds'4~ ds ds |
  cs4 b fs |
  cs'4 cs~ cs8.. cs32 |
  cs4 es, fs |
  cs'4~ cs cs |
  b4 a gs |
  
  \barNumberCheck 25
  \key df \major 
  g4 g~ g8.. g32 |
  c4 bf bff |
  af4 f ef |
  ef4 c df |
  g4 g~ g8.. g32 |
  c4 bf bff |
  af f ef |
  ef4~ ef df |
  
  \barNumberCheck 33
  ef'4 ef4~ ef8.. ef32 |
  ef4 c df |
  \tuplet 5/4 { ef8 g, af16 } ef'4~ ef8.. ef32 |
  ef4 c df |
  \omit TupletNumber
  \tuplet 5/4 { df8 f, gf16 } df'4~ df8.. gf,32 |
  bff4 af gf |
  f!4~ f f |
  f4 af df |
  
  \barNumberCheck 41
  \tuplet 5/4 { df8 f, gf16 } df'4~ df8.. gf,32 |
  bff4 af gf |
  f!4 f f |
  f4 f f |
  f4 f af |
  df f af |
  \oneVoice <af, f' df'>4\arpeggio r r |
  R2. |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo 
  \tuplet 5/4 4 { 
    bf'16 <c, f> ef f, gf  bf' <c, f> ef f, gf  bf' <c, f> ef f, gf | 
  }
  \scaleDurations 4/5 {
    bf'16 <b, ef> d e, f  g' <b, ef> d e, f  af' <b, ef> d e, f |
    bf'16 c, d gf, ef'  bf' <c, f> ef f, gf  bf' <c, f> ef f, gf |
    bf'16 <bf, e> d gf, g  g' <bf, e> d a bf  af' <cf, e> d g, af |
    c'16 <d, g> f g, af  c' <d, g> f g, af  c' <d, g> f g, af |
    c'16 <c, gf'!> ff af, a  a' < c, gf'> ff b, c  bf' <df, f> ef a, bf |
    df'16 <df, af'> gf! a, bf  f'' <df, af'!> gf a,! bf
      ef' <df, af'!> gf a,! bf |
    bf'16 <c, f> ef f, gf  bf' <c, f> ef f, gf  af' <c, f> ef f, gf |
    
    \barNumberCheck 9
    bf'16 <c, f> ef f, gf  bf' <c, f> ef f, gf  bf' <c, f> ef f, gf |
    bf'16 <b, ef> d e, f  g' <b, ef> d e, f  af' <b, ef> d e, f |
    bf'16 c, d gf, ef'  bf' <c, f> ef f, gf  bf' <c, f> ef f, gf |
    bf'16 <bf, e> d gf, g  g' <bf, e> d a bf  af' <cf, e> d g, af |
    c'16 <d, g> f g, af  c' <d, g> f g, af  c' <d, g> f g, af |
    c'16 <c, gf'!> ff af, a  a' <c, gf'> ff b, c  bf' <df, f> ef a, b |
    df'16 <df, af'> gf a, bf  f'' <df, af'!> gf a,! bf  
      f'' <c, af'!> gf' g, af |
    ef''16 <c, gf'> f g, af  df' <df, gf!> f g,! af  af' <df, gf!> f af, df |
    
    \barNumberCheck 17
    \key cs \minor
    ds'16 <e, as> gs as, b  ds' <e, as> gs as, b  ds' <e, as> gs as, b |
    ds'16 <e, as> gs as, b  fss' e b as b  gs' e b as b |
    ds'16 <e, as>^- gs^- a,! as  ds' <e, gs>^- g^- a, as
      ds' <e, g>^- fs^- a, as |
    cs'16 <ds, gs!> fs a, as  b' <ds, gs> fs as, b  fs' ds b as b |
    cs'16 <d, gs> fs gs, a  cs' <d, gs> fs gs, a  cs' <d, gs> fs gs, a |
    cs'16 <d, gs> fs gs, a  es' d a gs a  fs' d a gs a |
    cs'16 <d, gs>^- fs^- g, gs  cs' <d, fs>^- f^- g, gs
      cs' <d, f>^- e^- g, gs |
    b'16 <cs, fs!> e g, gs  a' <cs, fs> e gs, a gs' <cs, fs> e g, gs |
    
    \barNumberCheck 25
    \key df \major
    g'16 <df ff> ef gf,! g  g' <df ff> ef gf, g  g' <df ff> ef gf, g | 
    c'16 <df, g> f gf,! g  bf' <df, g> f gf, g  bff' <df, g> f gf, g |
    af'16 <c, gf'!> f f, gf  f' c gf f gf  ef' c gf f gf |
    ef'16 bf gf f gf  c bf gf f gf  df' f, gf bf df |
    g16 <df ff> ef gf,! g  g' <df ff> ef gf, g  g' <df ff> ef gf, g |
    c'16 <df, g> f gf,! g  bf' <df, g> f gf, g  bff' <df, g> f gf, g |
    af'16 <c, gf'!> f f, gf  f' c gf f gf  ef' c gf f gf |
    ef'16 c f, e f  ef' c f, e! f  df' af df f af |
    
    \barNumberCheck 33
    ef'16 <f, bf> af bf, cf  ef' <f, bf> af bf, cf  ef' <f, bf> af bf, cf |
    ef'16 <e, af> g a, bf  c' <e, af!> g a,! bf  df' <e, af!> g a,! bf |
    ef'16 f, g cf, af'  ef' <f, bf> af bf, cf  ef' <f, bf> af bf, cf |
    ef'16 <e, af> g a, bf  c' <e, af!> g a,! bf  df' <e, af!> g a,! bf |
    df'16 ef, f bff, gf'  df' <ef, af> gf af, bff  df' <ef, af> gf af, bff |
    bff'16 <c, gf'> ff af, bff  af' <c, gf'> ff af, bff
      gf' <c, ff> eff af, bff |
    f'16 <af, ef'!> df f, af  f' <af, ef'> df f, af  f' <af, ef'> df f, af |
    f'16 <af, ef'> df f, af  af' <df, gf> f af, df  df' <f, bff> af c, df |
    
    \barNumberCheck 41
    df'16 ef, f bff, gf'  df' <ef, af> gf af, bff  df' <ef, af> gf af, bff |
    bff'16 <c, gf'> ff af, bff  af' <c, gf'> ff af, bff
      gf' <c, ff> eff af, bff |
    f'16 <af, ef'!> df^\accelerando f, af  f' <af, ef'> df f, af
      f' <g, ef'> df' f, g |
    f'16 <af, ef'> df f, af  f' <af, ef'> df f, af  f' <g, ef'> df' f, g |
    f'16 <af, ef'> df f, af  f' <af, ef'> df f, af  af' <df, gf> f af, df |
    df'16 <f, bf> af df, f  f' <af, ef'> df f, af  af' <df, gf> f af, df |
  }
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \tuplet 3/2 4 { gf8_\legato af, ef  ef,-> ef' af  gf' af, ef | }
  \scaleDurations 2/3 {
    f'8 af, ef  ef,-> ef' af  f' af, ef |
    gf'8 af, ef  ef, ef' af  gf' af, ef |
    g'8 d e,  bf'' d, e,  af' d, e, |
    af'8 bf, f  f, f' bf  af' bf, f |
    a'8 ff gf,  c' ff, gf,  bf' ef, g, |
    bf'8 ef, af,!  af,! af'! ef'  bf' ef, af,! |
    gf'8 af, af  af, af' af  gf' af, r |
    
    \barNumberCheck 9
    gf'8 af, ef  ef, ef' af  gf' af, ef |
    f'8 af, ef  ef, ef' af  f' af, ef |
    gf'8 af, ef  ef, ef' af  gf' af, ef |
    g'8 d e,  bf'' d, e,  af' d, e, |
    af'8 bf, f  f, f' bf  af' bf, f |
    a'8 ff gf,  c' ff, gf, bf' ef, g, |
    bf'8 ef, af,!  af,! af' ef'  af! ef af, |
    af'8 f af,  df, af' f'  af f af, |
    
    \barNumberCheck 17
    \key cs \minor
    b'8 e, gs,  cs, gs' e'  b' e, gs, |
    b'8 e, gs,  cs, gs' e'  b' e, gs, |
    as'8 e fs,  fs, fs' e'  as e fs, |
    as'8 ds, fs,  b, fs' ds'  b' ds, fs, |
    a'!8 d, fs,  b, fs' d'  a' d, fs, |
    a'8 d, fs,  b, fs' d'  a' d, fs, |
    gs'8 d e,  e, e' d'  gs d e, |
    gs'8 cs, e,  a, e' cs'  a' cs, e, |
    
    \barNumberCheck 25
    \key df \major
    g'8 df ef,  ef, ef' df'  g df ef, |
    g'8 af, af  af, af' af  g' af, af |
    gf'!8 af, af  af, af' af  gf' af, af |
    gf'8 bf, bf  bf, bf' bf  gf' bf, gf' |
    r8 df ef,  ef, ef' df'  g df ef, |
    g'8 af, af  af, af' af  g' af, af |
    gf'!8 af, af  af, af' af  gf' af, af |
    f'8 af, df,  af' df, af'  f' af, f' |
  }
  
  \barNumberCheck 33
  cf'16 f, af, df,  df, df' af' f'  cf' f, af, f' |
  bf16 e, g, df  df, df' g e'  bf' e, g, e' |
  cf'16 f, af, df,  df, df' af' f'  cf' f, af, f' |
  bf16 e, g, df  df, df' g e'  bf' e, g, e' |
  bff'16 ef, gf,! df  df, df' gf ef'  bff' ef, gf, ef' |
  bff'16 c, gf df  df, df' gf c  bff' c, gf c |
  af'16 df, af df,  df, df' af' df  af' df, af df |
  df16 af df, af'  f' af, df, af'  af' df, af af' |
  
  \barNumberCheck 41
  bff16 ef, gf,! df  df, df' gf ef'  bff' ef, gf, ef' |
  bff'16 c, gf df  df, df' gf c  bff' c, gf c |
  af'16 df, af df,  df, df' af' df  bff' df, bff df |
  af'16 df, af df,  df, df' af' df  bff' df, bff df |
  af'16 df, af df,  df, df' af' df  af' df, af df |
  af'16 f af, f'  df' f, af, f'  df' f, af, f' |
  <df,, df' af' f' df'>4\arpeggio r r |
  R2. |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s2.\p |
  s2. * 2 |
  s2.\cresc |
  s2. * 2 |
  s2.\f\dim
  s2. |
  
  \barNumberCheck 9
  s2.\p |
  s2. * 2 |
  s2.\cresc |
  s2. * 2 |
  s2.\f |
  s2. |
  
  \barNumberCheck 17
  s2.\p |
  s2. * 3 |
  s2.\pp |
  s2. * 3 |
  
  \barNumberCheck 25
  s2.\cresc |
  s2.\f |
  s2. |
  s16 s-\tweak Y-offset -1 \dim s8 s2 |
  s2.\cresc |
  s2.\f |
  s8. s16-\tweak Y-offset -2 \dim s2 |
  s2. |
  
  \barNumberCheck 33
  s2.\p |
  s2. * 3 |
  s2.\pocoCresc |
  s4 s2-\tweak Y-offset -1 \dim |
  s2. * 2 |
  
  \barNumberCheck 41
  s2.\pocoCresc |
  s4 s2-\tweak Y-offset -1 \dim |
  s4\p s8 s\< s16\! s\> s16 s\! |
  s4 s16 s8\< s16\! s32 s16.\> s8\! |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Esaltato" #2 #0 100
  \tempo 4 = 100
  s2. * 3 |
  \tempo 4 = 104
  s2. |
  \tempo 4 = 108
  s2. |
  \tempo 4 = 112
  s2. |
  s2 \tempo 4 = 108 s4 |
  s2. |
  
  \barNumberCheck 9
  \tempo 4 = 104
  s2.
  \tempo 4 = 100
  s2. * 7 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 2 |
  \tempo 4 = 104
  s2. |
  \tempo 4 = 108
  s2. |
  \tempo 4 = 112
  s2. |
  \tempo 4 = 116
  s2. |
}

forceBreaks = {
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
}

etudeSixNotes =
\score {
  \header {
    title = "Etude 6"
    composer = "Alexander Scriabin"
    opus = "Opus 42, No. 6"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
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

etudeSixMidi =
\book {
  \bookOutputName "etude-op42-no6"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}
