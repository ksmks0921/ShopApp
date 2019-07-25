//
//  SecondVC.swift
//  ShopApp
//
//  Created by ujs on 7/18/19.
//

import UIKit

class SecondVC: UIViewController, UITableViewDataSource, UITableViewDelegate, ExpandableHeaderViewDelegate {
    
    
    var sections = [
        Section(genre: "Animation", movies: ["The Lion King" , "The Incredibles"], expanded: false, background_image: "bar_food"),
        Section(genre: "Animation", movies: ["The Lion King" , "The Incredibles"], expanded: false, background_image: "bar_phone"),
        Section(genre: "Animation", movies: ["The Lion King" , "The Incredibles"], expanded: false, background_image: "ph_clothes")
    ]
    @IBOutlet var topSection: UIView!
    @IBOutlet var searchSection: UIView!
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myColor = UIColor.black
        
        
        topSection.layer.shadowOffset =  CGSize(width: 0.0, height: 2.0)
        topSection.layer.shadowOpacity = 0.5
        topSection.layer.shadowRadius = 0.3
        topSection.layer.masksToBounds = false
        topSection.layer.cornerRadius = 0
        
        searchSection.layer.cornerRadius = 8
        searchSection.layer.borderWidth = 1
        searchSection.layer.borderColor = myColor.cgColor
        
        // Do any additional setup after loading the view.
        
//        tableView.register(UINib(nibName: "HeaderImageTableViewCell", bundle: nil), forCellReuseIdentifier: "labelcell")
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
        header.customInit(title: sections[section].genre, section:section, delegate: self, background_image: sections[section].background_image)
        return header
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell")!
        cell.textLabel?.text = sections[indexPath.section].movies[indexPath.row]
//        cell.ivLogo.image = UIImage(named: "ic_sort.png")
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "detailVC") as! DetailVC
//        controller.customInit(imageName: sections[indexPath.section].movies[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
        //            controller.webVIewUrl = url
        self.navigationController?.pushViewController(controller, animated: true)
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
