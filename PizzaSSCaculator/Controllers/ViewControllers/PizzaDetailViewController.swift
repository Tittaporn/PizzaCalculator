//
//  PizzaDetailViewController.swift
//  PizzaSSCaculator
//
//  Created by Lee McCormick on 2/8/21.
//

import UIKit

class PizzaDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var pizzasAmountLabel: PizzaLabel!
    @IBOutlet weak var pizzaImage: UIImageView!
    
    @IBOutlet weak var pizzaPartyLabel: PizzaLabelTitle!
    // MARK: - Properties
    var pizzas: Int? {
        didSet {
            loadViewIfNeeded()
            updateViews()
        }
    }
    var selectedRestuarant: String?
    
    // MARK: - Actions
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cheeseYellow
        //animateImages()
    }
    
    // MARK: - Methods
    func updateViews() {
        let images: [UIImage] = [#imageLiteral(resourceName: "pizza"), #imageLiteral(resourceName: "pizza2"), #imageLiteral(resourceName: "pizza3"),#imageLiteral(resourceName: "pizza4")]
        pizzaImage.image = UIImage.animatedImage(with: images, duration: 2)
        pizzaPartyLabel.text = "Pizza Party. \nLet's eat 🍕🍕🍕"
        guard let pies = pizzas else {return}
        if let selectedResturant = selectedRestuarant {
            pizzasAmountLabel.text = "🍕 You need to order \n\(pies) pies!🍕 \nfrom \(selectedResturant)."
        }
        
        pizzasAmountLabel.text = "🍕 You need to order \n\(pies) pies!🍕"
    }
}
