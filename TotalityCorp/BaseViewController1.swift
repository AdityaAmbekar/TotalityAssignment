//
//  BaseViewController.swift
//  TotalityCorp
//
//  Created by Aditya Ambekar on 23/12/20.
//

import UIKit

class BaseViewController1: UIViewController {
    
    let view1: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 5
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 50
        view.backgroundColor = .gray
        return view
    }()
    
    let view3: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.backgroundColor = .gray
        return view
    }()
    
    let view4: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.backgroundColor = .gray
        return view
    }()
    
    let view5: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 50
        view.backgroundColor = .gray
        return view
    }()
    
    let view6: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.backgroundColor = .gray
        return view
    }()
    
    let view7: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.backgroundColor = .gray
        return view
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("NEXT", for: .normal)
        button.layer.cornerRadius = 40
        button.addTarget(self, action: #selector(HalfViewController.goPrevPage(_:)), for: .touchUpInside)
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
        view.addSubview(nextButton)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
                
        view1.frame = CGRect(x: view.width / 6,
                             y: 50,
                             width: view.width / 6,
                             height: 30)
        
        view2.frame = CGRect(x: view.width / 6 - 50  ,
                             y: view1.bottom + 20,
                             width: 100,
                             height: 100)
        
        view3.frame = CGRect(x: view.width / 6 - 60,
                             y: view2.bottom + 20,
                             width: 120, height: 20)
        
        view4.frame = CGRect(x: view.width / 6 - 30,
                             y: view3.bottom + 10,
                             width: 60, height: 20)
        
        view5.frame = CGRect(x: 2 * (view.width) / 6 - 50  ,
                             y: view1.bottom + 20,
                             width: 100,
                             height: 100)
        
        view6.frame = CGRect(x: 2 * (view.width) / 6 - 60,
                             y: view2.bottom + 20,
                             width: 120, height: 20)
        
        view7.frame = CGRect(x: 2 * (view.width) / 6 - 30,
                             y: view3.bottom + 10,
                             width: 60, height: 20)
        
        nextButton.frame = CGRect(x: 20,
                                  y: view4.bottom + 40,
                                  width: view.width / 2 - 40,
                                  height: 80)
    }
    
}

