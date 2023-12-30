%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 2)) \etc
slurShapeC = \shape #'((0 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . -1.5) (0 . -0.5) (0 . 2)) \etc
slurShapeE = \shape #'((0 . 0) (0 . -1.5) (0 . -0.5) (0 . 1)) \etc
slurShapeF = \shape #'((0 . 0) (0 . -0.5) (0 . -1) (0 . 0)) \etc
slurShapeG = \shape #'((0 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeH = \shape #'((1 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeI = \shape #'(
                        ((1 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.5))
                        ) \etc
slurShapeJ = \shape #'((0 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeK = \shape #'((0 . 0) (0 . -1) (0 . -0.5) (0 . 2)) \etc
slurShapeL = \shape #'((0 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeM = \shape #'((0 . 0) (0 . -1) (0 . -0.5) (0 . 0)) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . -1) (0 . -0.5) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0.5) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeP = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeQ = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -2)) \etc
slurShapeR = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeS = \shape #'((0 . 1) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeT = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . -2))
                        ) \etc
slurShapeU = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 2))
                        ) \etc
slurShapeV = \shape #'((1.25 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc


forceHShiftA = \once \override NoteColumn.force-hshift = -0.9
forceHShiftB = \once \override NoteColumn.force-hshift = -0.4

%%% Music %%%

global = {
  \time 3/4
  \key fs \major
  \set Staff.extraNatural = ##f
  \eighthsInTwos.34
}

rightHandUpper = \relative {
  \voiceOne gs''4.(^\cantabile fs8 bs, cs |
  fs4. e8 gs, a |
  cs4. b8 cs, d |
  \tupletOff
  \tuplet 3/2 { fs8 e es } ds'4 bs8 cs) |
  gs'4.( fs8 bs, cs |
  fs4. e8 gs, a |
  cs4. b8 cs, d |
  fs8 e as b fs' e) |
  
  \barNumberCheck 9
  b'4.( a8 ds, e |
  a8 cs, e d4 cs8 |
  cs8 bs as' gs4 es8 |
  ds4~ \tuplet 3/2 { ds8 cs bs  cs ds es) } |
  \oneVoice \tuplet 3/2 { <b ds fs>8-.( <b ds gs>8.-. <fs b ds>16-.) } q4
    \tuplet 3/2 { <fs b cs>8-.( <fs b ds>-. <ds fs b>-.) } |
  \voiceOne as'2( gs4) |
  r8 gs( ds'4~ \tuplet 3/2 { ds4 ds8 } |
  ds4 \tuplet 3/2 { cs8 ds es  fs gs as) } |
  
  \barNumberCheck 17
  \oneVoice \tuplet 3/2 { <e gs b>8-.( <e gs cs>8.-. <b e gs>16-.) } q4
    \tuplet 3/2 { <b e fs>8-.( <b e gs>-. <gs b e>-.) } |
  \voiceOne ds'2( cs4) |
  r8 cs( gs'4~ \tuplet 3/2 { gs4 gs8 } |
  gs4~ \tuplet 3/2 { gs8 fs es  fs gs as) } |
  \oneVoice  \tuplet 3/2 { 
    <ds, fs cs'>-.( <fs, b css>-. <fs b ds>-.)  <ds' fs cs'!>4( <ds fs b>8~
    q8) r <b ds as'> | 
  }
  q4. <b ds gs>8 \tuplet 3/2 { <b ds fs>8-.( <fs b ds>-. <ds b'>-.) } |
  \voiceOne \tuplet 3/2 { as'8(^\pocoAccel fss gs } ds' cs) b( as) | 
  \tuplet 3/2 { as8( fss gs } ds' bs ds^\rit cs) |
  
  \barNumberCheck 25
  gs'4.( fs8 bs, cs |
  fs4. e8 gs, a |
  cs4. b8 cs, d |
  \tuplet 3/2 { fs8 e es } ds'4 bs8 cs) |
  gs'4~-\slurShapeU ( gs8 fs \tuplet 3/2 { bs, cs8. css16 } |
  css2 ds4) |
  as'4~( as8 gs \tuplet 3/2 { css, ds8. dss16 } |
  dss2 es4) |
  
  \barNumberCheck 33
  <ds ds'>4.-\slurShapeT ( <cs cs'>8 \tuplet 3/2 { fss gs8. gss16 } |
  gss4. as8 css,16 ds gs fs |
  \oneVoice \tuplet 3/2 { fs8 es ds } cs as4 gs8 |
  \voiceOne gs2 fs4) |
  \oneVoice \tuplet 3/2 { <b ds fs>8-.( <b ds gs>8.-. <fs b ds>16-.) } q4
    \tuplet 3/2 { <fs b cs>8-.( <fs b ds>-. <ds fs b>-.) } |
  \voiceOne as'2( gs4) |
  r8 gs ds'4~-\slurShapeS ( \tuplet 3/2 { ds4 ds8 } |
  ds4~ \tuplet 3/2 { ds8 cs bs  cs ds es) } |
  
  \barNumberCheck 41
  \oneVoice \tuplet 3/2 { <b ds fs>8-.( <b ds gs>8.-. <fs b ds>16-.) } q4
    \tuplet 3/2 { <fs b cs>8-.( <fs b ds>-. <ds fs b>-.) } |
  \voiceOne as'2( gs4) |
  r8 gs ds'4~-\slurShapeR ( \tuplet 3/2 { ds4 ds8 } |
  ds4 cs) \tuplet 3/2 { ds4( ds8 } |
  ds4 cs) \tuplet 3/2 { ds4( ds8 } |
  ds2 cs4 |
  \oneVoice as'4) r r |
  \bar "|."
}

