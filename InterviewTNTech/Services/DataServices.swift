//
//  DataServices.swift
//  InterviewTNTech
//
//  Created by Apple on 7/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

class DataServices {
    
    static let instance = DataServices()
    
    private let product = [Product(name: "Pizza Thit Bo", image: "cake1.jpg"),Product(name: "Banh mi sot", image: "cake2.jpg"),Product(name: "thit nuong", image: "cake3.jpg")]
    

    
    private let productarea = [PopularArea(name: "Thi bo", image:"cake1.jpg", location: "4 nhà hàng có", price: 123),PopularArea(name: "Thi bo", image:"cake2.jpg", location: "4 nhà hàng có", price: 123),PopularArea(name: "Thi bo", image:"cake3.jpg", location: "4 nhà hàng có", price: 123)]
    
    
    func getProduct() -> [Product] {
        return product
    }
    
    func getProductArea() -> [PopularArea] {
        
        return productarea
    }
    
}
