
// This will be the users choice
func getUserChoice(userInput: String) -> String {
  if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
    return userInput
  } else {
    print("You can only enter rock, paper, or scissors. Try again.")
    return "Invalid input"
  }
}

// print(getUserChoice(userInput: "rock")) -> Only for testing purposes, won't be used in the code

// This will be function to determin which will be the computers choice
func getComputerChoice() -> String {
  let randomNumber = Int.random(in: 0...2)
  switch randomNumber{
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default:
      return "Something went wrong"
  }
}
// This will print the computers choice
// print(getComputerChoice()) -> Only for testing purposes, won't be used in the code

func determineWinner(_ userChoice: String,_ compChoice: String) -> String {
  var decision = "It's a tie"
  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "The computer won"
      } else if compChoice == "Scissors" {
        decision = "The user won"
      }
     case "paper":
      if compChoice == "rock" {
        decision = "the user won"
      } else if compChoice == "scissors" {
        decision = "The computer won"
      }
     case "scissors":
     if compChoice == "rock" {
      decision = "the computer won"
     } else if compChoice == "paper" {
      decision = "the user won"
     }
     default:
     return "Something went wrong"
    }
    return decision
    
  }

// Testing the game

let userVariable = getUserChoice(userInput: "rock")
let compVariable = getComputerChoice()

print("You threw \(userVariable)")
print("The computer threw \(compVariable)")
print(determineWinner(userVariable, compVariable))





