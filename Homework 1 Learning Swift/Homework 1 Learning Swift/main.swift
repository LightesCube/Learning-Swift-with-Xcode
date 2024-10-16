//
//  Exercise 1.swift
//  Homework 1, Learning XCodeTests
//
//  Created by Diego Marillan Cuevas on 10/14/24.
//

import Foundation

func isLeapYear(year: Int) -> Bool {  //Lap year or not
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
}

func ex1_method() {
    print("Enter your name:")      // Read user input from console
    let name = readLine() ?? ""
    
    print("Enter your birth year:")
    let birthyearStr = readLine() ?? ""
    let birthyear = Int(birthyearStr) ?? 0
    
    print("Enter your country:")
    let country = readLine() ?? ""
    
    let currentYear = Calendar.current.component(.year, from: Date())  //Constant and Variables
    let age = currentYear - birthyear
    let isLeapYear = isLeapYear(year: birthyear)
    
    if isLeapYear {
        print("My name is \(name), I was born in \(birthyear), which was a leap year, I am \(age) years old, and I live in \(country).")
    } else {
        print("My name is \(name), I was born in \(birthyear), which was not a leap year, I am \(age) years old, and I live in \(country).")
    }
}

ex1_method()
ex2_method()
ex3_method()
playGame()


