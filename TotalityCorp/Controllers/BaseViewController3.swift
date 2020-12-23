//
//  BaseViewController3.swift
//  TotalityCorp
//
//  Created by Aditya Ambekar on 23/12/20.
//

import UIKit

// Class for third page
class BaseViewController3: UIPageViewController {
    
    let view0: UILabel = {
        let label = UILabel()
        label.text = "Ready to Play?"
        label.font = label.font.withSize(25)
        label.textAlignment = .center
        return label
    }()
    
    let view1: UILabel = {
        let label = UILabel()
        label.text = "OSWALD"
        label.font = label.font.withSize(25)
        label.textAlignment = .center
        return label
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 5
        return view
    }()
    
    let view3: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 5
        return view
    }()
    
    
    let view4: UILabel = {
        let label = UILabel()
        label.layer.backgroundColor = UIColor.gray.cgColor
        label.layer.cornerRadius = 30
        label.layer.masksToBounds = true
        return label
    }()
    
    let view5: UILabel = {
        let label = UILabel()
        label.layer.backgroundColor = UIColor.gray.cgColor
        label.layer.cornerRadius = 30
        label.layer.masksToBounds = true
        return label
    }()
    
    let view6: UILabel = {
        let label = UILabel()
        label.layer.backgroundColor = UIColor.gray.cgColor
        label.layer.cornerRadius = 30
        label.layer.masksToBounds = true
        return label
    }()

    let view7: UILabel = {
        let label = UILabel()
        label.text = "Wallet Balance: "
        return label
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
    
    let view10: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 5
        return view
    }()
    
    let confirmButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Confirm", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 40
//        button.addTarget(self, action: #selector(HalfViewController.goPrevPage(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(view0)
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(view5)
        view.addSubview(view6)
        view.addSubview(view7)
        view.addSubview(view8)
        view.addSubview(view9)
        view.addSubview(view10)
        view.addSubview(confirmButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view0.frame = CGRect(x: 0,
                             y: 20,
                             width: view.width / 2, height: 30)
        
        view1.frame = CGRect(x: 0,
                             y: view0.bottom + 10,
                             width: view.width / 2, height: 30)
        
        view2.frame = CGRect(x: view.width / 6 ,
                             y: view1.bottom + 20,
                             width: view.width / 8, height: 20)
        
        view3.frame = CGRect(x: view2.right + 10 ,
                             y: view1.bottom + 20,
                             width: view.width / 10, height: 20)
        
        view4.frame = CGRect(x: view.width / 10,
                             y: view3.bottom + 20,
                             width: 70,
                             height: 70)
        
        view5.frame = CGRect(x: 2 * (view.width) / 10,
                             y: view3.bottom + 20,
                             width: 70,
                             height: 70)
        
        view6.frame = CGRect(x: 3 * (view.width) / 10,
                             y: view3.bottom + 20,
                             width: 70,
                             height: 70)
        
        view7.frame = CGRect(x: 30,
                             y: view4.bottom + 20,
                             width: view.width / 6, height: 30)
        
        view8.frame = CGRect(x: view7.right - 5,
                             y: view4.bottom + 20,
                             width: 50, height: 20)
        
        view9.frame = CGRect(x: view8.right + view.width / 12,
                             y: view4.bottom + 20,
                             width: 40, height: 30)
        
        view10.frame = CGRect(x: view9.right + 5,
                             y: view4.bottom + 25,
                             width: 20, height: 20)

        confirmButton.frame = CGRect(x: 20,
                                  y: view10.bottom + 40,
                                  width: view.width / 2 - 50,
                                  height: 80)
    }

}
