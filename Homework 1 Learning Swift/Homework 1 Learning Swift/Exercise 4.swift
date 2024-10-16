//
//  Exercise 4.swift
//  Homework 1 Learning Swift
//
//  Created by Diego Marillan Cuevas on 10/15/24.
//

import Foundation

// Enum for Rock, Paper, Scissors
enum RPS: String {
    case rock = "Rock"
    case paper = "Paper"
    case scissors = "Scissors"
    
    static func determineWinner(userChoice: RPS, computerChoice: RPS) -> String {      // Function to determine the winner
        if userChoice == computerChoice {
            return "It's a tie!"
        }
        
        switch (userChoice, computerChoice) {
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
            return "You win!"
        default:
            return "Computer wins!"
        }
    }

    static func randomChoice() -> RPS {  //Random choice from computer
        let choices: [RPS] = [.rock, .paper, .scissors]
        return choices[Int(arc4random_uniform(UInt32(choices.count)))]
    }
}

func getUserChoice() -> RPS? {     //User input
    print("Enter your choice (Rock, Paper, Scissors): ", terminator: "")
    if let input = readLine()?.lowercased() {
        switch input {
        case "rock":
            return .rock
        case "paper":
            return .paper
        case "scissors":
            return .scissors
        default:
            print("Invalid choice, please try again.")
            return nil
        }
    }
    return nil
}

func playGame() {   //Game loop
    print("Welcome to Rock, Paper, Scissors!")
    
    while true {
        guard let userChoice = getUserChoice() else { continue }  //User choice

        let computerChoice = RPS.randomChoice()  //Computer choice
        
        print("Computer chose \(computerChoice.rawValue)")

        let result = RPS.determineWinner(userChoice: userChoice, computerChoice: computerChoice)  //Winner
        print(result)
 
        print("Do you want to play again? (y/n): ", terminator: "")  //Ask to play again
        if let playAgain = readLine()?.lowercased(), playAgain != "y" {
            print("Thanks for playing!")
            break
        }
    }
}

struct PALLE {   //Starting game
    static func main() {
        playGame()
    }
}
