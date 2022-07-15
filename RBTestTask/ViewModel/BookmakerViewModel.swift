//
//  BookmakerViewModel.swift
//  RBTestTask
//
//  Created by max on 14.07.2022.
//

import Foundation
import RxSwift
import RxCocoa

final class BookmakerViewModel {
    
    private let disposeBag = DisposeBag()
    
    let bookmakers = BehaviorRelay<[Bookmaker]>(value: [])
    
    init() {
        bookmakers.accept(Utilities.createData())
    }
}
