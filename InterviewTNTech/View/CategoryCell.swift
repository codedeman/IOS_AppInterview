//
//  CategoryCell.swift
//  InterviewTNTech
//
//  Created by Apple on 7/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet weak var categoriesImage: UIImageView!
    
    @IBOutlet weak var categoriesPrice: UILabel!
    
    @IBOutlet weak var categoriesName: UILabel!
    
    @IBOutlet weak var categoriesLocation: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(data:PopularArea) {
        
        self.categoriesImage.image = UIImage(named: data.image)
        self.categoriesName.text = data.name
        self.categoriesPrice.text = String(data.price)+"VND"
        self.categoriesLocation.text = data.location
        
        
    }

}
