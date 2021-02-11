//
//  PizzaButton.swift
//  PizzaSSCaculator
//
//  Created by Lee McCormick on 2/8/21.
//

import Foundation
import UIKit


class PizzaButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = .darkSauce
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.orangeAccent.cgColor
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont(name: FontNames.pizzaTextFont, size: 30)
        self.addCornerRadius()
    }
}
