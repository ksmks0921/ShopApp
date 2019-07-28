//
//  loginTabFirst.swift
//  ShopApp
//
//  Created by ujs on 7/28/19.
//

import UIKit
import NMLocalizedPhoneCountryView
class loginTabFirst: UIViewController {

    @IBOutlet weak var selcountry: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cp = NMLocalizedPhoneCountryView(frame: CGRect(x: 0, y: 0, width: 120, height: 20))
        selcountry.leftView = cp
        selcountry.leftViewMode = .always
        
 
        
         selcountry.showDoneButtonOnKeyboard()

        
    
        
    }



}


extension UITextField {
    func showDoneButtonOnKeyboard() {
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(resignFirstResponder))
        
        var toolBarItems = [UIBarButtonItem]()
        toolBarItems.append(flexSpace)
        toolBarItems.append(doneButton)
        
        let doneToolbar = UIToolbar()
        doneToolbar.items = toolBarItems
        doneToolbar.sizeToFit()
        
        inputAccessoryView = doneToolbar
    }
}