rightHandMiddle = \relative {
  \voiceFour cs''2 s4 |
  s2. * 2 |
  s2 es,4 |
  cs'2 s4 |
  s2. *  3 |
  
  \barNumberCheck 9
  e2 s4 |
  s2. |
  s8 \hideNoteHead bs~ bs4 s4 |
  s2. * 5 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  cs2 s4 |
  s2. * 2 |
  s2 es,4 |
  cs'2 s4 |
  \tupletOff
  \forceHShiftA fs,4 \tuplet 3/2 { as8 gs fs  fs4 fss8 } | 
  \forceHShiftB ds'2 s4 |
  \forceHShiftA gs,4 \tuplet 3/2 { bs8 as gs  <es gs>4 gss8 } |
  
  \barNumberCheck 33
  s2. |
  cs2 s4 |
}

rightHandLower = \relative {
  \voiceTwo es'4. fs4 fs8 | 
  <fs cs'>2 e4 |
  <d fs>2 r4 |
  s4 as'8 fss as8 gs | 
  es4. fs4 fs8 | 
  <fs cs'>2 e4 |
  <d fs>2 r4 |
  d2 <gs b>4 |
  
  \barNumberCheck 9
  gs4. a4 a8 | 
  a2. |
  fs2 <fs gs>4 | 
  <es gs>2 gs4 |
  s2. |
  <b, ds>2. |
  \tupletOff
  r4 r \tuplet 3/2 { fss'8 gs gss } |
  as4 fs cs' |
  
  \barNumberCheck 17
  s2. |
  <e, gs>2. |
  r4 r \tuplet 3/2 { bs'8 cs css } |
  ds4 r r |
  s2. * 2 |
  cs,4 es ds |
  cs es2 |
  
  \barNumberCheck 25
  es4. fs4 fs8 | 
  <fs cs'>2 e4 |
  <d fs>2 r4 |
  s4 as'8 fss as8 gs | 
  es4~ es8 fs <e fs>4 | 
  e2 ds4 | 
  fss~ fss8 gs <fs gs>4 | 
  fs2 s4 |
  
  \barNumberCheck 33
  gs'!2 <b, cs>4 |
  b4. as8 as gs |
  s2. |
  cs,2 r4 |
  s2. |
  r4 r <b ds fs>4 |
  r4 r \tuplet 3/2 { fss'8 gs gss } |
  as2. |
  
  \barNumberCheck 41
  s2. |
  r4 r <b, ds fs>4 |
  r4 r \tuplet 3/2 { fss'8 gs gss } |
  as2 \tuplet 3/2 { fss8 gs gss } |
  as2 \tuplet 3/2 { fss8 gs gss } |
  as2. |
  s2. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandMiddle 
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree 
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 6 |
  fs'4 s2 |
  s2. |
  
  \barNumberCheck 17
  s2. * 2 |
  b4 s2 |
  s2. |
  \tupletOff
  s4 \tuplet 3/2 { as,4( b8) } s4 |
  s2. * 3 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 6 |
  fs'4 s2 |
  s2. |
  
  \barNumberCheck 41
  s2. * 2 |
  fs4 s2 |
}

leftHandLower = \relative {
  \global
  \clef bass
  \tuplet 3/2 4 { r8\< gss-\slurShapeA ( as\!  cs\> as cs,\!  as' cs, fs,) } |
  \scaleDurations 2/3 {
    r8 gs'-\slurShapeB ( a  cs a cs,  cs' cs, fs,) |
    r8 gs'( a  d a b,  a' b, fs) |
    r8 g'( gs  e' b cs,  b'! cs, fs,) |
    r8 gss'-\slurShapeC ( as\!  cs\> as cs,\!  as' cs, fs,) |
    r8 gs'-\slurShapeD ( a  cs a cs,  cs' cs, fs,) |
    r8 gs'-\slurShapeE ( a  d a b,  fs'' a, b,) |
    r8 fss'-\slurShapeF ( gs  e' gs, e  cs' e d) |
    
    \barNumberCheck 9
    r8 bs( cs  e cs e,  cs' e, a,) |
    r8 cs'( e  cs fs, d'  fs, fs,) r |
    r8 css''( ds  fs ds gs,  bs fs gs,) |
    cs8( es bs'
  } cs4 es) |
  \scaleDurations 2/3 { 
    ds8( es, fs  b fs gs,  fs' gs, cs,) |
    r8 es'-\slurShapeG ( fs  b fs gs,  fs' gs, cs,) |
    fs''8-\slurShapeH ( gs, as_~  <as fs'> b cs,  es' b cs, |
    fs'8 as, cs,  as' cs, fs,)
  } as''4 |
  
  \barNumberCheck 17
  \scaleDurations 2/3 {
    gs8( as, b  e b cs,  b' cs, fs,) |
    r8 as'( b  e b cs,  b' cs, fs,) |
    b''8-\slurShapeI ( cs, ds_~  <ds b'> e fs,  as' e fs, |
    b'8 ds, fs,  ds' fs, b,)
  } r4 |
  \scaleDurations 2/3 {
    fs''8( b, ds,  as' ds, gs,  ds' b' fs') |
    fs8( b, ds,  b' ds, gs,  ds' b' fs') |
    es( b cs,~  cs b' es)  fs( b, gs) |
    es'8( b cs,~  cs b' es~  es b cs,) |
    
    \barNumberCheck 25
    r8 gss'-\slurShapeJ ( as  cs as cs,  as' cs, fs,) |
    r8 gs'-\slurShapeK ( a  cs a cs,  cs' cs, fs,) |
    r8 gs'-\slurShapeL ( a  d a b,  a' b, fs) |
    r8 g'-\slurShapeM ( gs  e' b cs,  b'! cs, fs,) |
    r8 gss'-\slurShapeN ( as  cs as cs,  as' fs fs, |
    b8 fs' as  fs' as, fs  b as b) |
    r8 ass( bs  ds bs ds,  bs' gs gs, |
    cs8 gs' bs  gs' bs, gs  cs bs cs) |
    
    \barNumberCheck 33
    r8 e-\slurShapeO ( es  b' es, gs,  es' cs cs, |
    fs8 cs' es  fs cs fs,  fs' bs, gs) |
    fs'8-\slurShapeP ( b,! cs,~  cs b' fs'  es b cs,) |
    es'8( as, cs,  fs, cs' as'  ds bs cs) |
    fs8( gs, as  b cs, fs,~  fs cs' b') |
    fs'8( as,-- b--  ds-- b cs,  fs, cs' b') |
    fs'8-\slurShapeV ( gs, as_~  <as fs'> b cs,  es' b cs, |
    fs'8 as, cs,  fs, cs' as' 
  } fs'4) |
  
  \barNumberCheck 41
  \scaleDurations 2/3 {
    fs8( gs, as  b cs, fs,~  fs cs' b') |
    fs'8( as,-- b--  ds-- b cs,  fs, cs' b') |
    fs'8-\slurShapeV ( gs, as_~  <as fs'> b cs,  es' b cs, |
    fs'8 as, cs,  fs, cs' as')  es'( b cs, |
    fs'8 as, cs,  fs, cs' as')  es'-\slurShapeQ ( b cs, |
    fs'8 as, cs,  fs, cs' as'  fs' as, cs, |
  }
  fs,,4) r r |
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
  s2\p\> s4\! |
  s2\> s8 s\! |
  s4.\> s\! |
  s8.-\tweak Y-offset 0.5 \< s16\! s4 s-\tweak Y-offset 0.5 \> <>\! |
  s2.\> |
  s2\> s4\! |
  s8 s\> s s\! s4 |
  s4 s2\cresc |
  
  \barNumberCheck 9
  s2.\mf |
  s2. |
  s4 s8 s\dim s4 |
  s2. |
  \tag layout { s2\!^\ppDolciss } \tag midi { s2\pp } s4\< <>\! |
  s8 s\> s4 s\! |
  s2 s4\< <>\! |
  s4 s2\pocoCresc |
  
  \barNumberCheck 17
  s2\p s4\< |
  s2\> s4\! |
  s2 s4\< <>\! |
  s16 s8.\> s8 s\! s4\cresc |
  \tag layout { s4-\tweak Y-offset -1 ^\fRubato } \tag midi { s4\f } s2 |
  s2. * 2 |
  s4 s2\dim |
  
  \barNumberCheck 25
  s2\p\> s4\! |
  s4.\> s\! |
  s4.\> s\! |
  \tuplet 3/2 { s8 s4\< } s\! s4\> <>\! |
  s4. s\cresc |
  s2. * 3 |
  
  \barNumberCheck 33
  \tag layout { s2\!^\ppDolciss } \tag midi { s2\pp } s4\cresc |
  s2. |
  s4\mp s2\dim |
  s16 s8.\> s8. s16\! s4 |
  s2\pp s4\< <>\!|
  s16 s8.\> s8. s16\! s4 |
  s2 \tuplet 3/2 { s8 s4\< } |
  s2\> s4\! |
  
  \barNumberCheck 41
  s2 s4\< <>\! |
  s16 s8.\> s8. s16\! s4 |
  s2. * 3 |
  s8 s^\smorz s2 |
  s2. |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Andante" #2 #0 60
  \tempo 4 = 60
  s2. * 3 |
  s4 \tempo 4 = 56 s \tempo 4= 52 s |
  \tempo 4 = 60
  s2. * 4 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 4 |
  s4 \tempo 4 = 56 s \tempo 4= 52 s |
  \tempo 4 = 60
  s2. |
  \tempo 4 = 66
  s2. |
  \tempo 4 = 60
  s2 \tempo 4 = 52 s4 |
  
  \barNumberCheck 25
  \tempo 4 = 60
  s2. * 3 |
  s4 \tempo 4 = 56 s \tempo 4= 52 s |
  \tempo 4 = 60
  s2. * 4 |
  
  \barNumberCheck 33
  \tempo 4 = 56
  s2. * 4 |
  \tempo 4 = 60
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 4
  s2 \tempo 4 = 56 s4 |
  s2 \tempo 4 = 52 s4 |
  \tempo 4 = 40
  s2. |
}

