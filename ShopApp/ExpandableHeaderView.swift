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
    
    func customInit(title: String, section: Int, delegate: ExpandableHeaderViewDelegate){
        self.textLabel?.text = title
        self.textLabel?.textAlignment = .right
        self.section = section
        self.delegate = delegate
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.textLabel?.textColor = UIColor.white
        self.textLabel?.textAlignment  = .right
//        self.imageView = UIImageView(frame: (x: 0, y: 0, width: self.contentView.frame.width / 2 , height: self.contentView.frame.height))\
        let frame = CGRect(x: 0, y: 0, width: self.contentView.frame.width / 2 , height: self.contentView.frame.height)
        self.imageView = UIImageView(frame: frame)
        imageView.image = UIImage(named: "ic_sort")
        imageView.contentMode = .scaleAspectFit
        self.contentView.addSubview(imageView)
        self.contentView.backgroundColor = UIColor.darkGray
        
  
        
    }
}
