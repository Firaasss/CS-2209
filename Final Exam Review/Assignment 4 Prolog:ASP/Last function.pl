/* This function will take in a list and a variable & return the last item in the list */
last(List, LastItem) :-		  %List is that is to be inputted in the first parameter, and empty variable (W, X, Y, Z) to store last item in
    append(_, L, [_, LastItem]).  %Append will concatenate an empty list with the given one and display the very last item in the list 