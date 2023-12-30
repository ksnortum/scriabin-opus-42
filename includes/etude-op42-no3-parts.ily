%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ()
                        ((0.75 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ()
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeB = \shape #'(
                        ()
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeC = \shape #'(
                        ()
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

%%% Music %%%

global = {
  \time 6/8
  \key fs \major
  \set Staff.extraNatural = ##f
  \subdivideBeamsEighths.68
}

rightHand = \relative {
  \global
  \set Score.tempoHideNote = ##t
  % The tempo of Prestissimo with a MM of 4 = 76 doesn't make sense.
  % It is most likely that the dot on the quarter note was left off.
  \textMark \markup \tempo-markup Prestissimo #2 #1 76
  \tempo 4. = 76
  \omit TupletBracket
  \tuplet 3/2 8 { g''16-\slurShapeA ( fs g  fs g fs  es gss as } 
      \scaleDurations 2/3 { d, cs d  cs d cs  d cs d |
    ef16 d ef  d ef d  cs es fs  bf, a bf  a bf a  bf a d |
    cs16 bs cs  bs cs bs  cs bs gs'  a gs a  gs a gs  a gs fs |
    fs16 es fs  es fs es  f es cs'  d cs d  cs d cs  d cs c |
    c16 b c  b c b  as css ds  g, fs g  fs g fs  g fs g |
    af16 g af  g af g  fs as b  ef, d ef  d ef d  ef d g |
    fs16 es fs  es fs es  fs es cs'  d cs d  cs d cs  d cs es, |
    g fs g  fs g fs  g fs g
  } fs8) r r |
  
  \barNumberCheck 9
  cs8-\slurShapeB ( f e  cs'4 gs8 |
  \omit TupletNumber
  \tuplet 3/2 { fss16 gs gss  as b bs  cs css ds) } r4 r8 |
  b,8( ef d  b'4 fs8 |
  \tuplet 3/2 { es16 fs fss  gs gss as  b bs cs) } r4 r8 |
  \tuplet 3/2 {
    c16-\slurShapeC ( b c  b c b  as css ds  g, fs g  fs g fs  g fs g |
    af16 g af  g af g  fs as b  ef, d ef  d ef d  ef d g |
    fs16 es fs  es fs es  fs es cs'  d cs d  cs d cs  d cs b |
    as16 gss as  gss as gss  as gss as
  } es8) r r |
  
  \barNumberCheck 17
  ef8( cs' bf  ef a, bf |
  \tuplet 3/2 { c16 b! c  b c b  c b c  b c b) } r8 r |
  cs,8( a' gs  cs fss, gs |
  \tuplet 3/2 { b16 as b  as b as  b as b  as b as)  } r8 r |
  b,8( g' fs  b es, fs |
  \tuplet 3/2 { 
    as16 gss as  gss as gss  as gss as  gss as gss  as gss as  gss as fs |
    fs16 es fs  es fs es  fs es cs'  d cs d  cs d cs  d cs es, |
    g16 fs g  fs g fs  g fs g
  } fs8) r r |
  
  \barNumberCheck 25
  ef8( cs' bf  ef a, bf |
  \tuplet 3/2 { c16 b! c  b c b  c b c  b c b) } r8 r |
  cs,8( a' gs  cs fss, gs |
  \tuplet 3/2 { b16 as b  as b as  b as b  as b as)  } r8 r |
  b,8( g' fs  b es, fs |
  \tuplet 3/2 { 
    as16 gss as  gss as gss  as gss as  gss as gss  as gss as  gss as fs |
    fs16 es fs  es fs es  fs es cs'  d cs d  cs d cs  d cs es, |
    g16 fs g  fs g fs  g fs cs'  d cs d  cs d cs  d cs es, |
    
    \barNumberCheck 33
    g16 fs g  fs g fs  g fs g  fs g fs  g fs g  fs g fs_~ |
  }
  <fs as fs'>4) r8 r4 r8 |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  as8 d cs  es as fs |
  fs,8 bf a  cs fs d |
  gs,8 e' ds  css bs' ds, |
  \clef treble cs8 a' gs  fss es' gs, |
  ds8 g fs  as ds b |
  b,8 ef d  fs b g |
  cs,8 a' gs  fss es' gs, |
  fs8 b as  gss fs' as, |
  
  \barNumberCheck 9
  \tupletOff
  \tuplet 3/2 { bf16 a bf  a bf a  bf a bf  a bf a  bf a bf  a bf a } |
  ds,8 gs fss  b ds as |
  \tuplet 3/2 { af16 g af  g af g  af g af  g af g  af g af  g af g } |
  cs,8 fs es  a cs gs |
  ds8 g fs  as ds b |
  b,8 ef d  fs b g |
  cs,8 a' gs  fss es' gs, |
  css,8 fs es  gss css as |
  
  \barNumberCheck 17
  \tuplet 3/2 { g16 af g  af g af  g af g  af g af  g af g  af g af } |
  g8 ef' d  cs d fs, |
  \tuplet 3/2 { 
    fs16 es fs  es fs es  fs es fs  es fs es  fs es fs  es fs es 
  } |
  e8 d' cs  bs cs e, |
  \tuplet 3/2 { e16 ds e  ds e ds  e ds e  ds e ds  e ds e  ds e ds } |
  d8 cs' bs fs'4 bs,8 |
  cs,8 cs' b  as es' b |
  fs b as  gss fs' as, |
  
  \barNumberCheck 25
  \tuplet 3/2 { g16 af g  af g af  g af g  af g af  g af g  af g af } |
  g8 ef' d  cs d fs, |
  \tuplet 3/2 { 
    fs16 es fs  es fs es  fs es fs  es fs es  fs es fs  es fs es 
  } |
  e8 d' cs  bs cs e, |
  \tuplet 3/2 { e16 ds e  ds e ds  e ds e  ds e ds  e ds e  ds e ds } |
  d8 cs' bs fs'4 bs,8 |
  cs,8 cs' b  as es' b |
  fs8 b as  <cs, b' es>4. | |
  
  \barNumberCheck 33
  <fs as>8 r r r4 r8 |
  <fs, cs' as'>4 r8 r4 r8 |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  s2.\ppp |
  s2. |
  s2.\pocoCresc
  s4. s\dim |
  s2.\ppp |
  s2. |
  s2.\pocoCresc
  s8 s4\> s4.\! |
  
  \barNumberCheck 9
  s4 s8\< s4. |
  s4.\> s8 s4\! |
  s8 s4\< s4 s8\! |
  s4.\> s\! |
  s2.\ppp |
  s2. * 3 |
  
  \barNumberCheck 17
  s2. * 4 |
  s8 s4\pocoCresc s4. |
  s4.\p s8 s4\dim |
  s2.-\tweak X-offset 0 \ppp 
  s2. |
  
  \barNumberCheck 25
  s2. * 4 |
  s4. \tag layout { s^\pochisCresc | } \tag midi { s\cresc | }
  s2. |
  s2.-\tweak X-offset 0 \ppp |
  s2. |
  
  \barNumberCheck 33
  s2. * 2 |
}

forceBreaks = {
  s2. * 2 \break
  s2. * 2 \break
  s2. * 2 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 2 \break
  s2. * 3 \pageBreak
  
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 2 \break
}

etudeThreeNotes =
\score {
  \header {
    title = "Etude 3"
    composer = "Alexander Scriabin"
    opus = "Opus 42, No. 3"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

etudeThreeMidi =
\book {
  \bookOutputName "etude-op42-no3"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics >>
      \new Staff = "lower" << \leftHand \dynamics >>
    >>
    \midi {}
  }
}
