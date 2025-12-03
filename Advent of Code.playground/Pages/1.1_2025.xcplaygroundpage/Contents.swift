//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 The attached document (your puzzle input) contains a sequence of rotations, one per line, which tell you how to open the safe. A rotation starts with an L or R which indicates whether the rotation should be to the left (toward lower numbers) or to the right (toward higher numbers). Then, the rotation has a distance value which indicates how many clicks the dial should be rotated in that direction.

 So, if the dial were pointing at 11, a rotation of R8 would cause the dial to point at 19. After that, a rotation of L19 would cause it to point at 0.
 
    11 + 8(right) = 19
    19(left) = 0, because it goes back left 19 times and it's 0
 Because the dial is a circle, turning the dial left from 0 one click makes it point at 99. Similarly, turning the dial right from 99 one click makes it point at 0.
 
     0 -> 99
     99 <- 0
 
 So, if the dial were pointing at 5, a rotation of L10 would cause it to point at 95. After that, a rotation of R5 could cause it to point at 0.
 
    5 -> 10 (left, back 10 times starting at 5) = 95
    95 -> 5 (right 5 times, forward) = 0 (the last is 99)
 
 The dial starts by pointing at 50.

 You could follow the instructions, but your recent required official North Pole secret entrance security training seminar taught you that the safe is actually a decoy. The actual password is the number of times the dial is left pointing at 0 after any rotation in the sequence.

 For example, suppose the attached document contained the following rotations:

 L68
 L30
 R48
 L5
 R60
 L55
 L1
 L99
 R14
 L82
 Following these rotations would cause the dial to move as follows:

 The dial starts by pointing at 50.
 The dial is rotated L68 to point at 82.
    68 - 50 = 18
    99(+1) - 18 = 82
 The dial is rotated L30 to point at 52.
    82 - 30 = 52
 The dial is rotated R48 to point at 0.
    52 + 48 = 100 (0)
 The dial is rotated L5 to point at 95.
 The dial is rotated R60 to point at 55.
 The dial is rotated L55 to point at 0.
 The dial is rotated L1 to point at 99.
 The dial is rotated L99 to point at 0.
 The dial is rotated R14 to point at 14.
 The dial is rotated L82 to point at 32.
 Because the dial points at 0 a total of three times during this process, the password in this example is 3.
 */

func readTxt() -> Int {
    
    guard let filePath = Bundle.main.path(forResource: "1_2025", ofType: "csv") else {
        fatalError("File not found")
    }
    let input = try!
    String(contentsOfFile: filePath, encoding: .utf8)
//    return secretPassword(input)
    return 0
    
}

// two Int variables L and R, and distance Int variable

func secretPassword(_ input: String)  {
    var point = (x: 0, y: 0)
    var distance = 0
    
    for item in input {
        // if column1 == L -> minus number in column2 from 50 or whatever number the dial stopped
        // if column1 == R -> plus number in column2 from 50 or whatever number the dial stopped
        // count the number of 0s
        print(item)
    }
}

secretPassword(inputTest)

let inputTest = "L68, L30, R48, L5, R60, L55, L1, L99, R14, L82"
