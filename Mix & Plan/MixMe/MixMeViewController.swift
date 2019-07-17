//
//  MixMeViewController.swift
//  Mix & Plan
//
//  Created by aurelia  natasha on 16/07/19.
//  Copyright © 2019 aurelia  natasha. All rights reserved.
//

import UIKit
//TODO
//extend controller ini untuk menambah searching functionality
class MixMeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var searchIngredients: UISearchBar!
    @IBOutlet weak var ingredientsCollView: UICollectionView!
    
    //TODO
    //variabel ini akan diubah sesuai dengan API yang akan di load dari API server
    var ingredientName = ["Chicken", "Beef", "Salmon", "Tomato", "Egg", "Carrot", "Broccoli"]
    
    //TODO
    //load API ingredient
    override func viewDidLoad() {
        super.viewDidLoad()

        ingredientsCollView.delegate = self
        ingredientsCollView.dataSource = self
       
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ingredientName.count
    }
    
    //TODO
    //fungsi ini akan di modifikasi
    //ingredientName akan diisi dari API or local data
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ingCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ingredientCell", for: indexPath) as! IngredientsCollectionViewCell
        ingCell.dispIngredientImg.image = UIImage(named: "satu")
        ingCell.ingredientLbl.text = ingredientName[indexPath.row]
        
        return ingCell
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
