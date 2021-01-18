import System.IO     
import Data.Char  
type Operator = Double -> Double -> Double
type Entry = (String, Operator)
type Register = [Entry]
operatorRegister :: Register
operatorRegister = [
                ("-", (-)),
                ("+", (+)),
                ("/", (/)),
                ("*", (*)),
                ("**", (**))]

main =do
 let file = "abc.txt"
 --writeFile fileoperatorRegister1 "The answer is: "
 contents <- readFile file
 writeFile "cba.txt" (show $ calculate contents)  
 print $ calculate contents


calculate = eval operatorRegister . words

eval :: Register -> [String] -> Double
eval _ [number] = read number
eval ((operator, function):rest) unparsed =
    case span (/=operator) unparsed of
        (_, []) -> eval rest unparsed
        (beforeOperator, afterOperator) ->  
            function
                (eval operatorRegister beforeOperator)
                (eval operatorRegister $ drop 1 afterOperator)


--2+5*3
--- (2)+(5*3)
---- (2)+((5)*(3))
----- (2)+(15)
------ 17
