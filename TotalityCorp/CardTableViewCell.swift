//
//  CardTableViewCell.swift
//  TotalityCorp
//
//  Created by Aditya Ambekar on 23/12/20.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    static let identifier = "CardTableViewCell"
    
    private var cardView: UIView = {
        let view  = UIView()
        view.backgroundColor = .orange
        view.layer.cornerRadius = 30
        view.clipsToBounds = true
        return view
    }()
    
    private let iconView: UIView = {
        let view = UIView();
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        return view
    }()
    
    private let downloadButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.layer.cornerRadius = 30
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
//        contentView.backgroundColor = .orange
//        contentView.layer.cornerRadius = 30
        
        contentView.addSubview(cardView)
        cardView.addSubview(iconView)
        cardView.addSubview(downloadButton)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        cardView.frame = CGRect(x: 30,
                                y: 10,
                                width: contentView.width - 60,
                                height: 500)
        
        iconView.frame = CGRect(x: cardView.left - 10,
                                y: cardView.top + 20,
                                width: 80,
                                height: 80)
        
        downloadButton.frame = CGRect(x: cardView.left - 10,
                                      y: cardView.bottom - 100,
                                      width: cardView.width - 40,
                                      height: 60)
    }

}
