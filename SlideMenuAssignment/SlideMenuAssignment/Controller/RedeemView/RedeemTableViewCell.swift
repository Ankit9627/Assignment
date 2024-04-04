//
//  RedeemTableViewCell.swift
//  SlideMenuAssignment
//
//  Created by Ankit Upadhyay on 04/04/24.
//

import UIKit

class RedeemTableViewCell: UITableViewCell {
    @IBOutlet var redeemLevelImage: UIImageView!
    
    @IBOutlet var redeemView: UIView!
    @IBOutlet var redeemButton: UIButton!
    @IBOutlet var redeemTaskLabel: UILabel!
    @IBOutlet var redeemLevelLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        redeemView.layer.cornerRadius = 8
        redeemView.layer.borderWidth = 2
        redeemView.layer.borderColor = UIColorFromRGB(0x6e5139).cgColor
        redeemView.backgroundColor = UIColorFromRGB(0x212328)
        redeemButton.layer.cornerRadius = 8
        redeemButton.backgroundColor = UIColorFromRGB(0xc27f44)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
        
    }
    
}
