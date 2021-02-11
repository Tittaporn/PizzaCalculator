//
//  PizzaLabels.swift
//  PizzaSSCaculator
//
//  Created by Lee McCormick on 2/8/21.
//

import UIKit
class PizzaLabel: UILabel {
    override  func awakeFromNib() {
        super.awakeFromNib()
        updateFont(fontName: FontNames.pizzaTextFont, textColor: .darkSauce)
    }
    
    func updateFont(fontName: String, textColor: UIColor) {
        // let size = 35
        self.font = UIFont(name: fontName, size: 35)
        self.textColor = textColor
        self.addCornerRadius()
        self.layer.masksToBounds = true
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = CGFloat(0.5)
    }
}

class PizzaLabelTitle: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        updateFont()
    }
    
    func updateFont() {
        self.font = UIFont(name: FontNames.pizzaTitleFont, size: 50)
        self.textColor = .darkSauce
        self.numberOfLines = 0
        self.addCornerRadius()
        self.layer.masksToBounds = true
    }
}

