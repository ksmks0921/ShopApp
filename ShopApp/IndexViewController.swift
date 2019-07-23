//
//  IndexViewController.swift
//  ShopApp
//
//  Created by ujs on 7/22/19.
//

import UIKit

class IndexViewController: UIViewController {

    init(index: Int) {
        super.init(nibName: nil, bundle: nil)
        title = "View \(index)"
        
        let frame = CGRect(x: 10, y: 10, width: self.view.frame.width / 2 , height: self.view.frame.height)
        
        let label = UILabel(frame: frame)
        label.font = UIFont.systemFont(ofSize: 70, weight: UIFont.Weight.thin)
        label.textColor = UIColor(red: 95/255, green: 102/255, blue: 108/255, alpha: 1)
        label.text = "\(index)"
        label.sizeToFit()
        
        view.addSubview(label)
        view.constrainCentered(label)
        view.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
