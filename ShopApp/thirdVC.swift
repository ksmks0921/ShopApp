//
//  thirdVC.swift
//  ShopApp
//
//  Created by ujs on 7/18/19.
//

import UIKit

class thirdVC: UIViewController {

    @IBOutlet var topSection: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topSection.layer.shadowOffset = CGSize(width: 0, height: 2)
        topSection.layer.shadowOpacity = 0.6
        topSection.layer.shadowRadius = 1.0
        topSection.layer.masksToBounds = false
//        topSection.layer.shadowOffset = CGSize(width: 0, height: 2)
        // Do any additional setup after loading the view.
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
