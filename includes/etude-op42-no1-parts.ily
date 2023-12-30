%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveTextA = \tweak X-offset -1 \etc

slurShapeA = \tweak positions #'(0 . 0) \etc
slurShapeB = \tweak positions #'(0 . 3) \etc
slurShapeC = \shape #'((0 . 1) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeD = \shape #'((0.5 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeE = \tweak positions #'(0 . 1) \etc

%%% Music %%%

global = {
  \time 3/4
  \key df \major
  \set Staff.extraNatural = ##f
}

rightHand = \relative {
  \global
  \slurUp
  \tuplet 3/2 4 { bf'8( c, bff'  f' bf, c,  bff' ef af, } |
  \scaleDurations 2/3 {
    bff8 df, af'  df df, f  af df, g) |
    bf8( c, bff'  f' bf, c,  bff' ef af, |
    bff8 df, af'  df df, f  bff f af) |
    b8( cs, bf'  fs' b, cs,  bf' e a, |
    b8 cs, bf'  e b d,  bf' d a) |
    g8( d fs  d' es, d  fs d' cs |
    c!8 ef, gf  c af, c  f c ef) |
    
    \barNumberCheck 9
    bf'8( c, bff'  f' bf, c,  bff' ef af, |
    bff8 df, af'  df df, f  af df, g) |
    bf8-\slurShapeA ( c, bff'  f' bf, c,  bff' ef af, |
    bff8 df, af'  df df, f  bff f af) |
    ef'8( f, eff'  bf' ef, f,  eff' af df, |
    fs8 g, f'  b fs g,  f' a e) |
    f8( g, ff'  c' f, g,  ff' bf ef, |
    gs8 a, g'  cs gs a,  g' b fs) |
    
    \barNumberCheck 17
    cs8( ds, c'  fs b, ds,  as' fss' a,) |
    r8 af!( d  af' f af,  ff' af ef) |
    bf8( gf bff  ef af, af,  g' e' gf,) |
    r8 f( af  f' df f,  c' f cf) |
    r8 bf( e  bf' g af,  gf' bf f) |
    r8 df( c'  f a, df,  c' f bf,) |
    r8 af,-\slurShapeC ( g'  ef'! e, af,  g' df' f,) |
    r8 g,( df'  c' f, g,  f' c' ef,) |
    
    \barNumberCheck 25
    f8( g, ff'  c' ef, g,  d' bf' df, |
    c8 af bf  af' cf, af  df af' d, |
    c!8 af bf  g' b, af  df f d |
    f8 g, a  f' c g  c ef bf) |
    f8( df ff  c' ef, g,  d' bf' df, |
    c8 af bf  af' cf, af  df af' d,) |
    f8( df ff  c' ef, g,  d' bf' df, |
    c8 af bf  af' cf, af  df af' d,) |
    
    \barNumberCheck 33
    ef8( af, c!  af' c, af  c g' f |
    c8 af c  af' c, af  c g' f) |
    r8 af,( c  f c ef  bf' ef, af) |
    r8 ef( af  df af c  f c ef) |
    
    \key b \major
    r8 ds,( fs  cs' fs, b  e b ds |
    gs fs b  gs fs b,  ds gs, fs) |
    fs8( b, es  b' e, b  css b' ds,) |
    fs8( b, es  b' e, b  css b' ds,) |
    
    \barNumberCheck 41
    \key bf \major 
    r8 ef( cf'  ef bf ef,  af gf' f |
    a8 f ef  f ef a,  ef' a, f |
    a8 f ef  f ef a,  ef' a, f |
    a8 ef' f  ef f a  f a f') |
    r8 d,( f  c' f, bf  ef bf d |
    g8 f bf  g f bf,  d g, f) |
    f8( bf, e  bf' ef, bf  cs bf' d, ) |
    f8( bf, e  bf' ef, bf  cs bf' d, ) |
    
    \barNumberCheck 49
    r8 d( bf'  d a d,  gs f' e |
    gs8 e d  e d gs,  d' gs, e |
    gs8 e d  e d gs,  d' gs, e |
    gs8 d' e  d e gs  e gs e') |
    
    \key a \major 
    fs,8( d f  cs' e, gs,  ds' b' d, |
    cs8 a b  a' c, a  d a' ds,) |
    fs8( d f  cs' e, gs,  ds' b' d, |
    cs8 a cs  a' cs, a  cs a' gs) |
        
    \barNumberCheck 57
    gs8( cs, fss  cs' fs, bs,  a' ds gs, |
    a8 cs, gs'  es' cs es,  cs es gs) |
    b8( e, as  e' a, ds,  c' fs b, |
    c8 e, b'  gs' e gs,  e gs b) |
    ds8( gs, css  gs' cs, gs  bs gs' cs, |
    es8 fss, e'  as ds, fss,  css' ass' ds, |
    <gs, ds' bs'>8) ds( gs  cs gs bs  es bs ds |
    as'8 ds, gs  es gs, ds' 
  } \tuplet 3/2 { as4) as8 } |
  
  \barNumberCheck 65
  \key df \major
  \scaleDurations 2/3 {
    bf8( c, bff'  f' bf, c,  bff' ef af, |
    bff8 df, af'  df df, f  af f g) |
    bf8( c, bff'  f' bf, c,  bff' ef af, |
    bff8 df, af'  df df, f  bff f af) |
    b8( cs, bf'  fs' b, cs,  bf' e a, |
    b8 cs, bf'  e b d,  bf' d a |
    g8 d fs d' es, d  fs d' cs |
    c!8 ef, gf  c af, c  f c ef) |
    
    \barNumberCheck 73
    bf'8( c, bff'  f' bf, c,  bff' ef af, |
    bff8 df, af'  df df, f  af f g) |
    bf8( c, bff'  f' bf, c,  bff' ef af, |
    bff8 df, af'  df df, f  bf f af) |
    af8( bf, aff'  ef' af, bf,  aff' df gf, |
    b8 c, bf'  e b c,  bf' d a) |
    bf8( c, bff'  f' bf, c,  bff' ef af, |
    cs8 d, c'  fs cs d,  c' e b) |
    
    \barNumberCheck 81
    fs8( gs, f'  b e, gs,  ds' bs' d,) |
    r8 df!( g  df' bf df,  bff' df af) |
    ef8( cf eff  af df, df,  c' a' cf,) |
    r8 bf( df  bf' gf bf,  f' bf ff) |
    r8 ef( a  ef' c ef,  cf' ef bf) |
    r8 gf( f'  bf d, gf,  f' bf ef,) |
    r ef,( c'  af' a, ef  c' gf' bf,) |
    r8 gf( bf  f' bf, gf  bf ef af,) |
    
    \barNumberCheck 89
    bf8( c, bff'  f' af, c,  g' ef' gf, |
    f8 df ef  df' ff, df  gf! df' g, |
    f8 df ef  c' e, df  gf bf g |
    bf8 c, d  bf' f c  f af ef) |
    bf'8( c, bff'  f' af, c,  g' ef' gf, |
    f8 df ef  df' ff, df  gf! df' g,) |
    bf8( c, bff'  f' af,  c,  g' ef' gf, |
    f8 df ef  df' ff, df  gf! df' g,) |
    
    \barNumberCheck 97
    af8( df, f  df' f, df  f c' bf |
    af8 df, f  df' f, df  f c' bf) |
    r8 af,( df  gf df f  bf f af) |
    r8 df,( f  bf f af  ef' af, df) |
    r8 f,( af  ef' af, df  gf df f |
    bf8 af df  bf af df,  f bf, af |
    af8 df,! g  df' gf, df  f c ff |
    ef8 af, eff' af df, af  df f af) |
    
    \barNumberCheck 105
    r8 f( af  ef' af, df  gf df f |
    bf8 af df  bf af df,  f bf, af |
    af8 df,! g  df' gf, df  f c ef |
    ef8 af, eff'  af df, af  df f af) |
    af8( df, g  df' gf, df  f c ef |
    ef8 af, eff'  af df, af  f' c ef) |
    r8 f,( af  ef' af, df  gf df f |
    bf8 f af  ef' af, df  gf df f |
  }
  
  \barNumberCheck 113
  df'4) r r |
  << { df,4\arpeggio-\moveTextA ^\ms } \\ { <f,, af df f>\arpeggio } >> r r |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  \tupletDown
  \tuplet 5/3 { gf4( af, df, af' gf') } |
  \scaleDurations 3/5 {
    f4( af, df, bff' f') |
    gf4( af, df, af' gf') |
    f4( af, df, af' f') |
    g4( a, a, a' g') |
    g4( a, d, a' fs') |
    a4( a, d, a' fs') |
    gf4( af, af, af' gf') |
    
    \barNumberCheck 9
    gf4( af, df, af' gf') |
    f4( af, df, bff' f') |
    gf4( af, df, af' gf') |
    f4( af, df, af' f') |
    r4 cf'( df, cf' f) |
    %% I made an editorial decision and removed the clefs from 
    %% measures 14 and 16.
    cs'4-\slurShapeB ( cs, g a,) r |
    r4 df'( ef, df' g) |
    ds'4-\slurShapeB ( ds, a b,) r |
    
    \barNumberCheck 17
    r4 a'( b, ds ds') |
    gf4( af, c, af' gf') |
    r4 af,( c, af') r |
    f'4( af, df, af' f') |
    af4( bf, d, bf' af') |
    af4( df, ef, df' af') |
    af4( df, ef, df' af') |
    g4( df ef, df' g) |
  }
      
  \barNumberCheck 25
  <ef, df'>4 <af,, af'> << { ff'''8. ef16 } \\ { ef,4 } >> |
  <ef d'>4 <af,, af'> << { cf''8. cf16 } \\ { ef,4 } >> |
  <ef d'>4 <af,, af'> << { cf''8. c16 } \\ { ef,4 } >> |
  <ef df'!>4 <af,, af'> r |
  <ef' ef'>4 <af, af'> r |
  <ff' ff'>4 <af, af'> r |
  <ef' ef'>4 <af, af'> r |
  <ff' ff'>4 <af, af'> r |
  
  \barNumberCheck 33
  <ef' ef'>4 <af, af'> <d d'> |
  <ef ef'>4 <af, af'> <d d'> |
  <ef ef'>4 <af, af'> r |
  <af' af'> r r |
  
  \key b \major
  fs'8[ b,]  ds'[ fs,]  fs'[ ds] |
  b'8 r r4 r |
  <g,, g'>2-> <b fs'>4 |
  <g g'>2-> <b fs'>4 |
  
  \barNumberCheck 41
  \key bf \major
  <cf, cf'>2 <f f'>4 |
  R2. |
  <cf cf'>4\sf f' r |
  R2. |
  f8[ bf,]  d'[ f,]  f'[ d] |
  bf'8 r r4 r |
  <gf,, gf'>2 <bf f'>4 |
  <gf gf'>2 <bf f'>4 |
  
  \barNumberCheck 49
  <bf, bf'>2 <e e'>4 |
  R2. |
  <bf bf'>4 e' r |
  R2. |
  
  \key a \major 
  <e, e'>4 <a, a'> r |
  <f' f'>4 <a, a'> r |
  <e' e'>4 <a, a'> r |
  <e' e'>4 <a, a'> r |
  <a' ds>2 <gs fs'>4 |
  << { es'8[-\slurShapeD _( gs,] cs,) } \\ { es'4 s8 } >> r r4 |
  <c fs>2 <b a'>4 |
  << { g'8[-\slurShapeD _( b,] e,) } \\ { g'4 s8 } >> r r4 |
  <e as>2. |
  <ds cs'>2. |
  <gs, ds' bs'>8 r r4 r |
  R2. |
  
  \barNumberCheck 65
  \key df \major 
  gf'8( af, df,) af'( gf' c) |
  f,8( af, df,) bff'( f' df') |
  gf,8( af, df,) af'( gf' c) |
  f,8( af, df,) af'( f' df') |
  g,8( a, a,) a'( g' cs) |
  g8( a, d,) a'( fs' d') |
  \stemUp a8( a, d,) a'( fs' d') |
  gf,8[( af,] af,) r r4 |
  
  \barNumberCheck 73
  gf''8( af, df,) af'( gf' c) |
  f,8( af, df,) bff'( f' df') |
  gf,8( af, df,) af'( gf' c) |
  f,8[( af,] df,) r r4 |
  \stemNeutral ff'8( gf, gf,) gf'( ff' bf) |
  fs'8[-\slurShapeE ( fs, c d,]  d,) r |
  gf''8( af, af,) af'( gf' c) |
  gs'8[-\slurShapeE ( gs, d e,]  e,) r |
  
  \barNumberCheck 81
  d''8( e, e,) e'( gs gs') |
  cf8[-\slurShapeE ( df, f, f] f,) r |
  df''8( f, f,) f'( df') r |
  bf'[-\slurShapeE ( df, gf, gf] gf,) r |
  df'''8[-\slurShapeE ( ef, g, g] g,) r |
  df'''8[-\slurShapeE ( gf, af, af] af,) r |
  df''8[-\slurShapeE ( gf, af, af] af,) r |
  c''8[-\slurShapeE ( gf af, af] af,) r |
  
  \barNumberCheck 89
  <af' gf'>4 <df,, df'> << { bff'''8. af16 } \\ { af,4 } >> |
  <af g'>4 <df,, df'> <af'' ff'> |
  <af g'>4 <df,, df'> << { ff''8. f16 } \\ { af,4 } >> |
  <af gf'>4 <df,, df'> r |
  <af'' gf'>4 <df,, df'> r |
  <bff'' g'>4 <df,, df'> r |
  <af'' gf'!>4 <df,, df'> r |
  <bff'' g'>4 <df,, df'> r |
  
  \barNumberCheck 97
  <af'' f' af>4 <df,, df'> <af'' g'> |
  <af af'>4 <df,, df'> <af'' g'> |
  <af af'>4 <df,, df'> r4 |
  <df' af' f'>4 r r |
  cf''8[ df,]  f'[ cf]  af'[ f] |
  df'4 r r |
  << { bf,2 gf4 } \\ { d4( ef) af, } >> |
  <df, af' f'>4 r r |
  
  \barNumberCheck 105
  cf''8[ df,]  f'[ cf]  af'[ f] |
  df'4 r r |
  << { bf,2 gf4 } \\ { d4( ef) af, } >> |
  <df, af' f'>4 r r |
  << { bf''2 gf4 } \\ { d4( ef) af, } >> |
  <df, af' f'>4 r <af' gf'> |
  af8[ df,]  f'[ af,]  af'[ f] |
  df'8[ af]  f'[ df]  af'[ f] |
  
  \barNumberCheck 113
  \clef treble f'4 r r|
  \clef bass <df,,, af' df>4\arpeggio r r |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  s2.\p |
  s2. * 2 |
  s2 s4\cresc |
  s2. |
  s2.\mf |
  s2 s8 s\dim |
  s2. |
  
  \barNumberCheck 9
  s2.\pp |
  s2. * 3 |
  s2 s8 \tag layout { s-\tweak Y-offset -6.5 ^\crescPocoAPoco }
        \tag midi   { s\cresc } |
  s2. * 3 |
  
  \barNumberCheck 17
  s2. * 5 |
  s2.\ff |
  s2.\dim |
  s2. |
  
  \barNumberCheck 25
  s2.\f |
  s2. * 2 |
  s16 s8.\dim s2 |
  s4.\p s\< <>\! |
  s4 s2\> <>\! |
  s8 s\< s2 |
  s2\> s4\! |
  
  \barNumberCheck 33
  s2. * 4 |
  
  % key of b major
  s2\p s4-\tweak Y-offset 1 \< |
  s4-\tweak Y-offset 2 \> s2\! |
  s4.\> s\! |
  s4.\> s\! |
  
  \barNumberCheck 41
  % key of bf major
  s2.\f |
  s2. * 3 |
  s2.\p |
  s2. |
  s4.\> s\! |
  s4.\> s\! |
  
  \barNumberCheck 49
  s2.\f |
  s2. * 3 |
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 57
  s2.\cresc |
  s2. * 5 |
  s8\f s\p\< s2 |
  s2\> s4\p |
  
  \barNumberCheck 65
  s2.\pp |
  s2. * 3 |
  s2s4\cresc |
  s2. |
  s2 s4\dim |
  s2. |
  
  \barNumberCheck 73
  s2. * 5 |
  \tag layout { s2.^\crescPocoAPoco | }
  \tag midi   { s2.\cresc | }
  s2. * 2 |
  
  \barNumberCheck 81
  s2. * 4 |
  s2.\ff |
  s2. |
  s2.\dim |
  s2. |
  
  \barNumberCheck 89
  s2.\f |
  s2. |
  s2 s16 s8.\dim |
  s2. |
  s4\p s2\< |
  s2\> s4\! |
  s2.\< |
  s2\> s4\! |
  
  \barNumberCheck 97
  s2. * 4 |
  s2-\tweak Y-offset -2 \pp s4-\tweak to-barline ##f \< |
  s8\! s8\> s8 s\! s4 |
  s2. * 2 |
  
  \barNumberCheck 105
  s2 s4-\tweak to-barline ##f \< |
  s8\! s8\> s8 s\! s4 |
  s2. * 4 |
  s2.\pp |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Presto #2 #0 192-200
  \tempo 4 = 200
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 4 |
  \tempo "Prestissimo" 4 = 216
}

% MIDI only 
pedal = {
  \scaleDurations 3/5 {
    \repeat unfold 8 { s2.\sd s2\su | }
    
    \barNumberCheck 9
    \repeat unfold 8 { s2.\sd s2\su | }
    
    \barNumberCheck 17
    \repeat unfold 8 { s2.\sd s2\su | }
  }
  
  \barNumberCheck 25
  \repeat unfold 8 { s4\sd s2\su | }
  
  \barNumberCheck 33
  s4\sd s2\su |
  s4\sd s2\su |
  s2. * 2 |
  s2.\sd |
  s2.\su |
  s2\sd s4\su |
  s2\sd s4\su |
  
  
  \barNumberCheck 41
  s2\sd s4\su |
  s2. |
  s4\sd s2\su |
  s2. |
  s2.\sd |
  s2.\su |
  s2\sd s4\su |
  s2\sd s4\su |
  
  \barNumberCheck 49
  s2\sd s4\su |
  s2. |
  s4\sd s2\su |
  s2. |
  \repeat unfold 4 { s4\sd s2\su | }
  
  \barNumberCheck 57
  s2\sd s4\su |
  s4\sd s2\su |
  s2\sd s4\su |
  s4\sd s2\su |
  s2.\sd |
  s2.\su\sd |
  s2.\su |
  s2. |
  
  \barNumberCheck 65
  s4.\sd s\su\sd |
  \repeat unfold 7 { s4.\su\sd s\su\sd | }
  
  \barNumberCheck 73
  \repeat unfold 5 { s4.\su\sd s\su\sd | }
  s2\su\sd s4\su |
  s4.\sd s\su\sd |
  s2\su\sd s4\su |
  
  \barNumberCheck 81
  s4.\sd s\su\sd |
  s2\su\sd s4\su |
  s4.\sd s\su\sd |
  s2\su\sd s4\su |
  \repeat unfold 4 { s2\sd s4\su | }
  
  \barNumberCheck 89
  \repeat unfold 8 { s4\sd s2\su | }
  
  \barNumberCheck 97
  \repeat unfold 3 { s4\sd s2\su | }
  s2. |
  s2.\sd |
  s2.\su |
  s2. * 2 |
  
  \barNumberCheck 105
  s2.\sd |
  s2.\su |
  s2. * 4 |
  s2.\sd |
  s2. |
  
  \barNumberCheck 113
  s2.\su |
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
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  s2. * 3 \break
  s2. * 3 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
}

etudeOneNotes =
\score {
  \header {
    title = "Etude 1"
    composer = "Alexander Scriabin"
    opus = "Opus 42, No. 1"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
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

etudeOneMidi =
\book {
  \bookOutputName "etude-op42-no1"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
