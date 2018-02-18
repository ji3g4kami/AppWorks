print("====== Enumerations and Optionals in Swift ======")
/*
 1. There are several gasoline types, 92, 95, 98, and diesel.
 We can use enum to model them.
 • Please create enum named  Gasoline  to model gasoline.
 • Every kind of gasoline has price. Please create a method named  getPrice  in Gasoline enum. The method will return difference price depend on difference gasoline.
 */

enum Gasoline {
    case 九二
    case 九五
    case 九八
    case diesel
    
    func getPrice() -> Double {
        switch self {
        case .九二: return 27.0
        case .九五: return 28.5
        case .九八: return 31.3
        case .diesel: return 25.5
        }
    }
}
let price = Gasoline.九二.getPrice()

/*
 2. Optional is a very special data type in swift.
 Take var a: Int ? = 10 for example, the value of a will be  nil  or  Int.
 You should learn how to deal with optional data type.
 
 • People would like to have pets, but not everyone could have one.
 Declare a class  Pet with  name  property and a class  People  with  pet  property which will store a Pet instance or nil .
 Please try to figure out what data type is suitable for these properties in Pet and People.
 
 • Please create a People instance and use  guard let  to unwrap the  pet  property.
 
 • Please create another People instance and use  if let  to unwrap the  pet  property.
 */

class Pet {
    let name: String
    init(name: String) {
        self.name = name
    }
}

let doggy = Pet(name: "Snoopy")

class People {
    var pet: Pet?
    init(pet: Pet?) {
        self.pet = pet
    }
}

let charlie = People(pet: doggy)

func getPetName(from master: People) {
    guard let petName = master.pet?.name else {
        print("No pet name")
        return
    }
    print(petName)
}

getPetName(from: charlie)

let merry = People(pet: doggy)
if let petName = merry.pet?.name {
    print(petName)
}else{
    print("There is no dog name")
}

















