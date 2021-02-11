//
//  PizzaTextField.swift
//  PizzaSSCaculator
//
//  Created by Lee McCormick on 2/8/21.
//

import UIKit

class PizzaTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.addCornerRadius()
        self.setupPlaceholderText()
        self.textColor = .darkSauce
        self.backgroundColor = .cheeseYellow
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.orangeAccent.cgColor
        self.layer.masksToBounds = true
    }
    
    func setupPlaceholderText() {
        let currentPlaceholder = self.placeholder ?? ""
        self.attributedPlaceholder = NSAttributedString(string: currentPlaceholder, attributes: [
            NSAttributedString.Key.foregroundColor : UIColor.orangeAccent,
            
            NSAttributedString.Key.font : UIFont(name: FontNames.pizzaTextFont, size: 16)!
        ])
    }
    
    func updateFont(){
        guard let size = self.font?.pointSize else {return}
        self.font = UIFont(name: FontNames.pizzaTextFont, size: size)
    }
}

