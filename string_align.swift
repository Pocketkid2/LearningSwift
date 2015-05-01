//: Playground - noun: a place where people can play

import UIKit


func alignLeft(var string: String, totalLength: Int) -> String {
    // Find out how many spaces we need to add
    let amountToPad = totalLength - count(string)
    
    // If we are already filling all the space
    // we don't need to do anything
    if amountToPad < 1 {
        return string
    }
    
    // Loop through and add one space each time
    for _ in 1...amountToPad {
        string = " " + string
    }
    
    // return the new padded string
    return string
}

func alignRight(var string: String, totalLength: Int) -> String {
    // Find out how many spaces we need to add
    let amountToPad = totalLength - count(string)
    
    // If we are already filling all the space
    // we don't need to do anything
    if amountToPad < 1 {
        return string
    }
    
    // Loop through and add one space each time
    for _ in 1...amountToPad {
        string = string + " "
    }
    
    // return the new padded string
    return string
}

func alignCenter(var string: String, totalLength: Int) -> String {
    // Find out how many spaces we need to add
    let amountToPad = totalLength - count(string)
    
    // If we are already filling all the space
    // we don't need to do anything
    if amountToPad < 1 {
        return string
    }
    
    // Create separate variables
    var amountOnLeft = 0
    var amountOnRight = 0
    
    // If we have an even number of spaces to fill
    // split them evenly
    if amountToPad % 2 == 0 {
        amountOnLeft = amountToPad / 2
        amountOnRight = amountToPad / 2
    }
    // Otherwise, round up and down on the decimal and
    // give the extra space to the right
    else {
        amountOnLeft = Int(floor(Double(amountToPad) / 2.0))
        amountOnRight = Int(ceil(Double(amountToPad) / 2.0))
    }
    
    // Loop through and add one space each time
    for _ in 1...Int(amountOnLeft) {
        string = " " + string
    }
    for _ in 1...Int(amountOnRight) {
        string = string + " "
    }
    
    // return the new padded string
    return string
}

println(alignLeft("Hello", 20))
println(alignRight("Hello", 20))
println(alignCenter("Hello", 20))