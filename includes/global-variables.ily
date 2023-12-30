\version "2.24.0"

%
% Scheme functions
%

#(define-markup-command (tempo-markup layout props tempo dur dots mm) 
                        (markup? integer? integer? markup?)
  "\tempo emulator, but with no parens around MM"
  ; tempo = the text of the tempo, so Allegro, Lento, etc.
  ; dur   = log 2 of the duration, so 0 = whole, 1 = half, 2 = quarter, ..."
  ; dots  = the number of dots after the duration
  ; mm    = the metronome mark, so 100 or 63-76
  ; example: \textMark \markup \tempo-markup Vivace #2 #1 63-76 c'1
  (interpret-markup layout props
    (let ((dura (ly:make-duration dur dots)))
      #{\markup {
        \hspace #1.5 \bold { #tempo \teeny "M.M." }
        \raise #0.4 \tiny \note { #dura } #UP
        \small { "=" #mm }
      }#})))

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = {
  \undo \omit TupletNumber
  \undo \omit TupletBracket
}

insideSlur = \tweak avoid-slur #'inside \etc

pocoCresc = #(make-music 'CrescendoEvent 'span-direction START 'span-type 
                         'text 'span-text "poco cresc.")

subdivideBeamsEighths.68 = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 3,3
}

subdivideBeamsEighths.44 = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 2,2,2,2
}

subdivideBeamsOff = \set subdivideBeams = ##f

eighthsInTwos.34 = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1
}

%
% Markup
%

crescPocoAPoco = 
  \markup \large \italic \whiteout \pad-markup #0.5 "cresc. poco a poco"
ms = \markup \large \italic m.s.
legatissimo = \markup \large \italic legatissimo
legato = \markup \large \italic legato
marcatoMarkup = \markup \large \italic marcato
cantabile = \markup \large \italic cantabile
smorz = \markup \large \italic smorz.
pochisCresc = \markup \large \italic "pochis. cresc."
pocoAccel = \markup \large \italic "poco accel."
poco = \markup \large \italic poco
accel = \markup \large \italic accel.
accelerando = \markup \large \italic accelerando
rit = \markup \large \italic rit.
ppDolciss = \markup { \dynamic pp \large \italic dolciss. }
fRubato = \markup { \dynamic f \large \italic rubato }
