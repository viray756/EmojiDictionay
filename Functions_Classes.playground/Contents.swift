

func hello() {
    print("Hello World!")
}

hello()

func printItOut(word :String) {
    print(word)
}

printItOut(word: "WHats Up")

// Return example
func addTwo(num1 :Int, num2 :Int) -> Int{
    return num1 + num2
    }

addTwo(num1: 2, num2: 5)

var a = 3
var b = 25
var c = addTwo(num1: a, num2: b)
var d = addTwo(num1: a, num2: addTwo(num1: 2, num2: 10))

func personInfo(name :String, age: Int, weight :Double) -> String {
    return "My name is \(name), I am \(age), and I weigh \(weight) pounds"
}

print(personInfo(name: "Angelo", age: 28, weight: 182))

//Classes Examples: We use classes to create objects
class Person {
    var name = ""  //Properties
    var age = 0    //Properties
}

var person1 = Person() //Object created from class Person
person1.name = "Angelo"
person1.age = 27

var person2 = Person()
person2.name = "Jose"
person2.age = 54


print(person1.name)
print(person2.name)

var people = [person1, person2]

people[0].age

//Method Example. Method is a function inside of a class

class NewPerson {
    var name = "Greg"  //Properties
    var age = 100    //Properties
    func info() {
        print("This Person's name is \(name) and they are \(age) years old")
    }

}

var person3 = NewPerson()
person3.age
person3.name
person3.info()