% MIDI only 
pedal = {
  s4 s2\sd |
  \repeat unfold 7 { s4\su\sd s2\su\sd | }
  
  \barNumberCheck 9
  \repeat unfold 3 { s4\su\sd s2\su\sd | }
  s2.\su\sd |
  s2.\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s2\su\sd |
  s2.\su\sd |
  
  \barNumberCheck 17
  s2.\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s2\su\sd |
  s2.\su\sd |
  \repeat unfold 4 { s2.\su\sd | }
  
  \barNumberCheck 25
  \repeat unfold 5 { s4\su\sd s2\su\sd | }
  s2\su\sd  s4\su\sd |
  s4\su\sd s2\su\sd |
  s2\su\sd s4 \su\sd |
  
  \barNumberCheck 33
  s4\su\sd s2\su\sd |
  s2\su\sd s4 \su\sd |
  s4\su\sd s2\su\sd |
  s2\su\sd s4 \su\sd |
  s2.\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s2\su\sd |
  s2.\su\sd |
  
  \barNumberCheck 41
  s2.\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s2\su\sd |
  s2.\su\sd |
  s4\su\sd s2\su\sd |
  s2.\su\sd |
  s4 s2\su |
}

forceBreaks = {
  s2. * 4 \break
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \pageBreak
  
  s2. * 5 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 5 \break
}

etudeFourNotes =
\score {
  \header {
    title = "Etude 4"
    composer = "Alexander Scriabin"
    opus = "Opus 42, No. 4"
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

etudeFourMidi =
\book {
  \bookOutputName "etude-op42-no4"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    % Put dynamic performer back to voice (see header-paper.ily).
    % Without this, the crescendos on the voices print a warning,
    % however the MIDI output suffers.
    \midi {
      \context {
        \Staff
        \remove "Dynamic_performer"
      }
      \context {
        \Voice
        \consists "Dynamic_performer"
      }
    }
  }
}
