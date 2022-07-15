import UIKit

func findBumerang(_ inputarray: [Int]) -> Int {

    guard !inputarray.isEmpty else { return 0 }
    var counter = 0

    for count in 0...inputarray.count - 1 {
        if count <= inputarray.count - 3 {
            if inputarray[count] == inputarray[count + 2] {
                counter += 1
                print ("---------------------")
                print ("Левое число: \(inputarray[count])")
                print ("Правое число: \(inputarray[count + 2])")
                print ("Подсчет: \(counter)")
                print ("---------------------")
            }
        }
    }
    return counter
}

findBumerang([1,2,1,2,3,3])
