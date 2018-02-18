print("======= Objective-Oriented Swift ========")

/*
 1. Declare class  Animal  with property  gender, and method  eat() .
 Data type of gender should be enum Gender as list below.
 Call eat() method will print I eat everything!
 
 enum Gender {
    case male
    case female
    case undefined
 }
 
 */

enum Gender {
    case male
    case female
    case undefined
}

protocol Eatable {
    func eat() -> ()
}

class Animal: Eatable {
    let gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything!")
    }
}

/*
 2.  Declare class  Elephant ,  Tiger ,  Horse  inherit from Animal.
 Override the eat method to print what they usually eat.
 */

class Elephant: Animal {
    override func eat() {
        print("I eat tree leaves, flowers, and wild fruits.")
    }
}
let elephant = Elephant(gender: Gender.female)
elephant.eat()

class Tiger: Animal {
    override func eat() {
        print("I other animals.")
    }
}
let tiger = Tiger(gender: Gender.male)
tiger.eat()

class Horse: Animal {
    override func eat() {
        print("I eat grass.")
    }
}
let horse = Horse(gender: Gender.undefined)
horse.eat()

/*
 3. Declare a class  Zoo  with property  weeklyHot  which means the most popular one in the zoo this week.
 The code list below can’t run correctly. Please solve the problem.
 Notice that  tiger ,  elephant ,  horse  are instances of class Tiger, Elephant, Horse.
 */

enum ZooStar {
    case tiger
    case elephant
    case horse
}

class Zoo {
    var weeklyHot: ZooStar?
    init(_ weeklyHot: ZooStar) {
        self.weeklyHot = weeklyHot
    }
}


let zoo = Zoo(.tiger)
zoo.weeklyHot = ZooStar.tiger
zoo.weeklyHot = ZooStar.elephant
zoo.weeklyHot = ZooStar.horse

