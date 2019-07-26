//
//  ProductVC.swift
//  ShopApp
//
//  Created by ujs on 7/22/19.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
 
    
    let items = ["1","2","3","4"]
    
    let productImages: [UIImage] = [
        
        UIImage(named: "ph_drink_cold")!,
        UIImage(named: "ph_drink_cold")!,
        UIImage(named: "ph_drink_cold")!,
        UIImage(named: "ph_drink_cold")!
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
//        layout.minimumInteritemSpacing = 5
//        layout.itemSize = CGSize(width: self.collectionView.frame.size.width/2, height: self.collectionView.frame.size.height/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.size.width/2 - 10, height: self.collectionView.frame.size.width/2 - 10 +  100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5.0
    }
    
  
    
    
    // the collectionView of product items
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! ProductItemCell
        
        cell.productPrice.text = items[indexPath.item]
        cell.productimage.image = productImages[indexPath.item]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath.item)
        
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }

}
