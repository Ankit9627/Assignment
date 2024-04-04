//
//  LastPhaseTableViewCell.swift
//  SlideMenuAssignment
//
//  Created by Ankit Upadhyay on 04/04/24.
//

import UIKit

class LastPhaseTableViewCell: UITableViewCell {
    
    @IBOutlet var menuLastTwoOptionLabel: UILabel!
    @IBOutlet var menuLastOptionLabel: UILabel!
    @IBOutlet var menuLastTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
