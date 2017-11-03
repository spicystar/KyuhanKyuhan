//
//  ProductsVC.swift
//  BasicStuff
//
//  Created by Kyuhan Shin on 2017. 11. 2..
//  Copyright © 2017년 Kyuhan Shin. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    
    
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var products = [product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.dataSource = self
        productsCollection.delegate = self
        

    }
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath)as? ProductCell {
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        return ProductCell()
    }
}
