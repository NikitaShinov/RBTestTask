//
//  Bookmaker.swift
//  RBTestTask
//
//  Created by max on 14.07.2022.
//

import Foundation
import UIKit

struct Bookmaker {
    
    let bookmakerImage: UIImage
    let totalBets: Int
    let winBets: Int
    let lossBets: Int
    let drawBets: Int
    var winPercentage: Int {
        totalBets / winBets
    }
    var lossPercentage: Int {
        totalBets / lossBets
    }
    var drawPercentage: Int {
        totalBets / drawBets
    }
    
    init
    (
        bookmakerImage: UIImage,
        totalBets: Int,
        winBets: Int,
        lossBets: Int,
        drawBets: Int
    ) {
        
        self.bookmakerImage = bookmakerImage
        self.totalBets = totalBets
        self.winBets = winBets
        self.lossBets = lossBets
        self.drawBets = drawBets
        
    }
}
