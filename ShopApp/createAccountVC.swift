//
//  createAccountVC.swift
//  ShopApp
//
//  Created by ujs on 7/25/19.
//

import UIKit
import DLRadioButton

class createAccountVC: UIViewController {

    var cityPicker: CityPickerViewController?
    
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var logo: UILabel!
    @IBOutlet weak var selectCountry: UIButton!
    
    @IBAction func selectCountry(_ sender: Any) {
        
        cityPicker = CityPickerViewController()
        cityPicker?.delegate = self
        self.cityPicker?.showCityPicker(self, backgroundColor: UIColor.blue, blurView_hidden: false)
        
    }
    @IBOutlet weak var maleBtn: DLRadioButton!
    @IBAction func selectSex(_ sender: DLRadioButton) {
        if sender.tag == 1 {
            print("Male")
        }
        else {
            print("Female")
        }
        
    }
    
    @IBAction func goBack(_ sender: Any) {
        
         self.navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customFont = UIFont(name: "AraAlmBon-Regular", size: 35)
        logo.font = customFont
        logo.textColor = UIColor(red:0.31, green:0.58, blue:0.74, alpha:1.0)
        
        
        let yourColor : UIColor = UIColor(red:0.31, green:0.58, blue:0.74, alpha:1.0)
        selectCountry.layer.borderColor =  yourColor.cgColor
        selectCountry.layer.borderWidth = 1
        
        let backImage = UIImage(named: "right-arrow")
        backbutton.setImage(backImage, for: .normal)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension createAccountVC: CityPickerViewControllerDelegate {
    func CityPickerDidSelectRow(_ nation: String, city: String) {
        
        print("\(nation), \(city)")
    }
    
    func CityPickerDidPressedCancelButton() {
        print("cancelled")
    }
    
    func CityPickerDidPressedSelectButton(_ CityPicker: CityPickerViewController, nation: String, city: String) {
        print("\(nation), \(city)")
    }
    
    
}

