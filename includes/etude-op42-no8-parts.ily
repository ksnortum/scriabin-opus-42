%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%% This piece was very difficult to engrave because of the five on four and
%% three on four rhythms are offset, yet they align on the first beat of each
%% measure. In the end I opted to emphasize the engraving, even if the code 
%% does not exactly match the mathematics of the note divisions.  The MIDI 
%% output suffers from this, but at Allegro, it's hardly noticeable.

%%% Positions and shapes %%%

hsA = \once \override NoteColumn.X-offset = -1
hsB = \override NoteColumn.X-offset = -1.25
hsOff = \revert NoteColumn.X-offset

slurShapeA = \shape #'((0 . -1) (0 . 0) (0 . 2) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 2) (0 . -0.5) (0 . 0))
                        ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -0.5) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (-1 . 0) (0 . -1))
                        ) \etc
slurShapeF = \shape #'(
                        ((0 . -1) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeG = \shape #'((0 . -1) (0 . 2) (-1 . 0.5) (0 . 0)) \etc
slurShapeH = \shape #'((0 . -2) (1 . 1) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'(
                        ((0 . -1) (0 . -1) (0 . -0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (2 . 1) (0 . 0) (0 . 0))
                        ) \etc
slurShapeK = \shape #'((0 . 0) (0 . 0) (-1 . 0) (0 . -1)) \etc

beamPositionsA = \once \override Beam.positions = #'(-4 . -3)

%%% Music %%%

global = {
  \time 4/4
  \key ef \major
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \override Beam.breakable = ##t
  \subdivideBeamsEighths.44
  \tuplet 5/4 4 { r8. c'16( ef  af ef c) r8  r8. ef16[( af  ef' af, ef]) 
    \subdivideBeamsOff c32[( ef af c | }
  \tupletOff
  \tuplet 3/2 { g'16 c, af] } \tuplet 5/4 4 { ef'[ g, d' af ef]  
    c'[ d, bf' ef, c]  af'[ b,  f' c af]) }  ef'32[( af c ef |
  \tuplet 3/2 { bf'16 ef, c] } \tuplet 5/4 4 { g'[ b, f' c af]  
    ef'[ g, d' af ef]  c'[ d,  af' ef c]) }  c'[-\slurShapeA ( e, |
  \tuplet 3/2 { bf'16 f d]) } \tuplet 5/4 4 { g'[( cs, f d bf])
    af[( d, g ef cf])  f'[( cf  ef cf g]) } d'[-\slurShapeB ( fs, |
  \tuplet 3/2 { d'16 g, ef] } \tuplet 5/4 4 { d'[ f,! d' gf, ef]
    bf'[ e, bf' f d]  bf[ d f bf d]) } ef,32[( af c ef |
  \tuplet 3/2 { bf'16 ef, c] } \tuplet 5/4 4 { af'[ b, g' c, af]  
    f'[ g, ef' af, f]  c'[ d, bf' ef, c]) } af'[( d, |
  \tuplet 3/2 { af'16 ef c] } \tuplet 5/4 4 { f[ cs f d bf]) 
    af'[( d, af' ef c])  f[( cs f d bf]) } af'32[( c! ef af |
  \tuplet 3/2 { d16 af ef] } \tuplet 5/4 4 { c'[ d, bf' ef, c]
    af'[ b, g' c, af]  f'[ g, ef' af, f]) } c'[-\slurShapeC ( g |
  
  \barNumberCheck 9
  \tuplet 3/2 { c16 af ef]) } \tuplet 5/4 4 { bf'[( e, bf' f d])
    c'[( g c af ef])  ef'[( g, ef' af, ef]) } c32[( ef af c |
  \tuplet 3/2 { g'16 c, af] } \tuplet 5/4 4 { ef'[ g, d' af ef] 
    c'[ d, bf' ef, c]  af'[ b, f' c af]) } ef'32[( af c ef |
  \tuplet 3/2 { bf'16 ef, c] } \tuplet 5/4 4 { g'[ b, f' c af]
    ef'[ g, d' af ef]  c'[ d, af' ef c]) } c'[( d, |
  \tuplet 3/2 { bf'16 ef, df]) } \tuplet 5/4 4 { f'[( a, ef' bf g])
    df'[( f, c' ef, c])  bf''![( d, af' ef af,]) } g'[-\slurShapeE ( b, |
  \tuplet 3/2 { g'16 c, af] } \tuplet 5/4 4 { g'[ bf, g' cf, af]
    ef'[ a, ef' bf g]  ef'[ bf g ef bf]) } c'[( d, |
  \tuplet 3/2 { bf'16 ef, df]) } \tuplet 5/4 4 { f'[( a, ef' bf g])
    df'[( f, c' ef, c])  bf''![( d, af' ef af,]) } g'[-\slurShapeE ( b, |
  \tuplet 3/2 { g'16 c, af] } \tuplet 5/4 4 { g'[ bf, g' cf, af]
    ef'[ a, ef' bf g]  ef'[ bf g ef bf]) } g'[( b, |
  \tuplet 3/2 { g'16 c, af] } \tuplet 5/4 4 { g'[ df g d af]  g'[ d g ef g,]
    g'[ d g ef a,] } g'[ d |
  
  \barNumberCheck 17
  \tuplet 3/2 { g16 ef bf]) } r4 \tuplet 5/4 { g'16[( d g ef bf]) } r8 r4 |
  r4 <g bf ef>2 q4 |
  \bar "||"
  \key gs \minor 
  \clef bass \voiceOne ds'2 e4. es8 |
  es8. fs16 <fs as>2 ds4 |
  gs2 fs4. e8 |
  ds2 \tupletOn \tuplet 3/2 { bs4 cs css } |
  \tupletOff ds2 e4. es8 |
  es8. fs16 <fs as>2 ds4 |
  
  \barNumberCheck 25
  as'2 gs4. fs8 |
  fs4 cs2 ds4 |
  e4. ds8 gs8 ds4 ds8 |
  ds4 cs bs cs |
  e4. ds8 b'8 ds,4 ds8 |
  ds4 cs b cs |
  ds2 e4. es8 |
  es8. fs16 <fs as>2\arpeggio fs4 |
  \bar "||"
  
  \barNumberCheck 33
  <cf ef bf'>2 af'4. a8 |
  c8 bf \oneVoice <c, ef af!>2 \appoggiatura { ef16[ af] } \tupletOn 
    \tuplet 5/4 { ef'16[( af, ef]) c32[( ef af c } |
  \tupletOff
  \tuplet 3/2 { g'16 c, af] } \tuplet 5/4 4 { ef'[ g, d' af ef]
    c'[ d, bf' ef, c]  af'[ b, f' c af]) } ef'32[( af c ef |
  \tuplet 3/2 { bf'16 ef, c] } \tuplet 5/4 4 { g'[ b, f' c af]
    ef'[ g, d' af ef]  c'[ d, af' ef c]) } c'[-\slurShapeF ( e, | 
  \tuplet 3/2 { bf'16 f d]) } \tuplet 5/4 4 { g'[( cs, f d bf]) 
    af[( d, g ef cf])  f'[( cf ef cf g]) } d'[-\slurShapeG ( fs, |
  \tuplet 3/2 { d'16 g, ef] } \tuplet 5/4 4 { d'[ f, d' gf, ef]
    bf'[ e, bf' f d]  bf[ d f bf d]) } ef,32[( af c ef |
  \tuplet 3/2 { bf'16 ef, c] } \tuplet 5/4 4 { af'[ b, g' c, af]
    f'[ g, ef' af, f]  c'[ d, bf' ef, c]) } af'[( d, |
  \tuplet 3/2 { af'16 ef c]) } \tuplet 5/4 4 { f[( cs f d bf])
    af'[( d, af' ef c])  f[( cs f d bf]) } af'32[( c! ef af |
  
  \barNumberCheck 41
  \tuplet 3/2 { d16 af ef] } \tuplet 5/4 4 { c'[ d, bf' ef, c]
    af'[ b, g' c, af]  f'[ g, ef' af, f]) } c'[( g |
  \tuplet 3/2 { c16 af ef]) } \tuplet 5/4 4 { bf'[( e, bf' f d])
    c'[( g c af ef])  ef'[( g, ef' af, ef]) } c32[( ef af c |
  \tuplet 3/2 { g'16 c, af] } \tuplet 5/4 4 { ef'[ g, d' af ef] 
    c'[ d, bf' ef, c]  af'[ b, f' c af]) } ef'32[-\slurShapeH ( af c ef |
  \tuplet 3/2 { bf'16 ef, c] } \tuplet 5/4 4 { g'[ b, f' c af]
    ef'[ g, d' af ef]  c'[ d, af' ef c]) } c'[-\slurShapeI ( d, |
  \tuplet 3/2 { bf'16 ef, df]) } \tuplet 5/4 4 { f'[( a, ef' bf g])
    df'[( f, c' ef, c])  bf''![( d, af' ef af,]) } g'[-\slurShapeK ( b, |
  \tuplet 3/2 { g'16 c, af] } \tuplet 5/4 4 { g'[ bf,! g' cf, af]
    ef'[ a, ef' bf g]  ef'[ bf g ef bf]) } c'[( d, |
  \tuplet 3/2 { bf'16 ef, df]) } \tuplet 5/4 4 { f'[( a, ef' bf g])
    df'[( f, c' ef, c])  bf''![( d, af' ef af,]) } g'[-\slurShapeK ( b, |
  \tuplet 3/2 { g'16 c, af] } \tuplet 5/4 4 { g'[ bf,! g' cf, af]
    ef'[ a, ef' bf g]  ef'[ bf g ef bf]) } g'[( b, |
  \tuplet 3/2 { g'16 c, af] } \tuplet 5/4 4 { g'[ df g d af] 
    g'[ d g ef g,]  g'[ d g ef a,] } g'[ d |
  \tuplet 3/2 { g16 ef bf]) } r4 \tuplet 5/4 { g'16[( d g ef bf]) } r8 r4 |
  <ef bf' ef>4 r r2 |
  \bar "|."
}

rightHandMiddle = \relative {
  \voiceFour 
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 2 |
  \key gs \minor
  \voiceFour s2 b |
  b4 s2. |
  s1 * 2 |
  s2 b |
  b4 s2. |
  
  \barNumberCheck 25
  s1 * 6 |
  g4 b b2 |
  b4 s2. |
  
  \barNumberCheck 33
}

rightHandLower = \relative {
  \voiceTwo 
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 2 |
  \clef bass <f b>2 e4 gs |
  g8. fs16 <fs b>2 q4 |
  <e b'>2 <gs b> |
  <g b>2 <e as> |
  <f b>2 e4 gs |
  g8. fs16 <fs b>2 q4 |
  
  \barNumberCheck 25
  <es b'>2~ q4. <fs as>8 |
  q1 |
  <e b'>1 |
  <e as>1 |
  <e b'>1 |
  <e as>1 |
  f2 e4 gs |
  g8. fs16 <fs b>2\arpeggio b4 |
  
  \barNumberCheck 33
  \key ef \major
  \clef treble
  s2 <c ef> |
  <d f>4 s2. |
}

rightHand = {
  \global
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Allegro" #2 #0 126
  \tempo 4 = 126
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandMiddle 
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree 
  s1 * 3 |
  s2. s8 bf~ |
  \tupletOff
  bf4*1/2 \tuplet 3/2 { a4 s8  bf4 s8  s4 s8 } s |
  s1 * 2 |
  s2. \tuplet 3/2 { s8*3/4 s c8*3/2~ } |
  
  \barNumberCheck 9
  c4*1/2 \tuplet 3/2 { d4 s8  c4 s8  c4 s8 } s |
  s1 |
  s2. s8 fs,[( |
  g8*1/2 ef,]) \tuplet 3/2 { s4. g'8[( af af,])  f''4 s8 } ef~ |
  ef4*1/2 \tuplet 3/2 { d4 s8  ef4 s8 s4 s8 } fs,[( |
  g8*1/2 ef,]) \tuplet 3/2 { s4. g'8[( af af,])  f''4 s8 } ef~ |
  ef4*1/2 \tuplet 3/2 { d4 s8  ef4 s8 s4 s8 } s |
  s1 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 * 4 |
  s2. s8 bf~ |
  bf4*1/2 \tuplet 3/2 { a4 s8  bf4 s8  s4. } s8 |
  s1 * 2 |
  
  \barNumberCheck 41
  s2. s8 c~ |
  c4*1/2 \tuplet 3/2 4 { d4 s8 c4 s8 c4 s8 } s8 |
  s1 |
  s2. s8 fs,[-\slurShapeJ ( |
  g8*1/2 ef,]) \tuplet 3/2 { s4. g'8[( af af,])  f''4 s8 } ef~ |
  ef4*1/2 \tuplet 3/2 { d4 s8  ef4 s8  s4. } fs,8[-\slurShapeJ ( |
  g8*1/2 ef,]) \tuplet 3/2 { s4. g'8[( af af,])  f''4 s8 } ef~ |
  ef4*1/2 \tuplet 3/2 { d4 s8  ef4 s8  s4. } s8 |
}

leftHandLower = \relative {
  \override Beam.breakable = ##t
  \tuplet 5/4 4 { r8. f8~  f8.\noBeam r8 } \tuplet 3/2 4 { r8 r  c'([ f, bf,])
    \hsA af'[( } |
  \tupletOff
  bf,8*1/2 ef,]) \tuplet 3/2 4 { <f' c'>8[( bf, ef,])  af'[( bf, ef,])
    f'[( bf, ef,]) } <f' c'>[( |
  bf,8*1/2 ef,]) \tuplet 3/2 4 { <af' ef'>8[( bf, ef,])  <f' c'>[( bf, ef,])
    f'[( bf, ef,]) } <bf' g'>~[( |
  <bf af'>8*1/2 ef,]) \tuplet 3/2 4 { <bf'' g'>8_~[( <bf af'>]) r
    <cf, af'>[( a' ef,]) } <a' ef'>4 \voiceFour d,8[( |
  ef8*1/2 f,]) \tuplet 3/2 4 { d'8[( ef f,])  cs'[( d bf]) \oneVoice r r4 } 
    bf8[( |
  \tuplet 3/2 { f'8 af])  ef'[( } \tupletOn \tuplet 3/2 { af]) r r } r4
    \tuplet 3/2 { \hsB r8 r e,[( \hsOff } |
  \tupletOff
  f8*1/2 bf,]) \tuplet 3/2 4 { g'8[( af bf,])  e[( f bf,])  g'[( af bf,]) }
    bf[( |
  \tuplet 3/2 { f'8 ef']) \clef treble \beamPositionsA af[( } \tupletOn 
    \tuplet 3/2 { c]) r r } r4 \clef bass \tuplet 3/2 { r8*3/4 r \voiceFour 
    e,,8*3/2[( } | 
    
  \barNumberCheck 9
  f8*1/2 bf,]) \tupletOff \tuplet 3/2 4 { g'8[( af bf,])  e[( f bf,])
    e[( f bf,]) } \oneVoice af'[( |
  bf,8*1/2 ef,]) \tuplet 3/2 4 { <f' c'>8[( bf, ef,])  af'[( bf, ef,])
    f'[( bf, ef,]) } <f' c'>[-\slurShapeD ( |
  bf,8*1/2 ef,]) \tuplet 3/2 4 { <af' ef'>8[( bf, ef,])  <f' c'>[( bf, ef,])
    f'[( bf, ef,]) } \voiceFour ef'~ |
  ef4*1/2 \tuplet 3/2 4 { c'8[^( df ef,])  ef4 s8  b'[( c f,]) } g[( |
  af8*1/2 bf,]) \tuplet 3/2 4 { g'8[( af bf,])  fs'[( g ef])  \oneVoice r8 r4 }
    \voiceFour ef8~ |
  ef4*1/2 \tuplet 3/2 4 { c'8[^( df ef,])  ef4 s8  b'[( c f,]) } g[( |
  af8*1/2 bf,]) \tuplet 3/2 4 { g'8[( af bf,])  fs'[( g ef])  \oneVoice r8 r4 }
    <bf, bf'>8~ |
  q4*1/2 \tuplet 3/2 4 { q8~ q4  <ef ef'>8~-> q4  <cf cf'>8~ q4 } 
    <ef ef'>8~-> |
    
  \barNumberCheck 17
  q4*1/2 r4 \tuplet 3/2 { q8~ q4 } r8 r4 |
  r4 q2 q4 |
  \key gs \minor 
  <g, g'>2 <gs gs'>4 <cs, cs'> |
  <css css'>4 <ds ds'>2 <gs gs'>4 |
  <cs, cs'>1 |
  <e e'>2-> <g g'> |
  <g g'>2 <gs gs'>4 <cs, cs'> |
  <css css'>4 <ds ds'>2 <gs gs'>4 |
  
  \barNumberCheck 25
  <cs, cs'>2~ q4. <fs fs'>8 |
  q1 |
  <cs' gs'>1 |
  <fs, fs'>1 |
  <cs' gs'>1 |
  fs1 |
  b4 g gs cs, |
  css4 ds2 ds'4 |
  
  \barNumberCheck 33
  \key ef \major 
  gf2 f |
  bf,4 f'2 \appoggiatura { c'16[ f,] } bf,4 |
  bf8*1/2( ef,) \tuplet 3/2 4 { <f' c'>8[( bf, ef,])  af'[( bf, ef,])
    f'[( bf, ef,]) } <f' c'>[( |
  bf,8*1/2 ef,]) \tuplet 3/2 4 { <af' ef'>8[( bf, ef,])  <f' c'>[( bf, ef,])
    f'[( bf, ef,]) } <bf' g'>[(~ |
  <bf af'>8*1/2 ef,]) \tuplet 3/2 4 { <bf'' g'>8[(_~ <bf af'>]) r
    <cf, af'>[( a' ef,]) } <a' ef'>4 \voiceFour d,8[( |
  ef8*1/2 f,]) \tuplet 3/2 4 { d'8[( ef f,])  cs'[( d bf])  \oneVoice r r4 } 
    bf8[( |
  f'8*1/2 af]) \tuplet 3/2 { ef'8[( af]) r4 } r4 \tuplet 3/2 { r8 r 
    e,8*3/2[( } |
  f8*1/2 bf,]) \tuplet 3/2 4 { g'8[( af bf,])  e[( f bf,])  g'[( af f]) } 
    bf,[( |
    
  \barNumberCheck 41
  f'8*1/2 ef']) \tuplet 3/2 { \clef treble \beamPositionsA af8[( c]) r } r4 r
    \clef bass \voiceFour e,,8[( |
  f8*1/2 bf,]) \tuplet 3/2 4 { g'8[( af bf,])  e[( f bf,])  e[( f bf,]) }
    \oneVoice af'[( |
  bf,8*1/2 ef,]) \tuplet 3/2 4 { <f' c'>8[( bf, ef,])  af'[( bf, ef,])
    f'[( bf, ef,]) } <f' c'>[( |
  bf,8*1/2 ef,]) \tuplet 3/2 4 { <af' ef'>8[( bf, ef,])  <f' c'>[( bf, ef,])
    f'[( bf, ef,]) } \voiceFour ef'~ |
  ef4*1/2 \tuplet 3/2 4 { c'8[^( df ef,])  ef4 s8  b'[( c f,]) } g[( |
  af8*1/2 bf,]) \tuplet 3/2 4 { g'8[( af bf,])  fs'[( g ef])  \oneVoice r8 r4 }
    \voiceFour ef8~ |
  ef4*1/2 \tuplet 3/2 4 { c'8[^( df ef,])  ef4 s8  b'[( c f,]) } g[( |
  af8*1/2 bf,]) \tuplet 3/2 4 { g'8[( af bf,])  fs'[( g ef])  \oneVoice r8 r4 }
    <bf, bf'>8~ |
  q4*1/2 \tuplet 3/2 4 { q8~ q4  <ef bf' ef>8~ q4  <cf cf'>8~ q4 } <ef ef'>8~ |
  q4*1/2 r4 \tuplet 3/2 { q8~ q4 } r8 r4 |
  <ef bf' g'>4 r r2 |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  \tuplet 5/4 { s8. s8\pp\<  s16 s4\!  s8. s8\<  s16 s8\! s\< <>\! | }
  s2 s4\> s8\! s\< <>\! |
  s2. s8 s^\poco |
  s1\cresc |
  s4 s2\dim s8 s\mf\< |
  s16 s8.\! s2 s8 s\p |
  s2. s8 s\mf\< |
  s16 s8.\! s2 s8 s\p |
  
  \barNumberCheck 9
  s2. s8 s\pp\< <>\! |
  s2. s8 s\< <>\! |
  s2. s8 s^\poco |
  s1\cresc |
  s1 * 4 |
  
  \barNumberCheck 17
  s1 * 2 |
  s2\mf s\< |
  s8. s16\! s2. |
  s1 |
  s2 s\> |
  s1\< |
  s8. s16\! s2. |
  
  \barNumberCheck 25
  s1 * 2 |
  s1\p |
  s1 |
  s1\cresc |
  s1\> |
  s1\p\<
  s4 s2\f\> s4\< |
  
  \barNumberCheck 33
  s4 s\! s2\dim |
  s2. s4\pp\< <>\! |
  s2 s4\> s8\! s\<
  s16 s8.\! s2. |
}

% MIDI only 
pedal = {
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 2 |
  s2\sd s4\su\sd s\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  s1\su\sd |
  s2\su\sd s\su\sd |
  s2\su\sd s4\su\sd s\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  
  \barNumberCheck 25
  s2\su\sd s4. s8\su\sd |
  s1\su\sd |
  s1\su\sd |
  s1\su\sd |
  s1\su\sd |
  s1\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  
  \barNumberCheck 33
  s2\su\sd s\su\sd |
  s4\su\sd s2\su\sd s4\su |
}

forceBreaks = {
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\pageBreak
  
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
}

etudeEightNotes =
\score {
  \header {
    title = "Etude 8"
    composer = "Alexander Scriabin"
    opus = "Opus 42, No. 8"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
    \override StaffGrouper.staff-staff-spacing.basic-distance = 12
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

etudeEightMidi =
\book {
  \bookOutputName "etude-op42-no8"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
