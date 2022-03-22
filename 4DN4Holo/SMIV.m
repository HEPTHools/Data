L[Q] = {{{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
     {{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
     {{0, 0, -1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, -1, 0, 0}}, 
     {{0, 0, 0, -1}, {0, 0, -1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}}}
 
L[Qtilde] = {{{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
     {{0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
     {{0, 0, -1, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
     {{0, 0, 0, -1}, {0, 0, 1, 0}, {0, -1, 0, 0}, {1, 0, 0, 0}}}
 
L[SMIV] = {{{-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}}, 
     {{0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}}, 
     {{0, 1, 0, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, 0, 1, 0}}, 
     {{0, 0, 0, 1}, {0, -1, 0, 0}, {0, 0, 1, 0}, {-1, 0, 0, 0}}}
 
L[RepNumber_] := BC4Boson[NegToOnePosToTwo[RepNumber], 
      Digit[Abs[RepNumber], 5], Digit[Abs[RepNumber], 4], 
      Digit[Abs[RepNumber], 3]][BC4Color[2, Digit[Abs[RepNumber], 2], 
       Digit[Abs[RepNumber], 1], 1][L[TildeIndex[[Digit[Abs[RepNumber], 
         0]]]]]]
 
BC4Boson[ni_, ai_, mu_, Ai_][L_] := 
    Table[Sum[BC4[[If[EvenQ[ni], 2, 1],ai,mu,Ai]][[ii,ji]]*L[[Ii,ji,jhat]], 
      {ji, 1, 4}], {Ii, 1, 4}, {ii, 1, 4}, {jhat, 1, 4}]
 
BC4 = {{{{{{-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}}, 
        {{0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 0, -1, 0}, {0, -1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}}, 
        {{-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}}, 
        {{0, 0, 0, -1}, {0, 0, -1, 0}, {-1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, -1}, {-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, -1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}, {0, -1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}}}, 
       {{{-1, 0, 0, 0}, {0, 0, -1, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, -1, 0, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, -1, 0, 0}, {0, 0, -1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, -1}, {0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 0, -1, 0}, {0, -1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}}}}, 
      {{{{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}}, 
        {{0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 0, 1, 0}, {0, -1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}}, 
        {{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}}, 
        {{0, 0, 0, 1}, {0, 0, 1, 0}, {-1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, 1}, {1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, -1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}, {0, -1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}}}, 
       {{{1, 0, 0, 0}, {0, 0, 1, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 1, 0, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 1, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 1, 0, 0}, {0, 0, -1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, 1}, {0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{1, 0, 0, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 0, 1}, {1, 0, 0, 0}, {0, 0, -1, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}}}}, 
      {{{{1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}}, 
        {{0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 0, -1, 0}, {0, 1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}}, 
        {{1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}}, 
        {{0, 0, 0, 1}, {0, 0, -1, 0}, {1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, -1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}, {0, -1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}}}, 
       {{{1, 0, 0, 0}, {0, 0, -1, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 1, 0, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, -1, 0, 0}, {0, 0, 1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, 1}, {0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {0, 0, -1, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{1, 0, 0, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 0, 1, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}}}}, 
      {{{{-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}}, 
        {{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}}, 
        {{-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}}, 
        {{0, 0, 0, -1}, {0, 0, 1, 0}, {1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, -1}, {1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, -1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}, {0, -1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}}}, 
       {{{-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, -1, 0, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, -1, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 1, 0, 0}, {0, 0, 1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, -1}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {0, 0, 1, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 0, -1}, {1, 0, 0, 0}, {0, 0, 1, 0}, {0, -1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}}}}, 
      {{{{1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}}, 
        {{0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 0, -1, 0}, {0, -1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}}, 
        {{1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}}, 
        {{0, 0, 0, 1}, {0, 0, -1, 0}, {-1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, 1}, {-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, -1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}, {0, -1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}}}, 
       {{{1, 0, 0, 0}, {0, 0, -1, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 1, 0, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, -1, 0, 0}, {0, 0, -1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, 1}, {0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{1, 0, 0, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 0, -1, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}}}}, 
      {{{{-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}}, 
        {{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 0, 1, 0}, {0, -1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}}, 
        {{-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}}, 
        {{0, 0, 0, -1}, {0, 0, 1, 0}, {-1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, -1}, {1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, -1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}, {0, -1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}}}, 
       {{{-1, 0, 0, 0}, {0, 0, 1, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, -1, 0, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, -1, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 1, 0, 0}, {0, 0, -1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, -1}, {0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 0, -1}, {1, 0, 0, 0}, {0, 0, -1, 0}, {0, -1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}}}}, 
      {{{{-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}}, 
        {{0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 0, -1, 0}, {0, 1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}}, 
        {{-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}}, 
        {{0, 0, 0, -1}, {0, 0, -1, 0}, {1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, -1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}, {0, -1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}}}, 
       {{{-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, -1, 0, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, -1, 0, 0}, {0, 0, 1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, -1}, {0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {0, 0, -1, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 0, 1, 0}, {0, -1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}}}}, 
      {{{{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}}, 
        {{0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}}, 
        {{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}}, 
        {{0, 0, 0, 1}, {0, 0, 1, 0}, {1, 0, 0, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, 1}, {1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, -1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}, {0, -1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}}}, 
       {{{1, 0, 0, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 1, 0, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 1, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 1, 0, 0}, {0, 0, 1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}}, 
        {{0, 0, 0, 1}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, -1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}, {-1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {0, 0, 1, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}}, 
        {{1, 0, 0, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}, {0, 0, -1, 0}}, 
        {{0, 0, 0, 1}, {1, 0, 0, 0}, {0, 0, 1, 0}, {0, -1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}}}}}, 
     {{{{{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
        {{0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
        {{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}, 
        {{0, 0, 0, 1}, {0, 0, 1, 0}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, 1}, {1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}}}, 
       {{{1, 0, 0, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 1, 0, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 1, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 1, 0, 0}, {0, 0, 1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, 1}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {0, 0, 1, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{1, 0, 0, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 0, 1}, {1, 0, 0, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}}}}, 
      {{{{-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
        {{0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 0, -1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
        {{-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}, 
        {{0, 0, 0, -1}, {0, 0, -1, 0}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}, {0, 1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}}}, 
       {{{-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, -1, 0, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, -1, 0, 0}, {0, 0, 1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, -1}, {0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}, {1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {0, 0, -1, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}}}}, 
      {{{{-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}}, 
        {{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 0, 1, 0}, {0, -1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}}, 
        {{-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
        {{0, 0, 0, -1}, {0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, -1}, {1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}, {0, 1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}}}, 
       {{{-1, 0, 0, 0}, {0, 0, 1, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, -1, 0, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, -1, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 1, 0, 0}, {0, 0, -1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, -1}, {0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}, {1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 0, -1}, {1, 0, 0, 0}, {0, 0, -1, 0}, {0, 1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}}}}, 
      {{{{1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}}, 
        {{0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 0, -1, 0}, {0, -1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}}, 
        {{1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
        {{0, 0, 0, 1}, {0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, 1}, {-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}, {0, 1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}}}, 
       {{{1, 0, 0, 0}, {0, 0, -1, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 1, 0, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, -1, 0, 0}, {0, 0, -1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, 1}, {0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{1, 0, 0, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}}}}, 
      {{{{-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
        {{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
        {{-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}, 
        {{0, 0, 0, -1}, {0, 0, 1, 0}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, -1}, {1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}}}, 
       {{{-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, -1, 0, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, -1, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 1, 0, 0}, {0, 0, 1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, -1}, {0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}, {1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {0, 0, 1, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 0, -1}, {1, 0, 0, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}}}}, 
      {{{{1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
        {{0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 0, -1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
        {{1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}, 
        {{0, 0, 0, 1}, {0, 0, -1, 0}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}, {0, 1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}}}, 
       {{{1, 0, 0, 0}, {0, 0, -1, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 1, 0, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, -1, 0, 0}, {0, 0, 1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, 1}, {0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {0, 0, -1, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{1, 0, 0, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}}}}, 
      {{{{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}}, 
        {{0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 0, 1, 0}, {0, -1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}}, 
        {{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
        {{0, 0, 0, 1}, {0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, 1}, {1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}, {0, 1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}}}, 
       {{{1, 0, 0, 0}, {0, 0, 1, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 1, 0, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 1, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}}, 
        {{0, 0, 0, 1}, {0, 1, 0, 0}, {0, 0, -1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, 1, 0}, {1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, 1}, {0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{1, 0, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}}, 
        {{0, 1, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 1, 0, 0}, {0, 0, 1, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{1, 0, 0, 0}, {0, 0, 0, 1}, {0, -1, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 0, 1}, {1, 0, 0, 0}, {0, 0, -1, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 1, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}}}}, 
      {{{{-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}}, 
        {{0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, 0, -1, 0}, {0, -1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, 1}}, 
        {{-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
        {{0, 0, 0, -1}, {0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, -1}, {-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}, {0, 1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}}}, 
       {{{-1, 0, 0, 0}, {0, 0, -1, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, -1, 0, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}}, 
        {{0, 0, 0, -1}, {0, -1, 0, 0}, {0, 0, -1, 0}, {1, 0, 0, 0}}}, 
       {{{0, 0, -1, 0}, {-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, 0, 1}}, 
        {{0, 0, 0, -1}, {0, -1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 1, 0}}, 
        {{-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}, {0, 1, 0, 0}}, 
        {{0, -1, 0, 0}, {0, 0, 0, -1}, {0, 0, -1, 0}, {1, 0, 0, 0}}}, 
       {{{0, -1, 0, 0}, {0, 0, -1, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}}, 
        {{-1, 0, 0, 0}, {0, 0, 0, -1}, {0, -1, 0, 0}, {0, 0, 1, 0}}, 
        {{0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 0, -1, 0}, {0, 1, 0, 0}}, 
        {{0, 0, -1, 0}, {0, -1, 0, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}}}}}}
 
NegToOnePosToTwo[number_] := (Abs[number]/number + 1)*(1/2) + 1
 
Digit[Num_, Pow_] := Floor[Mod[Num, 10^(Pow + 1)]/10^Pow]
 
Pow[0][NCol_] := NCol/2
 
Pow[1][NCol_] := (NCol + 1)/2
 
Pow[2][NCol_] := NCol/2
 
Pow[3][NCol_] := (NCol - 1)/2
 
Pow[4][NCol_] := (NCol - 2)/2
 
BC4Color[ni_, ai_, mu_, Ai_][L_] := 
    Table[Sum[BC4[[If[EvenQ[ni], 2, 1],ai,mu,Ai]][[Ii,Ji]]*L[[Ji,ii,jhat]], 
      {Ji, 1, 4}], {Ii, 1, 4}, {ii, 1, 4}, {jhat, 1, 4}]
 
TildeIndex = {Q, Qtilde}
 
R[SMIV] = {{{-1, 0, 0, 0}, {0, 0, 1, 0}, {0, 1, 0, 0}, {0, 0, 0, -1}}, 
     {{0, -1, 0, 0}, {0, 0, 0, 1}, {-1, 0, 0, 0}, {0, 0, 1, 0}}, 
     {{0, 0, 1, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, {0, 1, 0, 0}}, 
     {{0, 0, 0, -1}, {0, -1, 0, 0}, {0, 0, 1, 0}, {1, 0, 0, 0}}}
 
V[SMIV] = {{{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, -I, 0, 0}, {I, 0, 0, 0}, {0, 0, 0, -I}, {0, 0, I, 0}}, 
      {{0, 0, I, 0}, {0, 0, 0, -I}, {-I, 0, 0, 0}, {0, I, 0, 0}}, 
      {{0, 0, 0, -I}, {0, 0, -I, 0}, {0, I, 0, 0}, {I, 0, 0, 0}}}, 
     {{{0, I, 0, 0}, {-I, 0, 0, 0}, {0, 0, 0, I}, {0, 0, -I, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, I}, {0, 0, I, 0}, {0, -I, 0, 0}, {-I, 0, 0, 0}}, 
      {{0, 0, I, 0}, {0, 0, 0, -I}, {-I, 0, 0, 0}, {0, I, 0, 0}}}, 
     {{{0, 0, -I, 0}, {0, 0, 0, I}, {I, 0, 0, 0}, {0, -I, 0, 0}}, 
      {{0, 0, 0, -I}, {0, 0, -I, 0}, {0, I, 0, 0}, {I, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, I, 0, 0}, {-I, 0, 0, 0}, {0, 0, 0, I}, {0, 0, -I, 0}}}, 
     {{{0, 0, 0, I}, {0, 0, I, 0}, {0, -I, 0, 0}, {-I, 0, 0, 0}}, 
      {{0, 0, -I, 0}, {0, 0, 0, I}, {I, 0, 0, 0}, {0, -I, 0, 0}}, 
      {{0, -I, 0, 0}, {I, 0, 0, 0}, {0, 0, 0, -I}, {0, 0, I, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}}}
 
Vtilde[SMIV] = {{{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, -I, 0}, {0, 0, 0, -I}, {I, 0, 0, 0}, {0, I, 0, 0}}, 
      {{0, I, 0, 0}, {-I, 0, 0, 0}, {0, 0, 0, -I}, {0, 0, I, 0}}, 
      {{0, 0, 0, I}, {0, 0, -I, 0}, {0, I, 0, 0}, {-I, 0, 0, 0}}}, 
     {{{0, 0, I, 0}, {0, 0, 0, I}, {-I, 0, 0, 0}, {0, -I, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, I}, {0, 0, -I, 0}, {0, I, 0, 0}, {-I, 0, 0, 0}}, 
      {{0, -I, 0, 0}, {I, 0, 0, 0}, {0, 0, 0, I}, {0, 0, -I, 0}}}, 
     {{{0, -I, 0, 0}, {I, 0, 0, 0}, {0, 0, 0, I}, {0, 0, -I, 0}}, 
      {{0, 0, 0, -I}, {0, 0, I, 0}, {0, -I, 0, 0}, {I, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, -I, 0}, {0, 0, 0, -I}, {I, 0, 0, 0}, {0, I, 0, 0}}}, 
     {{{0, 0, 0, -I}, {0, 0, I, 0}, {0, -I, 0, 0}, {I, 0, 0, 0}}, 
      {{0, I, 0, 0}, {-I, 0, 0, 0}, {0, 0, 0, -I}, {0, 0, I, 0}}, 
      {{0, 0, I, 0}, {0, 0, 0, I}, {-I, 0, 0, 0}, {0, -I, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}}}
 
VPM[-1][SMIV] = {{{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, -I, 0, 0}, {I, 0, 0, 0}, {0, 0, 0, -I}, {0, 0, I, 0}}, 
      {{0, 0, I, 0}, {0, 0, 0, -I}, {-I, 0, 0, 0}, {0, I, 0, 0}}, 
      {{0, 0, 0, -I}, {0, 0, -I, 0}, {0, I, 0, 0}, {I, 0, 0, 0}}}, 
     {{{0, I, 0, 0}, {-I, 0, 0, 0}, {0, 0, 0, I}, {0, 0, -I, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, I}, {0, 0, I, 0}, {0, -I, 0, 0}, {-I, 0, 0, 0}}, 
      {{0, 0, I, 0}, {0, 0, 0, -I}, {-I, 0, 0, 0}, {0, I, 0, 0}}}, 
     {{{0, 0, -I, 0}, {0, 0, 0, I}, {I, 0, 0, 0}, {0, -I, 0, 0}}, 
      {{0, 0, 0, -I}, {0, 0, -I, 0}, {0, I, 0, 0}, {I, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, I, 0, 0}, {-I, 0, 0, 0}, {0, 0, 0, I}, {0, 0, -I, 0}}}, 
     {{{0, 0, 0, I}, {0, 0, I, 0}, {0, -I, 0, 0}, {-I, 0, 0, 0}}, 
      {{0, 0, -I, 0}, {0, 0, 0, I}, {I, 0, 0, 0}, {0, -I, 0, 0}}, 
      {{0, -I, 0, 0}, {I, 0, 0, 0}, {0, 0, 0, -I}, {0, 0, I, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}}}
 
VPM[1][SMIV] = {{{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}}, 
     {{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}}, 
     {{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}}, 
     {{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, 
      {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}}}
 
VtildePM[-1][SMIV] = {{{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}}, {{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}}, {{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}}, {{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}}}
 
VtildePM[1][SMIV] = {{{{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, -I, 0}, {0, 0, 0, -I}, {I, 0, 0, 0}, 
       {0, I, 0, 0}}, {{0, I, 0, 0}, {-I, 0, 0, 0}, {0, 0, 0, -I}, 
       {0, 0, I, 0}}, {{0, 0, 0, I}, {0, 0, -I, 0}, {0, I, 0, 0}, 
       {-I, 0, 0, 0}}}, {{{0, 0, I, 0}, {0, 0, 0, I}, {-I, 0, 0, 0}, 
       {0, -I, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, 0, I}, {0, 0, -I, 0}, {0, I, 0, 0}, 
       {-I, 0, 0, 0}}, {{0, -I, 0, 0}, {I, 0, 0, 0}, {0, 0, 0, I}, 
       {0, 0, -I, 0}}}, {{{0, -I, 0, 0}, {I, 0, 0, 0}, {0, 0, 0, I}, 
       {0, 0, -I, 0}}, {{0, 0, 0, -I}, {0, 0, I, 0}, {0, -I, 0, 0}, 
       {I, 0, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}, {{0, 0, -I, 0}, {0, 0, 0, -I}, {I, 0, 0, 0}, 
       {0, I, 0, 0}}}, {{{0, 0, 0, -I}, {0, 0, I, 0}, {0, -I, 0, 0}, 
       {I, 0, 0, 0}}, {{0, I, 0, 0}, {-I, 0, 0, 0}, {0, 0, 0, -I}, 
       {0, 0, I, 0}}, {{0, 0, I, 0}, {0, 0, 0, I}, {-I, 0, 0, 0}, 
       {0, -I, 0, 0}}, {{0, 0, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}, 
       {0, 0, 0, 0}}}}
 
ZetaGen[SMIV] = {{{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
     {{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, {{0, 0, 1, 
     0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 1, 0, 0}}, {{0, 0, 0, -1}, {0, 0, 
     -1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}}}
 
ZetatildeGen[SMIV] = {{{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 
     1}}, {{0, 0, -1, 0}, {0, 0, 0, -1}, {1, 0, 0, 0}, {0, 1, 0, 0}}, {{0, 1, 
     0, 0}, {-1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, {{0, 0, 0, 1}, {0, 
     0, -1, 0}, {0, 1, 0, 0}, {-1, 0, 0, 0}}}
 
Holoraumy[SMIV] = {{{0, 0, 0, -1}, {0, 0, -1, 0}, {0, 1, 0, 0}, 
      {1, 0, 0, 0}}, {{0, 0, 1, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 1, 0, 
     0}}, {{0, 1, 0, 0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}}, {{0, 
     -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, 
     {{0, 0, 1, 0}, {0, 0, 0, -1}, {-1, 0, 0, 0}, {0, 1, 0, 0}}, {{0, 0, 0, 
     1}, {0, 0, 1, 0}, {0, -1, 0, 0}, {-1, 0, 0, 0}}, 
     {{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, {{-1, 0, 0, 
     0}, {0, -1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}}, 
     {{0, 0, 0, 1}, {0, 0, 1, 0}, {0, -1, 0, 0}, {-1, 0, 0, 0}}, {{0, 0, -1, 
     0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, -1, 0, 0}}, 
     {{0, -1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, -1}, {0, 0, 1, 0}}, {{0, 1, 0, 
     0}, {-1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, -1, 0}}, 
     {{0, 0, -1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, -1, 0, 0}}, {{0, 0, 0, 
     -1}, {0, 0, -1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}}, 
     {{-1, 0, 0, 0}, {0, -1, 0, 0}, {0, 0, -1, 0}, {0, 0, 0, -1}}, {{1, 0, 0, 
     0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}}
 
Monodromy[SMIV] = {{{0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}}, 
     {{0, 0, 1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
     {{0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}, {{0, 1, 0, 0}, 
     {1, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 0}}, {{0, 0, 1, 0}, {0, 0, 0, 1}, 
      {1, 0, 0, 0}, {0, 1, 0, 0}}, {{0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}, 
     {1, 0, 0, 0}}, {{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
     {{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, 
     {{0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}}, {{0, 0, 1, 0}, 
     {0, 0, 0, 1}, {1, 0, 0, 0}, {0, 1, 0, 0}}, {{0, 1, 0, 0}, {1, 0, 0, 0}, 
      {0, 0, 0, 1}, {0, 0, 1, 0}}, {{0, 1, 0, 0}, {1, 0, 0, 0}, {0, 0, 0, 1}, 
     {0, 0, 1, 0}}, {{0, 0, 1, 0}, {0, 0, 0, 1}, {1, 0, 0, 0}, {0, 1, 0, 0}}, 
     {{0, 0, 0, 1}, {0, 0, 1, 0}, {0, 1, 0, 0}, {1, 0, 0, 0}}, 
     {{1, 0, 0, 0}, {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}, {{1, 0, 0, 0}, 
     {0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}}}
 
ncis[SMIV] = 1
 
ntrans[SMIV] = 0
 
chi0[SMIV] = 1
 
PrintIell[Rep_] := IellABColor[Rep] /. AlphaBetaToSuperscripts
 
Rep = SMIV
 
IellABColor[Rep_] := {IellABColorCoefficients[Rep][1][1] . 
       {\[Alpha][1], \[Alpha][2], \[Alpha][3]} + 
      IellABColorCoefficients[Rep][1][2] . {\[Beta][1], \[Beta][2], 
        \[Beta][3]}, IellABColorCoefficients[Rep][2][1] . 
       {\[Alpha][1], \[Alpha][2], \[Alpha][3]} + 
      IellABColorCoefficients[Rep][2][2] . {\[Beta][1], \[Beta][2], 
        \[Beta][3]}}
 
IellABColorCoefficients[Rep_][TildeIndex_][su2color_] := 
    Table[Tr[Table[I*ell[Rep][TildeIndex, ahat][Ii, Ji], {Ii, 1, 4}, 
         {Ji, 1, 4}] . su2matrix[su2color, bhat]]/4, {ahat, 1, 3}, 
     {bhat, 1, 3}]
 
ell[Rep_][TildeIndex_, ahat_][Ii_, Ji_] := 
    (-I)*(Tr[su2matrix[TildeIndex, ahat] . Vtilde[Rep][[Ii,Ji]]]/
      (4*VtildeScaleFactor))
 
su2matrix[1, 1] = {{0, 0, 0, -I}, {0, 0, -I, 0}, {0, I, 0, 0}, {I, 0, 0, 0}}
 
su2matrix[1, 2] = {{0, -I, 0, 0}, {I, 0, 0, 0}, {0, 0, 0, -I}, {0, 0, I, 0}}
 
su2matrix[1, 3] = {{0, 0, -I, 0}, {0, 0, 0, I}, {I, 0, 0, 0}, {0, -I, 0, 0}}
 
su2matrix[2, 1] = {{0, 0, 0, -I}, {0, 0, I, 0}, {0, -I, 0, 0}, {I, 0, 0, 0}}
 
su2matrix[2, 2] = {{0, 0, -I, 0}, {0, 0, 0, -I}, {I, 0, 0, 0}, {0, I, 0, 0}}
 
su2matrix[2, 3] = {{0, -I, 0, 0}, {I, 0, 0, 0}, {0, 0, 0, I}, {0, 0, -I, 0}}
 
VtildeScaleFactor = -I
 
AlphaBetaToSuperscripts = 
    {\[Alpha][1] -> "\!\(\*SuperscriptBox[\(\[Alpha]\), \(1\)]\)", 
     \[Alpha][2] -> "\!\(\*SuperscriptBox[\(\[Alpha]\), \(2\)]\)", 
     \[Alpha][3] -> "\!\(\*SuperscriptBox[\(\[Alpha]\), \(3\)]\)", 
     \[Beta][1] -> "\!\(\*SuperscriptBox[\(\[Beta]\), \(1\)]\)", 
     \[Beta][2] -> "\!\(\*SuperscriptBox[\(\[Beta]\), \(2\)]\)", 
     \[Beta][3] -> "\!\(\*SuperscriptBox[\(\[Beta]\), \(3\)]\)"}
 
LoadString = "L, R, V, Vtilde, VPM, VtildePM, ZetaGen, ZetatildeGen, \
Holoraumy, Monodromy, ncis, ntrans, chi0, and PrintIell) for Rep = SMIV are \
loaded"