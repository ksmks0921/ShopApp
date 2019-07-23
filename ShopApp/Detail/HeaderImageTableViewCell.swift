//
//  HeaderImageTableViewCell.swift
//  ShopApp
//
//  Created by ujs on 7/22/19.
//

import UIKit

class HeaderImageTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ivLogo: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
