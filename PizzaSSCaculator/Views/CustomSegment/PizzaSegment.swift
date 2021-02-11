//
//  PizzaSegment.swift
//  PizzaSSCaculator
//
//  Created by Lee McCormick on 2/8/21.
//

import UIKit

class PizzaSegment: UISegmentedControl {
    override  func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }

    func setupView() {
        self.backgroundColor = .cheeseYellow
        self.selectedSegmentTintColor = .sauceRed
        self.layer.borderWidth = 2.5
        self.layer.borderColor = UIColor.darkSauce.cgColor
        self.setTitleTextAttributes([.foregroundColor : UIColor.cheeseYellow], for: .selected)
        self.addCornerRadius()
    }
}


