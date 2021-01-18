# parsing-tree-in-haskell
the program is parsing an equation and calculate the output of it 
first we have have an operator that takes two inputs with a data type of double and return a double.
then an entery with tuple of string and operator (operator descriped above)
and the register with the list of enter (entry descriped above too)

the operator register is a type of register that takes a list a entry, and the entery take tuple of string and an operator
and the operator takes two input of type double and return a double. 

 -- here is the reading of  the files, file1 will take the content in abc.txt
 -- and then will pass it to contents 
 -- writing in file in line 25 will be through passing the file name and then passing the content we've just read from the file.
 
 we've calculate function that will be equallized to function eval (will be descriped below)

eval is a type of register that takes a list of strings and return double
 _ means we discard the value, so it matches anything but we discard the value
[number] is matched if the parameter is a list with a single element, in which

we've two cases the first case is if the character is operator will coninue recursing till we find the next operator, otherwize make the parse tree which will be descriped below

in this algorithm we are using recursing function.
in line 41 it's a special case if 1 number left unparsed
after that we do have a case.. if it's not an operator. we will continue recusing till we find the next operator
then when the recursion function is done the value gets back to the function which will be output.

Example
2+5*3  ---> first we start by parsing the + alone
(2)+(5*3) --> then we parse the 5*3 with it 
(2)+((5)*(3)) -- then parse the 5 and 3 in the (5*3) to be ((5)*(3))
(2)+(15) -- then we calculate it so nothing left but the summing
17
