//
//  BookmakerTableViewCell.swift
//  RBTestTask
//
//  Created by max on 14.07.2022.
//

import UIKit
import SnapKit

class BookmakerTableViewCell: UITableViewCell {
    
    static let identifier = "BookmakerTableViewCell"
    
    private var viewModel: BookmakerTableViewCellViewModelProtocol!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var headLineLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 14)
        label.text = "Выигрыши/проигрыши по букмекерам"
        return label
    }()
    
    private lazy var firstBookInfo: BookmakerInfoView = {
        let view = BookmakerInfoView()
        return view
    }()
    
    private lazy var divider: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    private lazy var secondBookInfo: BookmakerInfoView = {
        let view = BookmakerInfoView()
        return view
    }()
    
    
    private func addSubviews() {
        let subviews = [headLineLabel, firstBookInfo, divider, secondBookInfo]
        
        subviews.forEach { subview in
            contentView.addSubview(subview)
        }
    }
    
    private func configureViews() {
        viewModel = BookmakerTableViewCellViewModel()
        viewModel.configureView(of: 0, for: firstBookInfo)
        viewModel.configureView(of: 1, for: secondBookInfo)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let fullStatWidth = contentView.frame.size.width - 20
        
        headLineLabel.snp.makeConstraints { make in
            make.top.equalTo(5)
            make.left.equalTo(5)
        }
        
        firstBookInfo.snp.makeConstraints { make in
            make.top.equalTo(headLineLabel).offset(30)
            make.left.equalTo(5)
            make.width.equalTo(fullStatWidth)
            make.height.equalTo(100)
        }
        
        divider.snp.makeConstraints { make in
            make.top.equalTo(firstBookInfo.snp.bottom).offset(30)
            make.left.equalToSuperview()
            make.width.equalTo(contentView.frame.size.width)
            make.height.equalTo(1)
        }
        
        secondBookInfo.snp.makeConstraints { make in
            make.top.equalTo(divider.snp.bottom).offset(10)
            make.left.equalTo(5)
            make.width.equalTo(fullStatWidth)
            make.height.equalTo(100)
        }
        
    }
    
}

