//
//  main.swift
//  Calculator
//
//  Created by Chris Maglio on 4/6/16.
//  Copyright © 2016 Chris Maglio. All rights reserved.
//  Calculator HW 2

import Foundation

func mathAdd(x : Int, y: Int) -> Int {
    return(x + y)
}

func mathSub(x : Int, y: Int) -> Int {
    return(x - y)
}

func mathMulti(x : Int, y: Int) -> Int {
    return(x * y)
}

func mathDiv(x : Int, y: Int) -> Int {
    return(x / y)
}

func mathAdd2(x : [Int]) -> Int {
    var total = 0
    for index in 0...(x.count - 1) {
        total += x[index]
    }
    return total
}

func mathMulti2(x : [Int]) -> Int {
    var total = 1
    for index in 0...(x.count - 1) {
        total *= x[index]
    }
    return total
}

func mathAvg (a : [Int]) -> Double {
    var total = 0
    for index in 0...(a.count - 1) {
        total += a[index]
    }
    return Double(Double(total) / Double(a.count))
}

func mathCount(a : [Int]) -> Int {
    return a.count
}

func mathOp(x: Int, y : Int, op : String) -> Int? {
    if op == "-" {
        return mathSub(x, y: y)
    } else if op == "+" {
        return mathAdd(x, y: y)
    } else if op == "*" {
        return mathMulti(x, y: y)
    } else if op == "/" {
        return mathDiv(x, y: y)
    } else  {
        print("That operation is not supported in this function.  Please try again.")
        return nil
    }
}

typealias CarPt = (Int, Int)
func addPts(x : CarPt, y : CarPt) -> CarPt {
    return((x.0 + y.0), (x.1 + y.1))
}

func subPts(x : CarPt, y : CarPt) -> CarPt {
    return((x.0 - y.0), (x.1 - y.1))
}

func combineDict(var primary : Dictionary <String,Int>, var secondary : Dictionary <String,Int>, op : String) {
    if primary["x"] == nil {
        primary["x"] = 0
    }
    if primary["y"] == nil {
        primary["y"] = 0
    }
    if secondary["x"] == nil {
        secondary["x"] = 0
    }
    if secondary["y"] == nil {
        secondary["y"] = 0
    }
    if op == "+" {
        print("(\(primary["x"]!), \(primary["y"]!)) + (\(secondary["x"]!), \(secondary["y"]!)) is (\(primary["x"]! + secondary["x"]!), \(primary["y"]! + secondary["y"]!))")
    } else if op == "-" {
        print("(\(primary["x"]!), \(primary["y"]!)) - (\(secondary["x"]!), \(secondary["y"]!)) is (\(primary["x"]! - secondary["x"]!), \(primary["y"]! - secondary["y"]!))")
    }
}

// Demonstrating mathOp function and all simple operation functions work
print("2 + 2 = \(mathOp(2, y: 2, op : "+")!)")
print("7 - 5 = \(mathOp(7, y : 5, op : "-")!)")
print("8 * 8 = \(mathOp(8, y : 8, op : "*")!)")
print("10 / 2 = \(mathOp(10, y : 2, op : "/")!)")

// Demonstrating multi2 and add2 functions work with taking in arrays
let array1 : [Int] = [1, 2, 3, 4, 5]
let array2 : [Int] = [10, 20, 30, 40, 27, 293]
print("\(array1) multiplied together is \(mathMulti2(array1))")
print("\(array2) added together is \(mathAdd2(array2))")
print("\(array2)'s average is \(mathAvg(array2))")
print("\(array1)'s count of numbers in the array is \(mathCount(array1))")

// Shows cartesian point adding working properly
print("(2, 2) + (3, 4) = \(addPts((2, 2), y : (3, 4)))")
print("(2, 2) - (3, 4) = \(subPts((2, 2), y : (3, 4)))")

// Dictionary Stage
var dic1 = ["x" : 2, "y" : 4]
var dic2 = ["x" : 5, "y" : 1]
print("\(dic1["x"]!) is the x-coordinate and \(dic1["y"]!) is the y-coordinate")
combineDict(dic1, secondary : dic2, op : "+")
combineDict(dic1, secondary : dic2, op : "-")


