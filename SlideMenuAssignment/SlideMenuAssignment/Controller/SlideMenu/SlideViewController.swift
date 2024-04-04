//
//  SlideViewController.swift
//  SlideMenuAssignment
//
//  Created by Ankit Upadhyay on 04/04/24.
//

import UIKit
protocol SlideMenuViewControllerDelegate {
    func selectedCell(_ row: Int)
}

class SlideViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var delegate: SlideMenuViewControllerDelegate?
    var defaultHighlightedCell: Int = 0
    @IBOutlet var optionTableView: UITableView!
    @IBOutlet var dismissButton: UIButton!
    var titleNames: [String] = ["Claim  management","Contact circlehealth"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        dismissButton.addTarget(self, action: #selector(revealSideMenu), for: .touchUpInside)
        self.optionTableView.separatorStyle = .none
        self.optionTableView.delegate = self
        self.optionTableView.dataSource = self
        optionTableView.backgroundColor  = UIColor(named: "black")
        optionTableView.register(UINib(nibName: "PhaseOneTwoTableViewCell", bundle: nil), forCellReuseIdentifier: "PhaseOneTwoTableViewCell")
        optionTableView.register(UINib(nibName: "LastPhaseTableViewCell", bundle: nil), forCellReuseIdentifier: "LastPhaseTableViewCell")
        self.optionTableView.reloadData()
    }
    
    @objc func revealSideMenu() {
        
        if let revealViewController = revealViewController() {
            revealViewController.revealSideMenu()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PhaseOneTwoTableViewCell", for: indexPath) as?
            PhaseOneTwoTableViewCell{
            cell.selectionStyle = .none
            if(indexPath.row == 0){
                if let cell = tableView.dequeueReusableCell(withIdentifier: "PhaseOneTwoTableViewCell", for: indexPath) as?
                    PhaseOneTwoTableViewCell{
                    cell.menuTitleLabel.text = self.titleNames[indexPath.row]
                    cell.oneOptionLabel.text = "Raise Claim"
                    cell.twoOptionLabel.text = "Edit Claim"
                    cell.threeOptionLabel.text = "View Claim Status"
                    return cell
                }
            }
            else if(indexPath.row == 1){
                if let cell = tableView.dequeueReusableCell(withIdentifier: "PhaseOneTwoTableViewCell", for: indexPath) as?
                    PhaseOneTwoTableViewCell{
                    cell.menuTitleLabel.text = self.titleNames[indexPath.row]
                    cell.oneOptionLabel.text = "Email"
                    cell.twoOptionLabel.text = "Whatsapp"
                    cell.threeOptionLabel.text = "Phone"
                    return cell
                }}
            else if(indexPath.row == 3){
                if let cell = tableView.dequeueReusableCell(withIdentifier: "LastPhaseTableViewCell", for: indexPath) as?
                    LastPhaseTableViewCell{
                    return cell
                }}
            else if(indexPath.row == 4){
                if let cell = tableView.dequeueReusableCell(withIdentifier: "LastPhaseTableViewCell", for: indexPath) as?
                    LastPhaseTableViewCell{
                    cell.menuLastTitleLabel.text = "OFFERS"
                    cell.menuLastOptionLabel.text = "Gym Membership"
                    cell.menuLastTwoOptionLabel.text = "Blood Tests"
                    return cell
                }}
            return cell
        }
        return UITableViewCell()
    }
}
