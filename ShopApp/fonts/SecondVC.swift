//
//  SecondVC.swift
//  ShopApp
//
//  Created by ujs on 7/18/19.
//

import UIKit

class SecondVC: UIViewController, UITableViewDataSource, UITableViewDelegate, ExpandableHeaderViewDelegate {
    
    
    var sections = [
        Section(genre: "Animation", movies: ["The Lion King" , "The Incredibles"], expanded: false),
        Section(genre: "Animation", movies: ["The Lion King" , "The Incredibles"], expanded: false),
        Section(genre: "Animation", movies: ["The Lion King" , "The Incredibles"], expanded: false)
    ]
    @IBOutlet var topSection: UIView!
    @IBOutlet var searchSection: UIView!
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myColor = UIColor.black
        
//        topSection.layer.shadowRadius = 5
        topSection.layer.shadowOffset = CGSize(width: 0, height: 2)
        topSection.layer.shadowOpacity = 0.6
        topSection.layer.shadowRadius = 1.0
        topSection.layer.masksToBounds = false
 
        searchSection.layer.cornerRadius = 8
        searchSection.layer.borderWidth = 1
        searchSection.layer.borderColor = myColor.cgColor
        
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].movies.count
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(sections[indexPath.section].expanded){
            return 44
        }
        else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ExpandableHeaderView()
        header.customInit(title: sections[section].genre, section:section, delegate: self)
        return header
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell")!
        cell.textLabel?.text = sections[indexPath.section].movies[indexPath.row]
        return cell
    }

    func toggleSection(header: ExpandableHeaderView, section: Int){
        sections[section].expanded = !sections[section].expanded
        
        tableView.beginUpdates()
        for i in 0 ..< sections[section].movies.count {
            tableView.reloadRows(at: [IndexPath(row: i, section: section)], with: .automatic)
            
        }
        tableView.endUpdates()
        
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
