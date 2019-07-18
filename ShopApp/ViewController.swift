//
//  ViewController.swift
//  ShopApp
//
//  Created by ujs on 7/9/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var onboardingContainer: UIView!
    
    @IBOutlet var logo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logo.font = UIFont(name: "araalmbon", size:50.0)
        logo.font = UIFont.systemFont(ofSize: 35)
        logo.textColor = UIColor(red:0.31, green:0.58, blue:0.74, alpha:1.0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
