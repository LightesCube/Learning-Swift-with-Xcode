//
//  Exercise 3.swift
//  Homework 1, Learning XCode
//
//  Created by Diego Marillan Cuevas on 10/14/24.
//

import Foundation

func calculateAverage(scores: [Double]) -> Double {  //Calculate the average score
    let total = scores.reduce(0, +)
    return total / Double(scores.count)
}

func determineGrade(average: Double) -> Int {  //Determine the grade based on the average
    switch average {
    case 89...:
        return 1
    case 76..<89:
        return 2
    case 63..<76:
        return 3
    case 50..<63:
        return 4
    default:
        return 5
    }
}

func ex3_method() {  //Perform calculations
    var scores = [Double]()

    for i in 1...5 {  //Read 5 scores from user
        print("Enter score for subject \(i):")
        if let input = readLine(), let score = Double(input) {
            scores.append(score)
        } else {
            print("Invalid input, please enter a valid number.")
            return
        }
    }

    let average = calculateAverage(scores: scores)      //Calculate the average score
    print("Your average score is: \(average)")

    let grade = determineGrade(average: average)      //Determine the grade based on the average score
    print("Your grade is: \(grade)")
}

struct StudentGradeCalculator {  //Starts Calculator
    static func main() {
        ex3_method()
    }
}



