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
    
    
    
    @IBOutlet var firstCollection: UICollectionView!
    @IBOutlet var secondCollection: UICollectionView!
    @IBOutlet var thirdCollection: UICollectionView!
    
    

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        firstCollection.contentInset = UIEdgeInsets(top: 10.0,
                                                    left: 10.0,
                                                    bottom: 10.0,
                                                    right: 10.0)
        secondCollection.contentInset = UIEdgeInsets(top: 10.0,
                                                     left: 30.0,
                                                     bottom: 10.0,
                                                     right: 30.0)

        
        topView.layer.shadowOffset =  CGSize(width: 0.0, height: 2.0)
        topView.layer.shadowOpacity = 0.5
        topView.layer.shadowRadius = 0.3
        topView.layer.masksToBounds = false
        topView.layer.cornerRadius = 0
        
 
        //                first_collection.contentView.layer.borderWidth = 1
        //        firstCell.contentView.layer.borderColor = [UIColor clearColor].CGColor

        
        //        firstCell.layer.shadowColor = [UIColor blackColor].CGColor
 

        searchSection.layer.cornerRadius = 8
        
        
        leftImage.layer.cornerRadius = 6
        
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(ImageClicked(gesture:)))
        rightButton.isUserInteractionEnabled = true
        rightButton.addGestureRecognizer(singleTap)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func ImageClicked(gesture: UIGestureRecognizer) {
//        let controller = self.storyboard?.instantiateViewController(withIdentifier: "sbBlue") as! SecondVC
//
//
//        self.navigationController?.pushViewController(controller, animated: true)
        let indexPath = IndexPath(item: 1, section: 0)
   
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.firstCollection {
            return 4 // Replace with count of your data for collectionViewA
        }
        else if collectionView == self.secondCollection {
            return 4
        }
        else {
            return 4
        }
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        if collectionView == self.firstCollection {
           return CGSize(width: collectionView.frame.size.width, height: 200)
        }
            
        else if collectionView == self.secondCollection {
        
          return CGSize(width: collectionView.frame.size.width, height: 150)
        }
        else {
            return CGSize(width: collectionView.frame.size.width, height: 150)
        }
       
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        if collectionView == self.firstCollection {
             return 3.0
        }
            
        else if collectionView == self.secondCollection {
            
             return 3.0
        }
        else {
             return 3.0
        }
        
       
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.firstCollection {
            return CGSize(width: self.view.frame.size.width - 30, height: 180)
        }
       else if collectionView == self.secondCollection{
            
             return CGSize(width: self.view.frame.size.width - 60, height: 130)
        }
        else {
             return CGSize(width: self.view.frame.size.width - 60, height: 130)
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
            
        else if collectionView == self.secondCollection {
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
        
        else {
              let third_collection = collectionView.dequeueReusableCell(withReuseIdentifier: "third_cell", for: indexPath)
             return third_collection
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

