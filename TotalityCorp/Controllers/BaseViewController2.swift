//
//  BaseViewController2.swift
//  TotalityCorp
//
//  Created by Aditya Ambekar on 23/12/20.
//

import UIKit

// Class for second page
class BaseViewController2: UIPageViewController {

    let view1: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 5
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 5
        return view
    }()
    
    let view3: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "5"
        label.font = label.font.withSize(25)
        label.textAlignment = .center
        label.layer.backgroundColor = UIColor.systemGreen.cgColor
        label.layer.cornerRadius = 35
        label.layer.masksToBounds = true
        return label
    }()
    
    let view4: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "10"
        label.font = label.font.withSize(25)
        label.textAlignment = .center
        label.layer.backgroundColor = UIColor.gray.cgColor
        label.layer.cornerRadius = 35
        label.layer.masksToBounds = true
        return label
    }()
    
    let view5: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "15"
        label.font = label.font.withSize(25)
        label.textAlignment = .center
        label.layer.backgroundColor = UIColor.gray.cgColor
        label.layer.cornerRadius = 35
        label.layer.masksToBounds = true
        return label
    }()
    
    let view6: UILabel = {
        let label = UILabel()
        label.text = "Wallet Balance: "
        return label
    }()
    
    let view7: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 5
        return view
    }()
    
    let view8: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 5
        return view
    }()
    
    let view9: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 5
        return view
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("NEXT", for: .normal)
        button.layer.cornerRadius = 40
        button.addTarget(self, action: #selector(HalfViewController.goNextPage(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(view5)
        view.addSubview(view6)
        view.addSubview(view7)
        view.addSubview(view8)
        view.addSubview(view9)
        view.addSubview(nextButton)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view1.frame = CGRect(x: view.width / 6 - 30,
                             y: 50,
                             width: view.width / 6 + 60,
                             height: 40)

        view2.frame =  CGRect(x: view.width / 6,
                              y: view1.bottom + 30,
                              width: view.width / 6,
                              height: 20)
        
        view3.frame = CGRect(x: view.width / 10,
                             y: view2.bottom + 20,
                             width: 70,
                             height: 70)
        
        view4.frame = CGRect(x: 2 * (view.width) / 10,
                             y: view2.bottom + 20,
                             width: 70,
                             height: 70)
        
        view5.frame = CGRect(x: 3 * (view.width) / 10,
                             y: view2.bottom + 20,
                             width: 70,
                             height: 70)
        
        view6.frame = CGRect(x: 30,
                             y: view3.bottom + 20,
                             width: view.width / 6, height: 30)
        
        view7.frame = CGRect(x: view6.right - 5,
                             y: view3.bottom + 20,
                             width: 50, height: 20)
        
        view8.frame = CGRect(x: view7.right + view.width / 12,
                             y: view3.bottom + 20,
                             width: 40, height: 30)
        
        view9.frame = CGRect(x: view8.right + 5,
                             y: view3.bottom + 25,
                             width: 20, height: 20)

        nextButton.frame = CGRect(x: 20,
                                  y: view9.bottom + 40,
                                  width: view.width / 2 - 50,
                                  height: 80)
    }
    
}
