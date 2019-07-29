//
//  Product.swift
//  InterviewTNTech
//
//  Created by Apple on 7/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

public class Product{
    
    private(set) public var name:String!
    private(set) public var image:String!
    init(name:String,image:String) {
        
        self.image = image
        self.name = name
    }
}
