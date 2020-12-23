//
//  CustomProgressView.swift
//  TotalityCorp
//
//  Created by Aditya Ambekar on 24/12/20.
//

import Foundation
import UIKit

class CustomProgressView: UIProgressView {

    var pheight:CGFloat = 1.0
    var pwidth:CGFloat = 1.0
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        let size:CGSize = CGSize.init(width: pwidth, height: pheight)
        return size
    }

}
