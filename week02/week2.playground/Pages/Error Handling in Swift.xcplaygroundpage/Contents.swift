print("====== Error Handling in Swift ======")

// 1. Please solve the error by adding addition code in the file. Do not remove or modify the code above.

enum GuessNumberGameError: Error {
    case wrongNumber
    case otherError
}

class GuessNumerGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
    
    init(_ targetNumber: Int) {
        self.targetNumber = targetNumber
    }
}

// 2. Call  guess(number:)  and pass 20 as argument.

let game = GuessNumerGame(10)

do {
    try game.guess(number: 20)
} catch GuessNumberGameError.wrongNumber {
    print("You've guessed the wrong number. The target number is \(game.targetNumber)")
}



















