//
//  ViewController.swift
//  Mix & Plan
//
//  Created by aurelia  natasha on 12/07/19.
//  Copyright © 2019 aurelia  natasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var homeSearchBar: UISearchBar!
    @IBOutlet weak var CategoryTblView: UITableView!
    
    //ini categori
    //categori tetap atau bisa bertambah ?
    //pasar merepresentasikan todays recomendation
    var cuisine = ["pasar", "Western Food", "Indonesian Food", "Japanese Food"]
    //ini named image ada di Assets
    var cuisineLogo = ["pasar", "western", "western", "western"]
    
    @IBAction func menuPlanBtn(_ sender: Any) {
        performSegue(withIdentifier: "showMenuPlan", sender: self)
    }
    
    //TODO
    //create fungsi api loadRecipe resep
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //TODO
        //call loadRecipe here
        CategoryTblView.delegate = self
        CategoryTblView.dataSource = self
    }

    // TODO
    // memastikan bahwa cuisine sudah sebelum memanggil fungsi ini
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cuisine.count
    }
    
    //TODO
    //beri keterangan fungsi ini untuk apa?
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 255
        }
        else{
            return 290
        }
    }
    
    //TODO
    //load data ke table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let recommenCell = tableView.dequeueReusableCell(withIdentifier: "recommendCell") as! RecommendTableViewCell
            recommenCell.recommendImg.image = UIImage(named: "pasar")
            recommenCell.recommendLbl.text = "Fried Rice with chicken"
            
            return recommenCell
            
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cuisineCell", for: indexPath) as! CuisineTableViewCell
            cell.cuisineLbl.text = cuisine[indexPath.row]
            cell.cuisineImg.image = UIImage(named: cuisineLogo[indexPath.row])
            return cell
        }
    }
    
    
}

