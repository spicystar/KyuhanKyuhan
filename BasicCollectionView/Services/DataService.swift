//
//  Service.swift
//  BasicStuff
//
//  Created by Kyuhan Shin on 2017. 10. 31..
//  Copyright © 2017년 Kyuhan Shin. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        product(title: "Kyu's Beanie", price: "$18", imageName: "hat01.png"),
        product(title: "Kyu's Hat Black", price: "$22", imageName: "hat02.png"),
        product(title: "Kyu's Hat white", price: "$22", imageName: "hat03.png"),
        product(title: "Kyu's Hat snapback", price: "$12", imageName: "hat04.png")
    ]
    private let hoodies = [
        product(title: "Kyu's  logo hoodie grey", price: "30", imageName: "hoodie01.png"),
        product(title: "Kyu's hoodie red", price: "$42", imageName: "hoodie02.png"),
        product(title: "Kyu's hoddie grey", price: "$32", imageName: "hoodie03.png"),
        product(title: "Kyu's great hoodie black", price: "$42", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        product(title: "kyu's shirt black", price: "$30", imageName: "shirt01.png"),
        product(title: "kyu's shirt light grey", price: "$20", imageName: "shirt02.png"),
        product(title: "kyu's shirt red", price: "$32", imageName: "shirt03.png"),
        product(title: "kyu's Delegate grey", price: "$21", imageName: "shirt04.png"),
        product(title: "kyu's shirt studio black", price: "$21", imageName: "shirt05.png")
    ]
    private let digitalGoods = [product]()
  
    func getCategories() -> [Category] {
      return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS" :
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    func getHats() -> [product] {
        return hats
    }
    func getHoodies() -> [product]{
        return hoodies
    }
    
    func getShirts() -> [product] {
        return shirts
    }
    
    func getDigitalGoods() -> [product] {
        return digitalGoods
    }
}
