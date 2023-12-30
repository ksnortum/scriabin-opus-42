%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

% Slur Shapes (ss)
ssa = \shape #'((1.75 . 0.75) (2 . 0) (0 . 0) (0 . 0)) \etc
ssb = \shape #'(
                 ((0 . 0) (0 . 2) (0 . 0) (0 . 0))
                 ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                 ) \etc
ssc = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . -1)) \etc
ssd = \shape #'(
                 ((0 . -1) (0 . 0) (0 . 0) (0 . 0.5))
                 ((0.5 . 2) (0.5 . 2) (0 . 2) (0 . 2))
                 ) \etc
sse = \shape #'((0 . 1) (0 . 1) (0 . 2) (0 . 0)) \etc
ssf = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 0)) \etc
ssg = \shape #'((0 . -2) (0 . -2) (0 . -2) (0 . -2)) \etc
ssh = \shape #'((-0.5 . -1) (-0.75 . 0.5) (0 . 1) (0 . 0.5)) \etc
ssi = \shape #'((0 . 4) (0 . 0) (0 . 0) (0 . 0)) \etc
ssj = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
ssk = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc

% Tie Shapes
tsa = \shape #'((-0.2 . 0.4) (0 . 0.4) (0.2 . 0.4) (0.4 . 0.4)) \etc
tsb = \shape #'((-0.2 . 0) (-0.1 . 0.2) (0 . 0.2) (0 . 0)) \etc
tsc = \shape #'((-0.5 . 0) (-0.5 . 0) (-0.5 . 0) (-0.5 . 0)) \etc


forceHShiftA = \once \override NoteColumn.force-hshift = -0.7
forceHShiftB = \once \override NoteColumn.force-hshift = -1.1
forceHShiftC = \once \override NoteColumn.force-hshift = -0.5

moveDotA = \tweak Dots.extra-offset #'(-1 . 0) \etc

moveAccidentalA = \override Accidental.extra-offset = #'(1.1 . 0)
moveAccidentalB = \override Accidental.extra-offset = #'(0.9 . 0)

moveTupletAOn = \override TupletNumber.X-offset = 5
moveTupletAOff = \revert TupletNumber.X-offset

%%% Music %%%

