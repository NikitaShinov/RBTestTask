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
            bookmakerInfo.betsAmount.text = "\(bookmaker[index].totalBets)"
            bookmakerInfo.winStat.text = "\(bookmaker[index].winBets)"
            bookmakerInfo.lossStat.text = "\(bookmaker[index].lossBets)"
            bookmakerInfo.drawStat.text = "\(bookmaker[index].drawBets)"
        }).disposed(by: disposeBag)
    }
}
