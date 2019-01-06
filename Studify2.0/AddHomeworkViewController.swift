//
//  AddHomeworkViewController.swift
//  Studify2.0
//
//  Created by Mahika Gupta on 12/27/18.
//  Copyright © 2018 RosalieW. All rights reserved.
//

import Foundation
import UIKit

class AddHomeworkViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //Homework Title
    
    var homeworkName: String = ""
    @IBOutlet weak var homeworkTextField: UITextField!
    
    //Due Date
    
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    var dueDate: String = ""
    
    @IBAction func dueDateChanged(_ sender: UIDatePicker) {
        //print(sender.date)
    }
    
    //Teacher
    
    var teacherName: String = ""
    @IBOutlet weak var teacherTextField: UITextField!
    
    //Class Name
    
    var className: String = ""
    
    @IBOutlet weak var classNamePicker: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    //Description
    
    var descriptionText: String = ""
    @IBOutlet weak var descriptionTextField: UITextField!
    
    //Other
    
    var otherText: String = ""
    @IBOutlet weak var otherTextField: UITextField!
    
    //DONE
    
    @IBAction func doneButtonClicked(_ sender: Any) {
        homeworkName = homeworkTextField.text!
        teacherName = teacherTextField.text!
        descriptionText = descriptionTextField.text!
        otherText = otherTextField.text!
        performSegue(withIdentifier: "addHWtoHWlist", sender: self)
        print(homeworkName)
        print(dueDatePicker.date)
        print(teacherName)
        print(descriptionText)
        print(otherText)
    }

    //Misc.
    override func viewDidLoad() {
        super.viewDidLoad()
        self.classNamePicker.delegate = self
        self.classNamePicker.dataSource = self
        pickerData = ["Math", "English", "History", "Science", "Music", "Art"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
