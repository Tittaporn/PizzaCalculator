//
//  PizzaPicker.swift
//  PizzaSSCaculator
//
//  Created by Lee McCormick on 2/8/21.
//

import UIKit

class PizzaPicker: UIPickerView {
    override  func awakeFromNib() {
        super.awakeFromNib()
        updateView()
    }
    
    func updateView() {
        self.backgroundColor = .orange
        self.layer.borderWidth = 2.5
        self.layer.borderColor = UIColor.darkSauce.cgColor
        self.addCornerRadius()
    }
}


