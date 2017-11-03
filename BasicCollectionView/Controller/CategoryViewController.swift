//
//  CategoryViewController.swift
//  BasicStuff
//
//  Created by Kyuhan Shin on 2017. 10. 30..
//  Copyright © 2017년 Kyuhan Shin. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
            return cell
        }else {
            return CategoryCell()
        }
    }

  
    
    @IBOutlet weak var categryTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categryTable.dataSource = self
        categryTable.delegate = self
    
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC{
            let barbtn = UIBarButtonItem()
            barbtn.title = "Back"
            navigationItem.backBarButtonItem = barbtn
            assert(sender as? Category != nil)
           productsVC.initProducts(category: sender as! Category)
        }
    }
}
