//
//  MainScreenViewController.swift
//  SlideMenuAssignment
//
//  Created by Ankit Upadhyay on 04/04/24.
//

import UIKit

class MainScreenViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var slideMenuButton: UIButton!
    
    @IBOutlet var redeemLevelView: UIView!
    @IBOutlet var levelUpTableView: UITableView!
    var levelNumber: [String] = ["Level 1","Level 2","Level 3","Level 4","Level 5"]
    var taskDesc: [String] = ["","Unlock a initial health care consultation to your journey.","Access a complimentary consultation with  qualified doctor.","Receive no-cost blood tests for a thorough assessment.","Gain guidance and support from a  health coach to achieve goals."]
    var unlockButton: [String] = ["","Unlock","Unlock","Unlock","Unlock"]
    var levelImages: [String] = ["","Frame 16","Frame 17","Frame 18","Frame 19"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set target and action for the button
        slideMenuButton.addTarget(self, action: #selector(revealSideMenu), for: .touchUpInside)
        redeemLevelView.backgroundColor = UIColorFromRGB(0x443a66)
        redeemLevelView.layer.cornerRadius = 8
        redeemLevelView.layer.borderWidth = 2
        redeemLevelView.layer.borderColor = UIColorFromRGB(0x5e5583).cgColor
        
        levelUpTableView.separatorStyle = .none
        levelUpTableView.delegate = self
        levelUpTableView.dataSource = self
        levelUpTableView.register(UINib(nibName: "RedeemTableViewCell", bundle: nil), forCellReuseIdentifier: "RedeemTableViewCell")

    }

    @objc func revealSideMenu() {
        
        if let revealViewController = revealViewController() {
            revealViewController.revealSideMenu()
        }
    }
    
    func UIColorFromRGB(_ rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RedeemTableViewCell", for: indexPath) as?
            RedeemTableViewCell{
            cell.selectionStyle = .none
            if(indexPath.row == 1 || indexPath.row == 2 || indexPath.row == 3 || indexPath.row == 4){
                if let cell = tableView.dequeueReusableCell(withIdentifier: "RedeemTableViewCell", for: indexPath) as?
                    RedeemTableViewCell{
                    cell.redeemLevelLabel.text = self.levelNumber[indexPath.row]
                    cell.redeemTaskLabel.text = self.taskDesc[indexPath.row]
                    cell.redeemButton.backgroundColor = UIColorFromRGB(0x5c6470)
                    cell.redeemButton.setTitle(self.unlockButton[indexPath.row], for: .normal)
                    cell.redeemLevelLabel.textColor = UIColorFromRGB(0x666666)
                    cell.redeemTaskLabel.textColor = UIColorFromRGB(0x666666)
                    cell.redeemView.backgroundColor = UIColorFromRGB(0x18191c)
                    cell.redeemView.layer.borderColor = UIColorFromRGB(0x2f343a).cgColor
                    cell.redeemView.layer.borderWidth = 2
                    cell.redeemView.frame.inset(by: UIEdgeInsets(top: 50, left: 50, bottom: 100, right: 50))
                    cell.redeemLevelImage.image = UIImage(named: levelImages[indexPath.row])
                    return cell
                }
                
            }
            return cell
        }
        return UITableViewCell()
    }

}
