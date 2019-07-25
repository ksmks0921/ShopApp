//
//  ExpandableHeaderView.swift
//  ShopApp
//
//  Created by ujs on 7/18/19.
//

import UIKit

protocol ExpandableHeaderViewDelegate {
    func toggleSection(header: ExpandableHeaderView, section: Int)
}
class ExpandableHeaderView: UITableViewHeaderFooterView {

    var delegate: ExpandableHeaderViewDelegate?
    var section: Int!
    var imageView:UIImageView!
    var background_image: String!
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selectHeaderAction)))
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func selectHeaderAction(gestureRecognizer: UITapGestureRecognizer){
        let cell = gestureRecognizer.view as! ExpandableHeaderView
        delegate?.toggleSection(header: self, section: cell.section)
    }
    
    func customInit(title: String, section: Int, delegate: ExpandableHeaderViewDelegate, background_image: String){
        self.textLabel?.text = title
        self.textLabel?.textAlignment = .right
        self.section = section
        self.delegate = delegate
        self.background_image = background_image
        
   
        
        self.contentView.backgroundColor = UIColor.darkGray

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.textLabel?.textColor = UIColor.white
        self.textLabel?.textAlignment  = .right
//        self.imageView = UIImageView(frame: (x: 0, y: 0, width: self.contentView.frame.width / 2 , height: self.contentView.frame.height))\
        
        let frame = CGRect(x: 0, y: 0, width: self.contentView.frame.width / 2 , height: self.contentView.frame.height)
        self.imageView = UIImageView(frame: frame)
        self.contentView.addSubview(imageView)
        self.imageView.image = UIImage(named: "bar_food")
        self.imageView.contentMode = .scaleAspectFit
        
        
  
        
    }
}
