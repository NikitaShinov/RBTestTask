//
//  BookmakerTableViewCellViewModel.swift
//  RBTestTask
//
//  Created by max on 14.07.2022.
//

import Foundation
import RxSwift


protocol BookmakerTableViewCellViewModelProtocol {
    func configureView(of index: Int, for bookmakerInfo: BookmakerInfoView)
}

class BookmakerTableViewCellViewModel: BookmakerTableViewCellViewModelProtocol {
    
    private let disposeBag = DisposeBag()
    
    private let viewModel = BookmakerViewModel()
    
    func configureView(of index: Int, for bookmakerInfo: BookmakerInfoView) {
        viewModel.bookmakers.subscribe(onNext: { bookmaker in
            bookmakerInfo.bookmakerImage.image = bookmaker[index].bookmakerImage
            bookmakerInfo.betsAmount.text = "\(bookmaker[index].totalBets.endingReturn())"
            bookmakerInfo.winStat.text = "\(bookmaker[index].winBets) (\(bookmaker[index].winPercentage)%)"
            bookmakerInfo.lossStat.text = "\(bookmaker[index].lossBets) (\(bookmaker[index].lossPercentage)%)"
            bookmakerInfo.drawStat.text = "\(bookmaker[index].drawBets) (\(bookmaker[index].drawPercentage)%)"
            bookmakerInfo.winTotal = bookmaker[index].winBets
            bookmakerInfo.loseTotal = bookmaker[index].lossBets
            bookmakerInfo.drawTotal = bookmaker[index].drawBets
            bookmakerInfo.allTotal = bookmaker[index].totalBets
        }).disposed(by: disposeBag)
        
    }
    
}
