//
//  FirstVC.swift
//  ShopApp
//
//  Created by ujs on 7/17/19.
//

import UIKit

class FirstVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    


    @IBOutlet var topView: UIView!
    @IBOutlet var searchSection: UIView!
    @IBOutlet var leftImage: UIImageView!
    
    @IBOutlet var firstCollection: UICollectionView!
 
 
    @IBOutlet var secondCollection: UICollectionView!
    
  
    @IBOutlet var thirdCollection: UICollectionView!
    
    

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        firstCollection.contentInset = UIEdgeInsets(top: 50.0,
                                                    left: 20.0,
                                                    bottom: 50.0,
                                                    right: 20.0)
//        secondCollection.contentInset = UIEdgeInsets(top: 50.0,
//                                                     left: 20.0,
//                                                     bottom: 50.0,
//                                                     right: 20.0)

        topView.layer.shadowOffset =  CGSize(width: 0.0, height: 2.0)
        topView.layer.shadowOpacity = 0.6
        topView.layer.shadowRadius = 0.0
        topView.layer.masksToBounds = false
        topView.layer.cornerRadius = 0
        
        searchSection.layer.cornerRadius = 8
        
        
        leftImage.layer.cornerRadius = 6
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.firstCollection {
            return 4 // Replace with count of your data for collectionViewA
        }
        
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        if collectionView == self.firstCollection {
           return CGSize(width: collectionView.frame.size.width, height: 200)
        }
            
        else {
        
          return CGSize(width: collectionView.frame.size.width, height: 150)
        }
       
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        if collectionView == self.firstCollection {
             return 3.0
        }
            
        else {
            
             return 3.0
        }
        
       
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.firstCollection {
            let first_collection = collectionView.dequeueReusableCell(withReuseIdentifier: "first_cell", for: indexPath)
            
            // Set up cell
            return first_collection
        }
            
        else {
            let second_collection = collectionView.dequeueReusableCell(withReuseIdentifier: "second_cell", for: indexPath)
            
            // ...Set up cell
            
            return second_collection
        }
      
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
