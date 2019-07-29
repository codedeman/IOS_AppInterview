//
//  PopularAreaCell.swift
//  InterviewTNTech
//
//  Created by Apple on 7/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class PopularAreaCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productLocation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCell(product:PopularArea) {
        
        self.productImage.image = UIImage(named: product.image)
        self.productTitle.text = product.name
        self.productLocation.text = product.location
        self.productPrice.text = String(product.price)+"VND"

        
    }

}
