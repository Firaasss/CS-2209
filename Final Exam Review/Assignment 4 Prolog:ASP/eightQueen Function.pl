% Objective is to have eight queens on the board so that no queens are attacking
% each other in the same row, column or same diagonal

eightQueens(Board) :-
 permutation([1,2,3,4,5,6,7,8], Board),  % the permutation function makes it so all we have to do is check the diagonals
 checkDiagonals(Board).
 
checkDiagonals([]).  %board becomes empty list in checkDiagonals
 
checkDiagonals([Queen|Rest]) :-  % check Diagonals will place Queens as the head and the rest as the tale IF both predicates are true below
 checkDiagonals(Rest),
 fix(Queen,Rest,1).
 
fix(_,[],_).  % defining the diagonals so they are not conflicting in the check diagonals
 
fix(Y,[Y1|YL],X) :-
 Y1-Y=\=X,  % make sure that queen from bottom left to top right is different than x
 Y-Y1=\=X,  % make sure that queen from top left to bottom right is different (not in same diagonal)
 Dist1 is X + 1,  % Update the new variable to keep track of the occupied diagonals in X's
 fix(Y,YL,Dist1).  % Define the fix method to finalize check diagonals with the new predicates