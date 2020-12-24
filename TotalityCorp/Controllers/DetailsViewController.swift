//
//  DetailsViewController.swift
//  TotalityCorp
//
//  Created by Aditya Ambekar on 23/12/20.
//

import UIKit

class DetailsViewController: UIViewController, UIAdaptivePresentationControllerDelegate {
    
    private var iconViewX = CGFloat()
    private var iconViewY = CGFloat()
    
    private var downloadButtonX = CGFloat()
    private var downloadButtonY = CGFloat()
    
    private var bottomofStack = CGFloat()
    
    private let iconView: UIView = {
        let view = UIView();
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        return view
    }()
    
    private let appNameLabel: UILabel = {
        let label = UILabel()
        label.text = "CANDY\nBUST"
        label.numberOfLines = 0
        label.font = label.font.withSize(20)
        return label
    }()
    
    private let closeButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "xmark.circle"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(closeButtonPressed), for: .touchUpInside)
        button.contentMode = .scaleAspectFit
        return button
    }()
    
    private let topStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .center
        return stackView
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting"
        label.numberOfLines = 0
        label.font = label.font.withSize(15)
        return label
    }()
    
    private let readMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("READ MORE", for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(13)
        button.setTitleColor(.green, for: .normal)
        
        return button
    }()
    
    private let imageStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let firstView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        //        view.clipsToBounds = true
        return view
    }()
    
    
    private let secondView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        //        view.clipsToBounds = true
        return view
    }()
    
    private let downloadButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.setTitle("DOWNLOAD \n   30 MB", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.layer.cornerRadius = 40
        button.addTarget(self, action: #selector(downloadButtonPressed), for: .touchUpInside)
        return button
    }()
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.isHidden = true
        button.backgroundColor = .link
        button.setTitle("PLAY", for: .normal)
        button.layer.cornerRadius = 40
        button.addTarget(self, action: #selector(playButtonPressed), for: .touchUpInside)
        return button
    }()
    
    private let progressBar: CustomProgressView = {
        let bar = CustomProgressView(progressViewStyle: .bar)
        bar.progress = 0
        bar.progressViewStyle = .bar
        bar.trackTintColor = UIColor(red: 0.8196, green: 1, blue: 0.8353, alpha: 1.0)
        bar.progressTintColor = .green
        bar.layer.cornerRadius = 40
        bar.clipsToBounds = true
        bar.layer.sublayers![1].cornerRadius = 40
        bar.subviews[1].clipsToBounds = true
        bar.isHidden = true
        return bar
    }()
    
    private let progressLabel: UILabel = {
        let label = UILabel()
        label.isHidden = true
        label.text = "DOWNLOAD \n   30 MB"
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private let cancelButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "xmark.circle"), for: .normal)
        button.imageView?.contentMode = .scaleToFill
        button.tintColor = .black
        button.backgroundColor = .yellow
        button.isHidden = true
        button.layer.cornerRadius = 30
        button.imageView?.layer.cornerRadius = 30
        button.addTarget(self, action: #selector(cancelButtonPressed), for: .touchUpInside)
        return button
    }()
    
    var timer = Timer()
    var secondsPassed = 0
    
    @objc func playButtonPressed() {
        
        let vc = HalfViewController()
        vc.modalPresentationStyle = .custom
        present(vc, animated: true, completion: nil)
        
    }
    
    @objc func cancelButtonPressed() {
        
        downloadButton.isHidden = false
        progressBar.isHidden = true
        cancelButton.isHidden = true
        progressLabel.isHidden = true
        
        
        
    }
    
    @objc func downloadButtonPressed() {
        
        downloadButton.isHidden = true
        progressBar.isHidden = false
        cancelButton.isHidden = false
        progressLabel.isHidden = false
        
        UIView.animate(withDuration: 1, delay: 0,
                       options: []) {

            self.progressBar.frame.size.width -= 80
            self.cancelButton.alpha = 1.0
            self.view.layoutIfNeeded()
            
        } completion: { _ in
        }
        
        timer.invalidate()
        progressLabel.text = "DOWNLOAD \n   30 MB"
        progressBar.progress = 0
        secondsPassed = 0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        
        if secondsPassed < 3 {
            secondsPassed += 1
            let percentage = Float(secondsPassed) / Float(3)
            progressBar.progress = percentage
            
            DispatchQueue.main.async {
                self.progressLabel.text = "\(10 * self.secondsPassed) / 30 MB"
            }
            
        } else{
            //show play button
            progressBar.isHidden = true
            cancelButton.isHidden = true
            progressLabel.isHidden = true
            playButton.isHidden = false
        }
        
    }
    
    @objc func closeButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    //    init(iconViewX: CGFloat, iconViewY: CGFloat, downloadButtonX: CGFloat, downloadButtonY: CGFloat) {
    //        super.init(nibName: nil, bundle: nil)
    //        self.iconViewX = iconViewX
    //        self.iconViewY = iconViewY
    //        self.downloadButtonX = downloadButtonX
    //        self.downloadButtonY = downloadButtonY
    //    }
    //
    //    required init?(coder: NSCoder) {
    //        fatalError("init(coder:) has not been implemented")
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        progressBar.pheight = 80
        progressBar.pwidth = 2 * (view.width / 2) - 120
        
        //Adding Subviews
        view.addSubview(topStackView)
        topStackView.addSubview(iconView)
        topStackView.addSubview(appNameLabel)
        topStackView.addSubview(closeButton)
        view.addSubview(descriptionLabel)
        view.addSubview(readMoreButton)
        view.addSubview(imageStackView)
        imageStackView.addSubview(firstView)
        imageStackView.addSubview(secondView)
        view.addSubview(downloadButton)
        view.addSubview(progressBar)
        view.addSubview(progressLabel)
        view.addSubview(cancelButton)
        view.addSubview(playButton)
        
    }
    
    func startupAnimation() {
        
        UIView.animate(withDuration: 1, delay: 0,
                       options: []) {
            
            self.appNameLabel.alpha = 1.0
            self.appNameLabel.transform = CGAffineTransform(translationX: -40, y: 0)
            
            
        } completion: { _ in
            
            UIView.animate(withDuration: 1, delay: 0,
                           options: []) {
                
                self.descriptionLabel.alpha = 1.0
                
                self.closeButton.alpha = 1.0
                self.closeButton.transform = CGAffineTransform(translationX: 0, y: -30)
                
                self.secondView.alpha = 1.0
                self.secondView.transform = CGAffineTransform(translationX: -(self.view.width), y: 0)
                
            } completion: { _ in
                self.readMoreButton.alpha = 1.0
            }
            
            UIView.animate(withDuration: 0.8, delay: 0,
                           options: []) {
                
                self.firstView.alpha = 1.0
                self.firstView.transform = CGAffineTransform(translationX: -(self.view.width), y: 0)
            } completion: { _ in
            }
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        topStackView.frame = CGRect(x: 20,
                                    y: 20,
                                    width: view.width,
                                    height: view.height / 3 - 100)
        
        iconView.frame = CGRect(x: topStackView.left - 20,
                                y: topStackView.top + 30,
                                width: 100, height: 100)
        
        appNameLabel.alpha = 0.0
        appNameLabel.frame = CGRect(x: iconView.right + 60,
                                    y: topStackView.top + 30,
                                    width: view.width - 215,
                                    height: 80)
        
        closeButton.alpha = 0.0
        closeButton.frame = CGRect(x: appNameLabel.right - 20 ,
                                   y: topStackView.top + 75,
                                   width: 30, height: 30)
        
        descriptionLabel.alpha = 0.0
        descriptionLabel.frame = CGRect(x: view.left + 20,
                                        y: topStackView.bottom - 70,
                                        width: view.width - 40, height: view.height / 3 - 150)
        
        readMoreButton.alpha = 0.0
        readMoreButton.frame = CGRect(x: 0,
                                      y: descriptionLabel.bottom - 30,
                                      width: view.width,
                                      height: 20)
        
        imageStackView.frame = CGRect(x: 0,
                                      y: readMoreButton.bottom + 30,
                                      width: view.width, height: view.height / 2)
        
        firstView.alpha = 0.0
        firstView.frame = CGRect(x: 10 + view.width,
                                 y: imageStackView.top + 10,
                                 width: imageStackView.width / 2 - 15,
                                 height: imageStackView.height - 20)
        
        secondView.alpha = 0.0
        secondView.frame = CGRect(x: firstView.width + 20 + view.width,
                                  y: imageStackView.top + 10,
                                  width: imageStackView.width / 2 - 15,
                                  height: imageStackView.height - 20)
        
        bottomofStack = imageStackView.bottom
        
        progressBar.frame = CGRect(x: 20,
                                   y: imageStackView.bottom + 20,
                                   width: view.width - 40,
                                   height: 80)
        
        progressLabel.frame = CGRect(x: 20,
                                     y: imageStackView.bottom + 20,
                                     width: 2 * (view.width / 2) - 120,
                                     height: 80)
        
        downloadButton.frame = CGRect(x: 20,
                                      y: imageStackView.bottom + 20,
                                      width: view.width - 40,
                                      height: 80)
        
        cancelButton.alpha = 0.0
        cancelButton.frame = CGRect(x: progressBar.right + 10,
                                    y: imageStackView.bottom + 30,
                                    width: 50,
                                    height: 50)
        
        playButton.frame = CGRect(x: 20,
                                  y: imageStackView.bottom + 20,
                                  width: view.width - 40,
                                  height: 80)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startupAnimation()
        
    }
    
}

