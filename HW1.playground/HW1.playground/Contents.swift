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


