//
//  CategoryCell.swift
//  BasicStuff
//
//  Created by Kyuhan Shin on 2017. 10. 30..
//  Copyright © 2017년 Kyuhan Shin. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
 
    func updateView(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
