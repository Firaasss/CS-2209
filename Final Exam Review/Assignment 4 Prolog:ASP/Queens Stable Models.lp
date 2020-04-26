n{queen(1..n,1..n) } n.  %this choice rule allows us to choose any arbitray subset of any possible position of queens from n=1-8

%below are the integrity constraints which will allow the elimination through the generate/test method to disallow duplicates 

:- not{queen(I,J)} == n. %must not be the case that we have not put n queens on the board (position i,j)
:- queen(I,J), queen(I,JJ), J != JJ. %must not be the case that we put two different queens on the same horizontal row
:- queen(I,J), queen(II,J), I != II. %must not be the case that we put two different queens on the same vertical column
:- queen(I,J), queen(II,JJ), (I,J) != (II,JJ), I-J == II-JJ. %must not place two different queens on the same diagonal (left to right) by subtracting their positions and comparing their allocated spots on the board 
:- queen(I,J), queen(II,JJ), (I,J) != (II,JJ), I+J == II+JJ. %must not place two different queens on the same diagonal (right to left) by subtracting their positions and comparing their allocated spots on the board 


#show queen/2.