global = {
  \time 12/8
  \key cs \minor
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \voiceOne 
  \partial 4. gs'4. |
  g4.~-\ssc ( g4 cs8 fs,4.) gs |
  g4.~-\ssc ( g4 cs8 fs,4.) gs |
  gs4.~-\ssd ( gs4~ gs16 e'  gs,4. es8 fs fss |
  % Following SrcA
  gs4.)  e16( ds gs e <gs e'> <ds ds'>  a' gs ds' a <ds a'> <gs, gs'>) gs4. |
  a4.->~ a4~ a16 a a4. es |
  % Is gs4. correct, or gs4?  Both sources have 4. as the duration, but this
  % doesn't fit the measure, so I'm making it a duration of 4 (no dot).
  gs4 cs,8~-\ssb (  cs-. ds-. es-.  fs-_ gs-_ a-_  <bs, bs'>-_ <cs cs'>-_ 
    <fs fs'>-_ |
  \oneVoice <a cs fs a>2. <cs, ds a' cs>-> |
  <bs ds gs bs>4.) \voiceOne e16( ds gs e <bs' e> <ds, ds'>)  a'( gs ds' a
    <ds a'> <gs, gs'>)  gs4. |
    
  \barNumberCheck 9
  g4.~-\ssc ( g4 cs8 fs,4.) g |
  g4.~-\ssc ( g4 cs8 fs,4.) gs |
  gs4.~-\ssd ( gs4~ gs16 e' gs,4. es8 fs fss |
  gs4.)  <gs, e'>16( ds' gs e <gs e'> <ds ds'>  <ds a'> gs ds' a <ds a'>
    <gs, gs'>)  gs4. |
  a4.--~ a4~ a16 a a4. es |
  % Beat Two and three, staccato, SrcB
  gs4~ gs16 cs,-\tsb ~-\sse (  cs8 ds-. es-.  a-. b-. cs-.  d4-> cs8) |
  b4.~ b4~ b16 b b4. fss |
  as4~ as16 ds,-\tsa ~-\ssf (  ds8 es-. fss-.  gs-. as-. b-.  e4-> <ds, ds'>8)|
  
  \barNumberCheck 17
  <css css'>4. \oneVoice <as' css as'>~ q <gs css gs'> |
  <fss ds' fss>4 \voiceOne as,8-\tsc ~( as bs css  ds es fss  b4 as8) |
  <css, css'>4. \oneVoice <as' css as'>~ q <gs css gs'> |
  <fss ds' fss>4. fss,16([ fss' as, ds,] \staffDown fss as,) \staffUp
    as'-\ssi _([ as' ds, fss,] \staffDown as ds,) \staffUp <ds' ds'>4. |
  q8-- gs-- r  r \voiceOne <ds ds'> <bs bs'>  <ds ds'>( <cs cs'>) <e e'>
    <b' b'>-.( <as as'>-. <gs gs'>-.) |
  q4. <bs, bs'>8 <cs cs'> <css \single \moveAccidentalA css'>  <e e'>4(
    <ds ds'>8)  fs[ <cs cs'> r16 <b b'>] |
  q8-- e-> b'\rest  b\rest <b, b'> <gs gs'>  <b b'>( <a a'>) <cs cs'>  
    <gs' gs'>-.( <fs fs'>-. <e e'>-.) |
  q4. <gss, gss'>4( <as as'>8) <cs cs'>4.( <b b'>4) <ds ds'>8 |
  
  \barNumberCheck 25
  q8 gs b\rest  b\rest <ds, ds'> <bs bs'>  <ds ds'>( <cs cs'>) <e e'>
    <b' b'>-.( <as as'>-. <gs gs'>-.) |
  q4. <bs, bs'>8 <cs cs'> <css \single \moveAccidentalB css'>  <e e'>4( 
    <ds ds'>8)  fs <cs cs'> <b b'> |
  b'8 d, b'\rest  b\rest b fs  b( a) cs  e( d cs) |
  cs8 bs b\rest  b\rest b fs  b( a) cs  e( d cs) |
  cs8( bs) b\rest  b\rest cs fs,  cs'( bs) b\rest  b\rest cs fs, |
  cs'4( bs8) b4( as8) a4( gs8) gs16( e) e( gs) gs( e) |
  g16( e) e( g) g( e)  e( g) g( e) cs'( e,)  fs( e) e( fs) fs( e)
    gs( e) e( gs) gs( e) |
  g16( e) e( g) g( e)  e( g) g( e) cs'( e,)  fs( e) e( fs) fs( e)
    gs( e) e( gs) gs( e) |
    
  \barNumberCheck 33
  gs16( e) e( gs) gs( e)  e( gs) gs( e) gs( e')  gs,( e) e( gs) gs( e)
    es( ds) fs( ds) fss( ds) |
  gs16( ds) ds( gs) gs( ds)  e( ds) gs( e) <gs e'>( <ds ds'>)
    a'( gs) ds'( a) <ds a'>( <gs, gs'>)  gs( ds) ds( gs) gs( ds) |
  a'16( ds,) ds( a') a( ds,)  ds( a') a( ds,) ds( a')  a( d,) d( a') a( d,)
    d( es) es( d) d( es) |
  gs16( cs,) cs( gs') gs( cs,)  \oneVoice cs( gs) ds'( gs,) <cs es>( gs) 
    <cs fs>( fs,) <cs' gs'>( gs) <cs a'>( a)  <fs' bs>( bs,) <fs' cs'>( cs)
    <cs' fs>( fs,) |
  \voiceOne a'( fs) fs( a) a( fs)  fs( a) a( fs) fs( a)  cs,( a) a( cs) cs( a)
    a( cs) cs( a) a( cs) |
  cs( gs) gs( cs) cs( gs)  gs( cs) cs( gs) gs( cs)  e( bs) bs( e) e( bs)
    bs( ds) ds( bs) gs'( bs,) |
  \oneVoice <cs gs'>16--( gs) cs8-- r  r <cs gs'>16( gs) <cs es>( es,)  
    <cs' gs'>( gs) <cs fs>( fs,) <fs' a>( a,)  <fs' e'>( e) <fs ds'>( ds) 
    <fs cs'>( cs) |
  <e cs'>16([ cs) r cs ds( cs)]  <cs es>( es,) <cs' fs>( fs,) <b fss'>( fss)
    <b a'>([ a) r a <b gs'>( gs)]  b( gs) <b fs'>( fs) <b e>( e,) |
  
  \barNumberCheck 41
  <a e'>16( e) a8 r  r <a e'>16( e) <a cs>( cs,)  <a' e'>( e) <a d>( d,) 
    <d' fs>( fs,)  <d' cs'>( cs) <d b'>( b) <cs a'>( a) |
  <cs a'>16([ a) r a bs( a)]  <bs css>( css,) r8 <bs' ds>16( ds,)  
    <bs' fs'>( fs) r fs b([ fs)]  <cs' e>( e,) r8 <cs' gs'>16( gs) |
  <cs gs'>16--( gs) cs8-- r  r <cs gs'>16( gs) es-\ssh ( <cs' es>)  <cs gs'>->( gs)
    fs( <cs' fs>) <fs a>( a,)  e'( <fs e'!>->) <fs ds'>( ds) cs( <fs cs'>) |
  <e cs'>16->([ cs) r cs ds( cs)]  <cs es>( es,) fs( <cs' fs>) <b fss'>( fss)
    <b a'>([ a) r a <b gs'>( gs)]  b( gs) fs( <b fs'>) <b e>( e,) |
  % last two sixteenth notes slurred in SrcB
  <a e'>16( e) a8 r  r <a e'>16( e) cs( <a' cs>)  <a e'>( e) d( <a' d>) 
    <d fs>( fs,)  cs'( <d cs'>) <d b'>( b) a( <d a'>) |
  <cs a'>16([ a) r a bs( a)]  <gs e'>([ e) r e <gs ds'>( ds)]  <gs ds'>( ds)
    r8 r  r4 \voiceOne cs'16( gs) |
  b!16( fs) fs( b) b( fs)  fs( b) b( fs) fs'( b,)  b( fs) fs( b) b( fs)
    bs( fs) fs( bs) bs( fs) |
  ds'16( e,) e( ds') ds( gs,)  \oneVoice <e gs>( gs,) <e' as>( as,) 
    <ds bs'>( bs) <gs' cs>( cs,) ds( <gs ds'>) <gs e'>( e)  fss( <cs' fss>)
    <cs gs'>( gs) cs( <gs' cs>) |
    
  \barNumberCheck 49
  \voiceOne e'16( cs) cs( e) e( cs)  cs( e) e( cs) cs( e)  e( cs) cs( e) e( cs)
    cs( e) e( cs) cs( e) |
  gs16( cs,) cs( gs') gs( cs,)  \oneVoice fs,( <gs fs'>) <gs e'>( e) 
    ds( <gs ds'>)  <gs cs>( cs,) a( <cs a'>) <cs gs'>( gs)  fs( <gs fs'>)
    <gs e'>( e) cs( <gs' cs>) |
  \voiceOne b16( fs) fs( b) b( fs)  fs( b) b( fs) fs'( b,)
    b( fs) fs( b) b( fs)  bs( fs) fs( bs) bs( fs) |
  ds'16( e,) e( ds') ds( gs,)  \oneVoice <e gs>( gs,) <e' as>( as,) 
    <ds bs'>( bs) <gs' cs>( cs,) ds( <gs ds'>) <gs e'>( e)  fss( <cs' fss>)
    <cs gs'>( gs) cs( <gs' cs>) |
  \voiceOne e'16( cs) cs( e) e( cs)  cs( e) e( cs) cs( e)  e( cs) cs( e) e( cs)
    cs( e) e( cs) cs( e) |
  gs16( cs,) cs( gs') gs( cs,)  \oneVoice fs,( <gs fs'>) <gs e'>( e) 
    ds( <gs ds'>)  <gs cs>( cs,) a( <cs a'>) <cs gs'>( gs)  fs( <gs fs'>)
    <gs e'>( e) cs( <gs' cs>) |
  \voiceOne gs'16( cs,) cs( gs') gs( cs,)  fs,( <gs fs'>) <gs e'>( e) 
    ds( <gs ds'>)  <gs cs>( cs,) a( <cs a'>) <cs gs'>( gs)  fs( <gs fs'>)
    <gs e'>( e) cs( <gs' cs>) |
  \clef bass \oneVoice fs16( <gs fs'>) <gs e'>( e) cs( <gs' cs>)  fs( <gs fs'>)
    <gs e'>( e) cs( <gs' cs>)  fs( <gs fs'>) <gs e'>( e) cs( <gs' cs>)
    fs( <gs fs'>) <gs e'>( e) cs( <gs' cs>) |
  % Treble clef: SrcA.  This is certainly an omission in SrcB.
  \clef treble <gs cs gs'>1.\fermata |
  \bar "|."
}

rightHandMiddle = \relative {
  \voiceFour 
  \partial 4. cs'4-\ssa ( e8) |
  cs4-\ssa ( e8) cs4( e8) cs4-\ssa ( e8) cs4-\ssa ( e8) |
  cs4-\ssa ( e8) cs4( e8) cs4-\ssa ( e8) cs4-\ssa ( e8) |
  c4-\ssa ( e8) c4( e8) c4-\ssa ( e8) b4 ds8 |
  % Following SrcA
  <gs, ds'>4.  gs8. e'8\noBeam s16  ds8. a'8\noBeam s16  <gs, ds'>4. |
  b!4 ds8 b4 ds8 b4 d8 b4 d8 |
  a4 cs8 a4 cs8 a4 cs8 fs4 \forceHShiftA cs'8 |
  s1. |
  s4. gs,8. e'8\noBeam s16  ds8. a'8\noBeam s16 \voiceTwo cs,16 bs! ds cs fs 
    e |
  
  \barNumberCheck 9
  cs16 bs ds cs fs e  cs bs ds cs fs e  cs bs ds cs fs e  cs bs ds cs fs e |
  cs16 bs ds cs fs e  cs bs ds cs fs e  cs bs ds cs fs e  cs bs ds cs fs e |
  c16 b d c fs e  c b d c fs e  c b d c fs e  b a cs b e ds |
  bs16 ass cs bs e ds  gs,8. e'8\noBeam s16  ds8. a'8\noBeam s16  bs,16 ass!
    cs bs e ds |
  b!16 as cs b e ds  b as cs b e ds  b as cs b e d  b as cs b e d |
  a16 gs b a d cs  a gs b a d cs  a gs b a d cs  fs es! gs fs cs'8 |
  cs,16 bs ds cs fs es  cs bs ds cs fs es  cs bs ds cs fs e  cs bs ds cs fs e |
  b16 as cs b e ds  b as cs b e ds  b as cs b e ds  gs fss as gs ds8 |
  
  \barNumberCheck 17
  gs16 fss as gs b as  s4. s2. |
  s4. fss,16 ess gs fss b as  fss ess gs fss b as  ds css e ds gs fss |
  gs16 fss as gs b as  s4. s2. |
  s1. |
  s4. s8 gs4 gs \forceHShiftA cs8 cs4 \forceHShiftA b8 |
  b4( as8) gs4-\ssg ( \forceHShiftA fs8) fs4. fs |
  e4 s8 s e4 e \forceHShiftC a8 a4 \forceHShiftA gs8 |
  gs4 fss8 fss4. fss gs |
  
  \barNumberCheck 25
  gs4 s8 s gs4 gs \forceHShiftC cs8 cs4 \forceHShiftA b8 |
  b4( as8)  gs4-\ssg ( \forceHShiftC fs8)  fs4. fs |
  d4 s8 s4. <d fs>4 r8 r4 r8 |
  % fourth beat, quarter note rest in SrcB
  <ds fs>4 s8 s4. <d fs>4 r8 r4 r8 |
  <ds! fs>4 s8 s4. q4 s8 s4. |
  q4. q q4 <gs, ds'>8  <gs cs> q q |
  <g cs>8 q q  q q cs  <fs, cs'> q q  <gs cs> q q |
  <g cs>8 q q  q q cs  <fs, cs'> q q  <gs cs> q q |
  
  \barNumberCheck 33
  <gs c>8 q q  q q e'  <gs, c> q q  <e b'> <fs b> <fss b> |
  <gs bs>8 q q  gs8. e'8\noBeam s16  ds8. a'8\noBeam s16  <gs, bs>8 q q |
  <a b!>8 q q  q q q  q q q  <es b'> q q |
  gs8 gs gs  s4. s2. |
  <a' cs>8 q q  q q q  <cs, ds> q q  q q q |
  q8 q q  q q q  <e fs> q q <ds fs> q bs' |
  s1. * 2 |
  
  \barNumberCheck 41
  s1. * 5 |
  s2. s4. s4 <cs, e>8 |
  <b! ds>8 q q  q q fs'  <b, ds> q q  <bs ds> q q |
  ds8 ds ds  s4. s2. |
  
  \barNumberCheck 49
  <e' a>8 q q  q q q  q q q  q q q |
  gs8 gs gs s4. s2. |
  <b,, ds>8 q q  q q fs'  <b, ds> q q  <bs ds> q q |
  ds8 ds ds  s4. s2. |
  <e' a>8 q q  q q q  q q q  q q q |
  gs8 gs gs s4. s2. |
  <gs, cs>4. s s2. |
}

rightHandLower = \relative {
  \voiceTwo 
  \partial 4. a4. |
  a2. as4. a |
  a2. as4. a |
  a2. a4. a |
  s1. |
  es2. es4. a |
  es4. s s2. |
  s1. |
  s2. s4. \voiceFour \moveDotA a |
  
  \barNumberCheck 9
  \forceHShiftB \moveDotA a2. \moveDotA as4. \moveDotA a |
  \forceHShiftB \moveDotA a2. \moveDotA as4. \moveDotA a |
  s1. * 2 |
  \moveDotA es4. s s2. |
}

rightHand = {
  \global
  \set Score.tempoHideNote = ##t
  % Dotted quarter note in MM, SrcB
  \textMark \markup \tempo-markup "Affannato" #2 #1 84
  \tempo 4. = 84
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandMiddle 
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \partial 4. e16( gs e a, cs cs,) |
  e'16( g e a, cs cs,)  e'( g e a, cs cs,)  e'( fs e as, cs cs,)
    e'( gs e a, cs cs,) |
  e'16( g e a, cs cs,)  e'( g e a, cs cs,)  e'( fs e as, cs cs,)
    e'( gs e a, cs cs,) |
  e'16( gs e a, c c,)  e'( gs e a, c c,)  e'( gs e a, c c,)
    ds'( fs ds a b b,) |
  ds'16( gs ds gs, bs bs,)  bs([ gs' ds' bs] gs') r  bs,([ gs' ds' bs] bs') r
    ds,,( gs ds gs, bs bs,) |
  ds'16( a' ds, es, b'! b,!)  ds'( a' ds, es, b' b,)  d'( a' d, es, b' b,)
    d'( es d a b b,) |
  cs'16( gs' cs, es, a a,)  cs'( gs' cs, gs a a,)  cs'( fs cs fs, a a,)
    cs'( a' cs, fs, a a,) |
  d'16( a' d, fs, fs fs,)  d''( a' d, fs, fs fs,)  ds''( a' ds, fss, fss fss,)
    ds''( a' ds, fss, fss fss,) |
  ds''16( gs ds gs, gs gs,)  gs'([ ds' bs' gs] gs') r  gs,,([ ds' bs' bs] bs')
    r  e,,16( gs e a, cs cs,) |
    
  \barNumberCheck 9
  e'16( g e a, cs cs,)  e'( g e a, cs cs,)  e'( fs e as, cs cs,)
    e'( g e a, cs cs,) |
  e'16( g e a, cs cs,)  e'( g e a, cs cs,)  e'( fs e as, cs cs,)
    e'( gs e a, cs cs,) |
  e'16( gs e a, c c,)  e'( gs e a, c c,)  e'( gs e a, c c,)
    ds'( fs ds a b b,) |
  ds'16( gs ds gs, bs bs,)  bs([ gs' ds' bs] gs') r  bs,([ gs' ds' bs] bs') r
    ds,,( gs ds gs, bs bs,) |
  ds'16( a' ds, es, b' b,)  ds'( a' ds, es, b' b,)  d'( a' d, es, b' b,)
    d'( es d a b b,) |
  cs'16( gs' cs, es, a a,)  cs'( gs' cs, gs a a,)  cs'( fs cs fs, a a,)
    cs'( a' cs, fs, a a,) |
  es''16( b' es, fss, cs' cs,)  es'( b' es, fss, cs' cs,)
    e'( b' e, fss, cs' cs,)  e'( fss e b cs cs,) |
  ds'16( as' ds, fss, b b,)  ds'( as' ds, as b b,)  ds'( gs ds gs, b b,)
    gs''( css gs css, ds b) |
    
  \barNumberCheck 17
  gs'16( e' gs, as, as as,)  gs''( e' gs, as, as as,)  e''( css' e, as, as as,)
    e''( css' e, as, as as,) |
  ds'16( ds' fss, as, ds ds,)  as'( ds as ds, ds ds,)
    as''( ds as ds, as' fss')  fss( as fss as, ds ds,) |
  gs'16( e' gs, as, as as,)  gs''( e' gs, as, as as,)  e''( css' e, as, as as,)
    e''( css' e, as, as as,) |
  ds'16( ds' fss, as, ds ds,)  r4 \staffUp b'''8\rest \staffDown r4 \staffUp
    b8\rest \staffDown fss,16( fss' as, fss as, ds,) |
  e16( bs' gs' e bs' gs')  gs-\ssj ( bs, e, gs bs, e,)  e( cs' gs' e cs' gs')
    gs-\ssj ( cs, e, gs cs, e,) |
  fs16( cs' e fs cs' e)  e( as, fs e as, fs)  b,( fs' cs' b fs' ds')
    ds-\ssk ( fs, b, ds fs, b,) |
  cs16( gs' e' cs gs' e')  e-\ssk ( gs, cs, e gs, cs,)  cs( a' e' cs a' e')
    e-\ssj ( a, cs, e a, cs,) |
  ds16(as' cs ds as' cs)  cs( fss, ds cs fss, ds)  gs,( e' as gs e' as)
    b( ds, gs, ds b' gs') |
  
  \barNumberCheck 25
  e,16( bs' gs' e bs' gs')  gs-\ssj ( bs, e, gs bs, e,)  e( bs' gs' e cs' gs')
    gs-\ssj ( cs, e, gs bs, e,) |
  fs16( cs' e fs cs' e)  e( as, fs e as, fs)  b,( fs' cs' b fs' ds')
    ds-\ssk ( fs, b, ds fs, b,) |
  fs'16( d' gs fs d' gs)  gs-\ssj ( d fs, gs d fs,)  fs( d' a' fs e' a)
    a-\ssj ( d, fs, a d, fs,) |
  gs16( ds'! gs gs ds' gs)  gs( d fs, gs d fs,)  fs( d' a' fs e' a)
    a-\ssj ( d, fs, a d, fs,) |
  gs16( ds'! gs gs ds' gs)  a( ds, gs, a ds, gs,)  gs16( ds' gs gs ds' gs)
    a( ds, gs, a ds, gs,) |
  gs'16( ds gs, gs' ds gs,)  a'( ds, gs, as' ds, gs,) b'( ds, gs, bs' fs gs,)
    \tuplet 2/3 { <a e' a>4*1/2 <cs,, cs'> } |
  \omit TupletBracket
  \tuplet 2/3 4. {
    <a'' e' a>4*1/2 <cs,, cs'> <a'' e' a> <cs,, cs'> <as'' e' as> <cs,, cs'>
      <a'' e' a> <cs,, cs'> |
    <a'' e' a>4*1/2 <cs,, cs'> <a'' e' a> <cs,, cs'> <as'' e' as> <cs,, cs'>
      <a'' e' a> <cs,, cs'> |
    
    \barNumberCheck 33
    <a'' e' a>4*1/2 <c,, c'> <a'' e' a> <c,, c'> <a'' e' a> <c,, c'>
      <a'' ds a'> <c,, c'> |
    <gs'' ds' gs>4*1/2 <bs,, bs'> <gs'' ds'> <bs,, bs'> <gs'' ds' gs> 
      <bs,, bs'> <gs'' ds'> <bs,, bs'> |
    <es' ds' es>4*1/2 <b,! b'!> <es' ds' es> <b, b'> <es' d' es> <b, b'>
      <a'' d a'> <b,, b'> |
    <es' cs' es>4*1/2 <a,, a'> <gs'' cs gs'> <a,, a'> <fs'' cs' fs> <a,, a'>
      fs''' <a,, a'> |
    <fs' d' a'>4*1/2 <fs, fs'>-> <d' d'>-> <fs,fs'>-> <fss' ds' a'>
      <fss, fss'>-> <ds' ds'>-> <fss, fss'>-> |
    <gs' ds' gs>4*1/2 <gs, gs'> <ds' ds'> <gs, gs'> <gs' fs' bs> <gs, gs'>
      <gs' gs'> <gs, gs'> |
  }
  a'16( es' cs' a es' cs')  cs( es, a, cs es, a,)  a-\ssj ( fs' cs' a fs' cs')
    cs-\ssj ( fs, a, cs fs, a,) |
  b16( fs' a b fs' a)  a( ds, b a ds, b)  e,( b' fs' e b' gs')
    gs( b, e, gs b, e,) |
    
  \barNumberCheck 41
  fs16( cs' a' fs cs' a')  a-\ssj ( cs, fs, a cs, fs,)  fs( d' a' fs d' a')
    a-\ssj ( d, fs, a d, fs,) |
  gs16( ds'! fs gs ds' fs)  fs( bs, gs fs bs, gs)  cs,( a' ds cs a' ds)
    e( gs, cs, gs e' cs') |
  a,16( es' cs' a es' cs')  cs( es, a, cs es, a,)  a( fs' cs' a fs' cs')
    cs-\ssj ( fs, a, cs fs, a,) |
  b16( fs' a b fs' a)  a( ds, b a ds, b)  e,( b' fs' e b' gs')
    gs( b, e, gs b, e,) |
  fs16( cs' a' fs cs' a')  a( cs, fs, a cs, fs,)  fs( d' a' fs d' a')
    a( d, fs, a d, fs,) |
  gs16( ds'! fs gs ds' fs)  fs( bs, gs fs bs, gs)  cs,( gs' e' cs gs' e')
    e-\ssk ( gs, cs, e gs, cs,) |
  <a' ds fs>4 <cs,, cs'>8 <a' a'>4. \tuplet 2/3 4. { 
    <a' ds fs>4*1/2 <cs,, cs'> <gs'' ds' fs> <cs,, cs'> | }
  % Accents, SrcB
  <gs'' e'>4 <cs,, cs'>8-> \tuplet 2/3 4. { <gs' gs'>4*1/2-> <cs, cs'> 
    <gs'' e' gs> <cs,, cs'> <gs'' e' cs'> <cs,, cs'> | }
  
  \barNumberCheck 49
  <fss' e' cs'>4 <cs, cs'>8 <fss fss'>4. \moveTupletAOn \tuplet 2/3 4. { 
    <e'' fss a cs e>4*1/2 <cs,, cs'> <e'' fss a cs e> <cs,, cs'> | } 
    \moveTupletAOff
  <e'' gs cs e>4 <cs,, cs'>8 <gs' gs'>4. <e'' cs' gs'> <gs cs>4 <gs, e' gs>8 |
  <a ds fs>4 <cs,, cs'>8 <a' a'>4. \tuplet 2/3 4. { <a' ds fs>4*1/2 <cs,, cs'>
    <gs'' ds' fs> <cs,, cs'> | }
  <gs'' e'>4 <cs,, cs'>8 \tuplet 2/3 4. { <gs' gs'>4*1/2 <cs, cs'> 
    <gs'' e' gs> <cs,, cs'> <gs'' e' cs'> <cs,, cs'> | }
  <fss' e' cs'>4 <cs, cs'>8 <fss fss'>4. \moveTupletAOn \tuplet 2/3 4. { 
    <e'' fss a cs e>4*1/2 <cs,, cs'> <e'' fss a cs e> <cs,, cs'> | }
    \moveTupletAOff
  <e'' gs cs e>4 <cs,, cs'>8 <gs' gs'>4. <e'' cs' gs'> <gs cs>4 <gs, e' gs>8 |
  <e' gs cs e>4 <cs,, cs'>8 <gs' gs'>4. e'' <gs, cs> |
  <cs, gs'>1. |
  \acciaccatura { <cs, cs'>8 } <cs' gs' cs>1.\fermata |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  \partial 4. s4.\pp\< <>\! |
  s16 s\> s4 s4 s8\! s4. s16 s\< s4 <>\! |
  s16 s\> s4 s4 s8\! s4. s16 s\< s4 <>\! |
  s2. s4. s16 s\< s4 <>\! |
  s4.-\tweak Y-offset -1 \> s4.-\tweak Y-offset -1 \p s2. |
  s4. s4.\cresc s2. |
  s1. |
  s2.\f s\dim |
  s4. s4 s8\> s4 s8\! s4.-\tweak X-offset 0 -\tweak Y-offset -2 \ppp |
  
  \barNumberCheck 9
  s1. * 5 |
  s2. s-\tweak Y-offset -1.5 \cresc |
  s1. * 2 |
  
  \barNumberCheck 17
  s1.\f |
  s1. * 3 |
  s8\f\> s4\! s4. s8 s4-\tweak Y-offset 1.5 \< s4.\! |
  s1. * 3 |
  
  \barNumberCheck 25
  s1. * 2 |
  s1.\p |
  s4. s8 \tag layout { s4^\crescPocoAPoco } \tag midi { s4\cresc } s2. |
  s1. |
  s2. s4. s4\f\< s8\! |
  s2.\> s4.\! s\< |
  s2.-\tweak Y-offset -1 \> s\! |
  
  \barNumberCheck 33
  s4. s4 s8-\tweak Y-offset -1 \cresc s2. |
  s1. |
  s1.-\tweak Y-offset -1 \cresc |
  s1. |
  s1.\ff |
  s1.-\tweak Y-offset -1 \dim |
  s8\f\> s\! s  s4 s16\< s\!  s\> s\! s8 s-\tweak Y-offset 1.5 \<  s4.\! |
  s4. s8 s8.\< s16\! s2. |
  
  \barNumberCheck 41
  s8\> s4\! s4. s2. |
  s1. * 5 |
  s1.-\tweak Y-offset -2 \f |
  s2. s16 s8.\< s8 s4. |
  
  \barNumberCheck 49
  s1.\ff |
  s2. s4 s8\> s4. |
  s1.\f |
  s2. s16 s8.\< s8 s4. |
  s1.\ff |
  s2. s4 s8\> s4. <>\! |
  s8 s4\dim s4. s2. |
  s1.\p\dim |
  s1.\pp |
}

