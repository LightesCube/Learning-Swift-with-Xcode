//
//  Exercise 2.swift
//  Homework 1, Learning XCodeTests
//
//  Created by Diego Marillan Cuevas on 10/14/24.
//

import Foundation

func celsiusToFahrenheit(celsius: Double) -> Double {  //Convert Celsius to Fahrenheit
    return (celsius * 9/5) + 32
}

func fahrenheitToCelsius(fahrenheit: Double) -> Double {  //Convert Fahrenheit to Celsius
    return (fahrenheit - 32) * 5/9
}

func ex2_method() {    //Main function to handle user input and perform conversions
    var temperatures = [Double]()    // Array to store temperature values

    for i in 1...5 {      // Read 5 different temperatures values from the user
        print("Enter temperature value \(i):")
        if let input = readLine(), let tempValue = Double(input) {
            temperatures.append(tempValue)
        } else {
            print("Invalid input, please enter a number.")
            return
        }
    }

    print("Enter the scale (C for Celsius, F for Fahrenheit):")     //Read scale from the user (Celsius or Fahrenheit)
    let scale = readLine()?.uppercased() ?? ""

    if scale == "C" {      //Perform conversions and display results
        print("Converting temperatures from Celsius to Fahrenheit:")
        for temp in temperatures {
            let converted = celsiusToFahrenheit(celsius: temp)
            print("\(temp)°C = \(converted)°F")
        }
    } else if scale == "F" {
        print("Converting temperatures from Fahrenheit to Celsius:")
        for temp in temperatures {
            let converted = fahrenheitToCelsius(fahrenheit: temp)
            print("\(temp)°F = \(converted)°C")
        }
    } else {
        print("Invalid scale entered. Please enter 'C' for Celsius or 'F' for Fahrenheit.")
    }
}


