//
//  thirdVC.swift
//  ShopApp
//
//  Created by ujs on 7/18/19.
//

import UIKit
import Parchment


class thirdVC: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    

    
    

    @IBOutlet weak var loginTab: UICollectionView!
    @IBOutlet weak var tabView: UIView!
    @IBOutlet var topSection: UIView!
    @IBOutlet weak var loginPart: UIView!
    
    
//    @IBOutlet weak var telTab: UILabel!
//    @IBOutlet weak var emailTab: UILabel!
//

//    @IBOutlet weak var animationborder: UIView!
    
    @IBOutlet weak var loginbutton: UIButton!
   
    @IBOutlet weak var band: UILabel!
    var rightflag = true
    var leftflag = false
    
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
        

    

        
        // login select
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "loginWithTel")
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "loginWithEmail")
        
                // Initialize a FixedPagingViewController and pass
                // in the view controllers.
        let pagingViewController = FixedPagingViewController(viewControllers: [
            firstViewController,
            secondViewController
            ])
  
        addChild(pagingViewController)
        loginPart.addSubview(pagingViewController.view)
        loginPart.constrainToEdges(pagingViewController.view)
        pagingViewController.didMove(toParent: self)
        
        //country select
        
     
        
    
        
    }
//    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer) {
//
//        if (sender.direction == .left) {
//            print("Swipe Left")
//
//        }
//
//        if (sender.direction == .right) {
//            print("Swipe Right")
//
//        }
//    }

    
    
    @IBAction func createNew(_ sender: Any) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "createAccount") as! createAccountVC

        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.loginTab.frame.size.width , height: self.loginTab.frame.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0,
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

   
        

//
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        let pageWidth = loginTab.frame.size.width
//        let currentPage = loginTab.contentOffset.x / pageWidth
//
//        if (currentPage == 0)
//        {
//
//          print(currentPage)
//            self.emailTab.textColor = UIColor.black
//            self.telTab.textColor = UIColor(red:0.31, green:0.58, blue:0.74, alpha:1.0)
//
//            let duration:Double = 1
//            if (self.rightflag != true){
//                UIView.animate(withDuration: duration){
//                    self.moveRight(view: self.animationborder)
//                    self.rightflag = true
//                    self.leftflag = false
//                }
//
//            }
//
//
//
//        }
//        else
//        {
//
//            print(currentPage)
//            self.telTab.textColor = UIColor.black
//            self.emailTab.textColor = UIColor(red:0.31, green:0.58, blue:0.74, alpha:1.0)
//            let duration:Double = 1
//            if(self.leftflag != true){
//                UIView.animate(withDuration: duration){
//                    self.moveLeft(view: self.animationborder)
//                    self.leftflag = true
//                    self.rightflag = false
//                }
//            }
//
//
//        }
//    }
    
//    func moveLeft(view: UIView){
//        view.center.x += view.frame.size.width
//    }
//    func moveRight(view:UIView){
//        view.center.x -= view.frame.size.width
//    }
    /*
    // MARK: - Navigation

	    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension thirdVC: UIGestureRecognizerDelegate {
    
}
