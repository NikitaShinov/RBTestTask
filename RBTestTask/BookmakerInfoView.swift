//
//  BookmakerInfoView.swift
//  RBTestTask
//
//  Created by max on 14.07.2022.
//

import UIKit
import SnapKit

class BookmakerInfoView: UIView {
    
    var winTotal: Int!
    var loseTotal: Int!
    var drawTotal: Int!
    var allTotal: Int!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }    
    
    lazy var bookmakerImage: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    lazy var betsAmount: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 13)
        return label
    }()
    
    lazy var winRate: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.systemGreen
        return view
    }()
    
    lazy var lossRate: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.systemRed
        return view
    }()
    
    lazy var drawRate: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.systemGray
        return view
    }()
    
    lazy var winStat: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 13)
        return label
    }()
    
    lazy var lossStat: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 13)
        return label
    }()
    
    lazy var drawStat: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 13)
        return label
    }()
    
    private func addSubviews() {
        let subviews = [bookmakerImage,
                        betsAmount,
                        winRate,
                        lossRate,
                        drawRate,
                        winStat,
                        lossStat,
                        drawStat]
        
        subviews.forEach { subview in
            addSubview(subview)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let fullStatWidth = UIScreen.main.bounds.width - 30
        
        bookmakerImage.snp.makeConstraints { make in
            make.top.equalTo(10)
            make.width.equalTo(fullStatWidth / 2)
            make.height.equalTo(fullStatWidth / 4)
            make.left.equalTo(5)
        }
        
        betsAmount.snp.makeConstraints { make in
            make.top.equalTo(30)
            make.left.equalTo(bookmakerImage.snp.right).offset(10)
            make.width.equalTo(fullStatWidth / 3)
            make.height.equalTo(20)
        }
        
        winRate.snp.makeConstraints { make in
            make.width.equalTo(fullStatWidth * CGFloat(Double(winTotal) / Double(allTotal)))
            make.top.equalTo(bookmakerImage.snp.bottom).offset(5)
            make.height.equalTo(10)
            make.left.equalTo(5)
        }
        
        lossRate.snp.makeConstraints { make in
            make.width.equalTo(fullStatWidth * CGFloat(Double(loseTotal) / Double(allTotal)))
            make.top.equalTo(bookmakerImage.snp.bottom).offset(5)
            make.height.equalTo(10)
            make.left.equalTo(winRate.snp.right).offset(5)
        }
        
        drawRate.snp.makeConstraints { make in
            make.width.equalTo(fullStatWidth * CGFloat(Double(drawTotal) / Double(allTotal)))
            make.top.equalTo(bookmakerImage.snp.bottom).offset(5)
            make.height.equalTo(10)
            make.left.equalTo(lossRate.snp.right).offset(5)
        }
        
        winStat.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.top.equalTo(winRate.snp.bottom).offset(5)
            make.left.equalTo(5)
        }
        
        lossStat.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.top.equalTo(lossRate.snp.bottom).offset(5)
            make.left.equalTo(winRate.snp.right).offset(5)
        }
        
        drawStat.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.top.equalTo(drawRate.snp.bottom).offset(5)
            make.right.equalTo(5)
        }
        
        
    }
    
}

