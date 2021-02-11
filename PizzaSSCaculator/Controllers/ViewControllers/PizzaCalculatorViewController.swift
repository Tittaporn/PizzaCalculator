//
//  PizzaCalculatorViewController.swift
//  PizzaSSCaculator
//
//  Created by Lee McCormick on 2/8/21.
//

import UIKit

class PizzaCalculatorViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var peopleCountTextField: UITextField!
    @IBOutlet weak var hungerSegmentedControl: UISegmentedControl!
    @IBOutlet weak var restuarantsPickerView: UIPickerView!
    
    // MARK: - Properties
    var selectedRestuarant: String = CalculatorController.shared.resturants[0]
    var pizzas: Int?
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        restuarantsPickerView.delegate = self
        restuarantsPickerView.dataSource = self
        setupView()
    }
    
    // MARK: - Actions
    @IBAction func calculateButtonTapped(_ sender: Any) {
        guard let peopleAmount = peopleCountTextField.text else {return}
        guard let peopleDouble = Double(peopleAmount) else {return}
        self.pizzas = CalculatorController.shared.caculatePizzasPerParty(hunger: hungerSegmentedControl.selectedSegmentIndex, people: peopleDouble)
    }
    
    // MARK: - Helper Fuctions
    func setupView() {
        self.view.backgroundColor = .cheeseYellow
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCalculateVC" {
            guard let destination = segue.destination as? PizzaDetailViewController else {return}
            destination.pizzas = self.pizzas
        }
    }
}

// MARK: - Extensions
extension PizzaCalculatorViewController: UIPickerViewAccessibilityDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CalculatorController.shared.resturants.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CalculatorController.shared.resturants[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.selectedRestuarant = CalculatorController.shared.resturants[row]
        print(selectedRestuarant)
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var pickerLabel: UILabel? = (view as? UILabel)
        if pickerLabel == nil {
            pickerLabel = UILabel()
            pickerLabel?.font = UIFont(name: FontNames.pizzaTextFont, size: 20)
            pickerLabel?.textAlignment = .center
        }
        pickerLabel?.text = CalculatorController.shared.resturants[row]
        pickerLabel?.textColor = UIColor.spaceBlack
        
        return pickerLabel!
    }
}
