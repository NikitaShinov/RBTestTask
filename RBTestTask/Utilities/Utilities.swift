//
//  Utilities.swift
//  RBTestTask
//
//  Created by max on 14.07.2022.
//

import UIKit

final class Utilities {
    
    //MARK: - Configure Data
    
    static func createData() -> [Bookmaker] {
        
        let bookmakerOne = Bookmaker(bookmakerImage: UIImage(named: "365")!, totalBets: 32, winBets: 20, lossBets: 7, drawBets: 5)
        
        let bookmakerTwo = Bookmaker(bookmakerImage: UIImage(named: "bwin")!, totalBets: 50, winBets: 10, lossBets: 30, drawBets: 10)
        
        return [bookmakerOne, bookmakerTwo]
        
    }
}

