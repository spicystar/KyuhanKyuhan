//
//  product.swift
//  BasicStuff
//
//  Created by Kyuhan Shin on 2017. 11. 2..
//  Copyright © 2017년 Kyuhan Shin. All rights reserved.
//

import Foundation

struct product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
