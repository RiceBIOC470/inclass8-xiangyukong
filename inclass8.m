%Inclass assignment 8

%Using the swalign function
% A. Create a random DNA sequence of length 100. 
seq=randseq(100)

% B. Create a second sequence from the first one by changing the middle 20 basepairs (at positions 41-60)
seqnew=[seq(1:40),randseq(20),seq(61:100)]

% C. run swalign on the two sequences with the default parameters
[score,align,start]=swalign(seq,seqnew,'Alphabet','nt','Showscore','true')

% D. run swalign with much higher and lower values of the GapOpen parameter
% and explain the results. 

[score,align,start]=swalign(seq,seqnew,'Alphabet','nt','GapOpen',2,'Showscore','true')
[score,align,start]=swalign(seq,seqnew,'Alphabet','nt','GapOpen',50,'Showscore','true')
%because Matlab will always choose favorable of score,higher score
%punishment for skipping bases will cause the system to have higher tolerance for mismatch and
%vice versa.

% E. run swalign with a low value of GapOpen but a high value of ExtendGap,
% explain the result

[score,align,start]=swalign(seq,seqnew,'Alphabet','nt','GapOpen',2,'ExtendGap',20,'Showscore','true')
%this operation make a high tolerance for skipping one base, but highly
%reluctant to skip bases consecutively.kind of like a soft but sticky
%molecule.

% F. run swalign align with the default value of GapOpen and a low value
% of ExtendGap and explain the result. 

[score,align,start]=swalign(seq,seqnew,'Alphabet','nt','GapOpen',8,'ExtendGap',2,'Showscore','true')
%opposite from the previous one. this arrangement is favorable to matches
%by segment, which means its reluctant to skip, yet when it skip one,
%skipping the latter one will be easier. kind of like make the molecule
%hard and crisp