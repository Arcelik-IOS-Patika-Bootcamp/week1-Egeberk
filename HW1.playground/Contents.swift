import UIKit

/*
 # Collection Example
 Includes: Array, Set, Dictionary
 */
var sampleArray: [Int] = [1,2,3,3,3,4,5,5]

// By creating a set, we remove duplicates from sampleArray
var uniqueArray = Set(sampleArray)

// However a set is not sorted
var sortedUniqueArray = uniqueArray.sorted()

// For loop demonstration 1 (Ranged)
for index in 1...(sortedUniqueArray.count-2) {
    print(sortedUniqueArray[index])
}

// Dictionary declaration
var sampleDictionary: [String:Int] = ["Ex1":1,
                                      "Ex2":2,
                                      "Ex3":3,
                                      "Ex4":4]
// For loop demonstration 2 (With if let)
for key in sampleDictionary.keys {
    if let example = sampleDictionary[key]
    {
        print(example)
    }
    else
    {
        print("Unkown key")
    }
}
// End of collections

/*
 # Struct Example
 */
struct Human{
    private var name:String
    private var age:Int
    
    // Constructor
    init(_ name:String,_ age:Int){
        self.name = name
        self.age = age
    }
    
    // "Mutating" is needed for changes in struct variables
    mutating func setName(_ name:String)
    {
        self.name = name
    }
}
// End of struct

/*
 # Class Example
 */
class Person{
    private var name:String
    private var age:Int
    
    /* With the use of "!" operator,
     we don't have to include it in init
     */
    private var experienceYears:Int!
    
    init(_ name:String, _ age:Int){
        self.name = name
        self.age = age
    }
    
    func giveInfo() {
        print("Hi I'm \(self.name), and I'm \(self.age) years old.")
    }
    
    // Without "_" operator
    func setExpYears(expYears:Int){
        self.experienceYears = expYears
    }
    
    /* if salary did not initiate,
     assign a def value with ?? operator
     */
    func calculateSalary()->Int{
        return 1000 * (experienceYears ?? 1)
    }
}
var newEmployee = Person("Ege",26)
newEmployee.giveInfo()
print(newEmployee.calculateSalary()) // 1000
newEmployee.setExpYears(expYears: 3)
print(newEmployee.calculateSalary()) // 3000
// End of class
