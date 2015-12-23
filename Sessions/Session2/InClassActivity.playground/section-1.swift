// Intro to Swift in class playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.
var name: String = "Greg Young"
var age: Int = 32

//you can use "let" instead of "var".
//with a constant, you can only assign to that data value once.  advantages: they are a little bit faster.

// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"
print("Hello \(name)")

// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”

if (age>21) {
    print("You can drink!")
} else if (age == 21) {
        print("Party On!")
}
else {
    print("NO BOOZE FOR YOU")
}

if (age>18) {
    print("You can vote!")
}

if (age>16) {
    print("You can drive!")
}

// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.


// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)
var my1Number = 0

while (my1Number < 50) {
    print((my1Number * 7) - 1)
    my1Number = my1Number + 1
}

var my2Number = 7

while (my2Number < 1000){
    print("\(my2Number)")
    my2Number = my2Number + 1
}

var myNumber = 0
var StartingNumber = 7

while (myNumber < 50){
    print("\(myNumber)")
    myNumber = myNumber + 1
    
    StartingNumber = (StartingNumber - 1) + 7
}


// TODO: Create a constant called number
let number: Int = 24


// TODO: Print whether the above number is even
if ((number % 2) == 0) {
    print("Number is even")
}
else {
        print ("number is odd")
}




// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()


// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

// BONUS TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below
