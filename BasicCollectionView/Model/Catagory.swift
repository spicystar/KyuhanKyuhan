//
//  Catagory.swift
//  BasicStuff
//
//  Created by Kyuhan Shin on 2017. 10. 31..
//  Copyright © 2017년 Kyuhan Shin. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
