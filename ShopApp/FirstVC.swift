//
//  FirstVC.swift
//  ShopApp
//
//  Created by ujs on 7/17/19.
//

import UIKit

class FirstVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    


    @IBOutlet var topView: UIView!
    @IBOutlet var searchSection: UIView!
    @IBOutlet var leftImage: UIImageView!
    @IBOutlet weak var rightButton: UIImageView!
    @IBOutlet weak var cartButton: UIImageView!
    @IBOutlet weak var notificationButton: UIImageView!
    
    
    
    @IBOutlet var firstCollection: UICollectionView!
    @IBOutlet var secondCollection: UICollectionView!
    @IBOutlet var thirdCollection: UICollectionView!
    
    

   
    
    var pageControl = UIPageControl()
//    func configurePageControl() {
//        // The total number of pages that are available is based on how many available colors we have.
//        pageControl = UIPageControl(frame: CGRect(x: 0,y: UIScreen.main.bounds.maxY - 50,width: UIScreen.main.bounds.width,height: 50))
//        self.pageControl.numberOfPages = orderedViewControllers.count
//        self.pageControl.currentPage = 0
//        self.pageControl.tintColor = UIColor.black
//        self.pageControl.pageIndicatorTintColor = UIColor.white
//        self.pageControl.currentPageIndicatorTintColor = UIColor.black
//        self.view.addSubview(pageControl)
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        
        topView.layer.shadowOffset =  CGSize(width: 0.0, height: 2.0)
        topView.layer.shadowOpacity = 0.5
        topView.layer.shadowRadius = 0.3
        topView.layer.masksToBounds = false
        topView.layer.cornerRadius = 0
        

 

        searchSection.layer.cornerRadius = 8
        
        leftImage.layer.cornerRadius = 6
        
        //imageview into btn
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(ImageClicked(gesture:)))
        rightButton.isUserInteractionEnabled = true
        rightButton.addGestureRecognizer(singleTap)
        
        let cartTap = UITapGestureRecognizer(target: self, action: #selector(CartClicked(gesture:)))
        cartButton.isUserInteractionEnabled = true
        cartButton.addGestureRecognizer(cartTap)
        
        let notificationTap = UITapGestureRecognizer(target: self, action: #selector(NotiClicked(gesture:)))
        notificationButton.isUserInteractionEnabled = true
        notificationButton.addGestureRecognizer(notificationTap)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func ImageClicked(gesture: UIGestureRecognizer) {
//        let controller = self.storyboard?.instantiateViewController(withIdentifier: "sbBlue") as! SecondVC
//
//
//        self.navigationController?.pushViewController(controller, animated: true)
//        let indexPath = IndexPath(item: 1, section: 0)
        
    }
    
    @objc func CartClicked(gesture: UIGestureRecognizer) {

                let cartController = self.storyboard?.instantiateViewController(withIdentifier: "cartVC") as! CartVC

                self.navigationController?.pushViewController(cartController, animated: true)
        
    }
    
    @objc func NotiClicked(gesture: UIGestureRecognizer) {
        
        let notificationController = self.storyboard?.instantiateViewController(withIdentifier: "notificationVC") as! notiVC
        
        self.navigationController?.pushViewController(notificationController, animated: true)
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.firstCollection {
            return 4 // Replace with count of your data for collectionViewA
        }
        else{
            return 4
        }
     
        
    }
//
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        if collectionView == self.firstCollection {
//           return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
//        }
//
//        else  {
//
//          return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
//        }
//
//
//    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        if collectionView == self.firstCollection {
             return 3.0
        }
            
        else {
            
             return 3.0
        }
    
        
       
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        if collectionView == self.firstCollection {
//            return 0
//        }
//
//        else {
//
//            return 0
//        }
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.firstCollection {
        
            return CGSize(width: collectionView.frame.size.width - 10, height: collectionView.frame.size.height - 10)
        }
       else {
            
             return CGSize(width: collectionView.frame.size.width - 60, height:collectionView.frame.size.height - 10)
        }
     
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == self.firstCollection {
        return UIEdgeInsets(top: 0,
                            left: 5,
                            bottom:0,
                            right: 5)
        }
        else {
            return UIEdgeInsets(top: 0,
                                left: 30,
                                bottom:0,
                                right: 30)
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.firstCollection {
            let first_collection = collectionView.dequeueReusableCell(withReuseIdentifier: "first_cell", for: indexPath)
                first_collection.layer.cornerRadius = 2
//                first_collection.contentView.layer.borderWidth = 1
                //        firstCell.contentView.layer.borderColor = [UIColor clearColor].CGColor
                first_collection.layer.masksToBounds = false
            
                //        firstCell.layer.shadowColor = [UIColor blackColor].CGColor
                first_collection.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
                first_collection.layer.shadowRadius = 2.0
                first_collection.layer.shadowOpacity = 0.5
            

            //        firstCell.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:cell.bounds cornerRadius:cell.contentView.layer.cornerRadius].CGPath
            // Set up cell
            return first_collection
        }
            
        else {
            
            let second_collection = collectionView.dequeueReusableCell(withReuseIdentifier: "second_cell", for: indexPath)
            second_collection.layer.cornerRadius = 2
            //                first_collection.contentView.layer.borderWidth = 1
            //        firstCell.contentView.layer.borderColor = [UIColor clearColor].CGColor
            second_collection.layer.masksToBounds = false
            
            //        firstCell.layer.shadowColor = [UIColor blackColor].CGColor
            second_collection.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
            second_collection.layer.shadowRadius = 2.0
            second_collection.layer.shadowOpacity = 0.5
   
            // ...Set up cell
            
            return second_collection
        }
        
     
      
    }
//    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        <#code#>
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