% MIDI only 
pedal = {
  \partial 4. s4.\sd |
  \repeat unfold 8 { s4.\su\sd s\su\sd s\su\sd s\su\sd | }
  
  \barNumberCheck 9
  s1.\su |
  s1. * 2 |
  s4. s\sd s\su\sd s\su |
  s1. * 4 |
  
  \barNumberCheck 17
  s4.\sd s\su\sd s\su\sd s\su\sd |
  \repeat unfold 7 { s4.\su\sd s\su\sd s\su\sd s\su\sd | }
  
  \barNumberCheck 25
  \repeat unfold 8 { s4.\su\sd s\su\sd s\su\sd s\su\sd | }
  
  \barNumberCheck 33
  \repeat unfold 8 { s4.\su\sd s\su\sd s\su\sd s\su\sd | }
  
  \barNumberCheck 41
  \repeat unfold 8 { s4.\su\sd s\su\sd s\su\sd s\su\sd | }
  
  \barNumberCheck 49
  \repeat unfold 8 { s4.\su\sd s\su\sd s\su\sd s\su\sd | }
  \grace { s8\su\sd } s1. <>\su |
}

forceBreaks = {
  \partial 4. s4.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\pageBreak
  
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\pageBreak
  
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\pageBreak
  
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\pageBreak
  
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\pageBreak
  
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
  s1.\noBreak s1.\break\noPageBreak
}

etudeFiveNotes =
\score {
  \header {
    title = "Etude 5"
    composer = "Alexander Scriabin"
    opus = "Opus 42, No. 5"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing.basic-distance = 12
    \override StaffGrouper.staff-staff-spacing.stretchability = 20
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

etudeFiveMidi =
\book {
  \bookOutputName "etude-op42-no5"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
