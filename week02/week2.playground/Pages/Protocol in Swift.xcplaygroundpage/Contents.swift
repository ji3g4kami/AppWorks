print("======= Protocla in Swift ========")

/*
 1. Declare a struct  Person  with a  name  property type String, a protocol name  PoliceMan .
 There is only one method  arrestCriminals  with no argument and return void in the protocol.
 */

/*
 2. Make struct  Person  confirm to  PoliceMan  protocol.
 */

protocol PoliceMan {
    func arrestCrimminals() -> ()
}

/*
 3. Declare a protocol ToolMan with a method  fixComputer, no argument and return void.
 */
protocol ToolMan {
    func fixComputer() -> ()
}

/*
 4. Add a property  toolMan  to struct Person with data type  ToolMan .
 */

struct Person: PoliceMan {
    let name: String
    let toolMan: ToolMan
    func arrestCrimminals() {
        print("Gotcha!")
    }
    init(name: String, toolMan: ToolMan) {
        self.name = name
        self.toolMan = toolMan
    }
}

/*
 5. Declare a struct named  Engineer  conform to  ToolMan  protocol.
*/
struct Engineer: ToolMan {
    func fixComputer() {
        print("Still Single!!!")
    }
}

/*
 6. Create a Person instance with name Steven.
 Please create the relative data you need to declare this instance.
 */
let engineer = Engineer()
let person = Person(name: "Steven", toolMan: engineer)
person.arrestCrimminals()










