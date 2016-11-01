-- VALUES

-- String Values
"hello"
-- "hello"

"hello" ++ "world"
-- "helloworld"

"hello" ++ " world"
-- "hello world"

-- Int Values
 2 + 3 * 4
-- 14

(2 + 3) * 4
-- 20

-- Unlike in Javascript, Elm does make a distinction between floating point numbers, and integers. Infact there is floating point division(/), as well as integer division(//)
9 / 2
-- 4.5

9 // 2
-- 4



-- FUNCTIONS
-- Functions in Elm look different compared to functions in vanilla Javascript. For example, Elm does not incorporate paranthese or commas. For example

-- PLAIN Javascript
-- (add(3,4))

-- ELM
-- (add 3 4)


isNegative n = n < 0
-- <function>

isNegative 4
-- False

isNegative -7
-- True

isNegative (-3 * -4)
-- False


-- IF Expressions
-- Key words if then and else are used to separate conditional, curly braces are not needed
-- Elm also incorporates a different definition of truthiness in comparison to Javascript, numbers, strings, lists cannot be used as boolean values

if True then "hello" else "world"
-- "hello"

if Falas then "hello" else "world"
-- "world"


over9000 powerLevel =
  if powerLevel > 9000 then "It's over 9000!!!" else "meh"

over9000 42
-- "meh"

over9000 90000
-- "It's over 9000!!!"



--LISTS
-- Lists are similar to arrays in Javascript, they are used to hold related things

names = ["Alice", "Bob", "Chuck"]

List.isEmpty names
-- False
List.length names
-- 3
List.reverse names
["Chuck", "Bob", "Alice"]

numbers = [1,3,4,2]

List.sort numbers
-- [1,2,3,4]


double n = n*2

List.map double numbers
-- [2,6,8,4]

-- TUPLES
-- Unlike Javascript, there is the tuple in Elm. Tuples hold fixed values, and they can be of any type.
goodName name =
  if String.length name <= 20 then
    (True, "name accepted")
  else
    (False, "name was too long; please limit to 20 characters")

goodName "Tom"
-- (True, "name accepted")


-- RECORDS
-- Records are key value pairs, similar to an object in Javascript
point = {x = 3, y = 4}

point.x
-- 3


bill = {name = "Gates", age = 57}

bill.name
-- "Gates"

-- Records also have an accessor that works similar to Functions
.name bill
-- "Gates"

List.map .name [bill,bill,bill]
-- ["Gates", "Gates", "Gates"]

-- Elm also incorporates pattern matching to make functions clean and easy to write
under70 {age} = age < 70
under70 bill
-- true
under70 {species= "Triceritops", age= 6800000}
-- false

-- You can also update information in a record, however this action is not desctructive
{ bill | name = "Nye" }
-- { age = 57, name = "Nye" }

{ bill | age = 22 }
-- { age = 22, name = "Gates" }

-- Note that you can not use keywords like this or self within Elm as these ideas are central to OOP and not functional programming. Elm intentionally leaves out these ideas. 
