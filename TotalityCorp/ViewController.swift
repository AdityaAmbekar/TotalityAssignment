//
//  ViewController.swift
//  TotalityCorp
//
//  Created by Aditya Ambekar on 23/12/20.
//

import UIKit

class ViewController: UIViewController {
        
    private let blankView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()

    private let tableCardView: UITableView = {
        let tableView = UITableView()
        tableView.register(CardTableViewCell.self,
                           forCellReuseIdentifier: CardTableViewCell.identifier)
        tableView.clipsToBounds = true
        return tableView
    }()
    
    private var playLabel: UILabel = {
        let label = UILabel()
        label.text = "PLAY"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableCardView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableCardView.delegate = self
        tableCardView.dataSource = self
        
        //Adding subview
        view.addSubview(blankView)
        view.addSubview(playLabel)
        view.addSubview(tableCardView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        blankView.frame = CGRect(x: 0,
                                 y: view.top,
                                 width: view.width,
                                 height: 80)
        
        playLabel.frame = CGRect(x: view.width / 2 - 50,
                                 y: playLabel.bottom + 20,
                                 width: 100,
                                 height: 80)
        
        tableCardView.frame = CGRect(x: 0,
                                  y: playLabel.height + 10,
                                  width: view.width,
                                  height: view.height)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CardTableViewCell.identifier, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let vc = DetailsViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 550
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
}


extension UIView {
    
    public var width: CGFloat {
        return frame.width
    }
    
    public var height: CGFloat {
        return frame.height
    }
    
    public var top : CGFloat {
        return frame.origin.y
    }
    
    public var bottom: CGFloat {
        return frame.size.height + frame.origin.y
    }
    
    public var left: CGFloat {
        return frame.origin.x
    }
    
    public var right: CGFloat {
        return frame.size.width + frame.origin.x
    }
    
}
