//
//  ProductCell.swift
//  BasicStuff
//
//  Created by Kyuhan Shin on 2017. 10. 31..
//  Copyright © 2017년 Kyuhan Shin. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!

    func updateView(product: product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
