//
//  thirdVC.swift
//  ShopApp
//
//  Created by ujs on 7/18/19.
//

import UIKit

class thirdVC: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    

    
    

    @IBOutlet weak var loginTab: UICollectionView!
    @IBOutlet var topSection: UIView!
    

    @IBOutlet weak var loginbutton: UIButton!
   
    @IBOutlet weak var band: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      

        topSection.layer.shadowOffset =  CGSize(width: 0.0, height: 2.0)
        topSection.layer.shadowOpacity = 0.5
        topSection.layer.shadowRadius = 0.3
        topSection.layer.masksToBounds = false
        topSection.layer.cornerRadius = 0
        
        
        
        let yourColor : UIColor = UIColor(red:0.31, green:0.58, blue:0.74, alpha:1.0)
        loginbutton.layer.borderColor =  yourColor.cgColor
        loginbutton.layer.borderWidth = 1
        
        
        let customFont = UIFont(name: "AraAlmBon-Regular", size: 35)
        band.font = customFont
        band.textColor = UIColor(red:0.31, green:0.58, blue:0.74, alpha:1.0)
        
    
//        topSection.layer.shadowOffset = CGSize(width: 0, height: 2)
        // Do any additional setup after loading the view.
    }
    @IBAction func createNew(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "createAccount") as! createAccountVC

        self.navigationController?.pushViewController(controller, animated: true)
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.loginTab.frame.size.width , height: self.loginTab.frame.size.height - 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10.0,
                            left: 0,
                            bottom:0,
                            right: 0)
    }
 
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "logInTabCell", for: indexPath)

        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
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
