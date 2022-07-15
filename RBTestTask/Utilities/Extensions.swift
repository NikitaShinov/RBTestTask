//
//  Extensions.swift
//  RBTestTask
//
//  Created by max on 15.07.2022.
//

import Foundation

extension Int {
     func endingReturn() -> String {
         var ending: String!
         if "1".contains("\(self % 10)")      { ending = "ставка" }
         if "234".contains("\(self % 10)")    { ending = "ставки" }
         if "567890".contains("\(self % 10)") { ending = "ставок" }
         if 11...14 ~= self % 100             { ending = "ставок" }
    return "\(self) " + ending
    }
}
