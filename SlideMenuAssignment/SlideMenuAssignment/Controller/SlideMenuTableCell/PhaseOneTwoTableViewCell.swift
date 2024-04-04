//
//  PhaseOneTwoTableViewCell.swift
//  SlideMenuAssignment
//
//  Created by Ankit Upadhyay on 04/04/24.
//

import UIKit

class PhaseOneTwoTableViewCell: UITableViewCell {

    @IBOutlet var menuTitleLabel: UILabel!
    
    @IBOutlet var threeOptionLabel: UILabel!
    @IBOutlet var twoOptionLabel: UILabel!
    @IBOutlet var oneOptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
