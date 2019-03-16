//
//  ViewController.swift
//  Color Picker
//
//  Created by Knobel, Niklas (MU-Student) on 3/16/19.
//  Copyright © 2019 Knobel, Niklas (MU-Student). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let dataSource = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    @IBOutlet weak var Pickerview: UIPickerView!
    
    @IBOutlet weak var Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Pickerview.dataSource = self
        Pickerview.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Label.text = dataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
}
