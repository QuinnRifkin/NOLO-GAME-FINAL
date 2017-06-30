//
//  WelcomeViewController.swift
//  DrowsyDrivingFinal
//
//  Created by Tannay Chandhok on 6/29/17.
//  Copyright © 2017 UserFreedom. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate {
    
    let Name = UserDefaults.standard
    
    let Birthday = UserDefaults.standard

    @IBOutlet weak var NameInput: UITextField!
    @IBOutlet weak var DateInput: UITextField!
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBOutlet weak var toolbar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.donePressed(sender:)))

        DateInput.inputAccessoryView = toolbar
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        moveTextField(textField: NameInput, moveDistace: -50, up: true)
        moveTextField(textField: DateInput, moveDistace: -50, up: true)
        if(textField == DateInput){
           // DateInput.text = month + " " + day + ", " + year
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        moveTextField(textField: NameInput, moveDistace: -50, up: false)
        moveTextField(textField: DateInput, moveDistace: -50, up: false)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == NameInput){
            DateInput.becomeFirstResponder()
            //setName(name: NameInput.text!)
        }
        else{
            DateInput.resignFirstResponder()
            DatePicker.resignFirstResponder()
        }
        return true
    }
    
    func moveTextField(textField: UITextField, moveDistace: Int, up: Bool){
        let duration = 0.3
        let movement: CGFloat = CGFloat(up ? moveDistace : -moveDistace)
        
        UIView.beginAnimations("TextField", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(duration)
        self.view?.frame = (self.view?.frame)!.offsetBy(dx: 0, dy: movement)
        UIView.commitAnimations()
    }
    
    func donePressed(sender: UIBarButtonItem){
    
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
