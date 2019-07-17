//
//  MenuPlanViewController.swift
//  Mix & Plan
//
//  Created by aurelia  natasha on 16/07/19.
//  Copyright © 2019 aurelia  natasha. All rights reserved.
//

import UIKit

class MenuPlanViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var menuPlanList: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuPlanList.delegate = self
        menuPlanList.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    //TODO
    //create function to delete from menu plan
    //create function to load menu from local data
    //create function to parse loaded data to tableview
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuPCell = tableView.dequeueReusableCell(withIdentifier: "menuPlanCell", for: indexPath) as! MenuPlanTableViewCell
        menuPCell.dayLbl.text = "Day \(indexPath.row+1)"
        
        
        return menuPCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
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
