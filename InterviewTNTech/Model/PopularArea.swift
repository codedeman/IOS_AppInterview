//
//  PopularArea.swift
//  InterviewTNTech
//
//  Created by Apple on 7/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
class PopularArea:Product{
    
    private(set) public var location:String
    private(set) public var price:Double
//    private(set) public var name:String
//    private(set) public var image:String
    
    init(name: String, image: String,location:String,price:Double) {
        
        self.location = location
        self.price = price
//        self.image = image
//        self.name = name
            super.init(name: name, image: image)
        //
    }
    
}
