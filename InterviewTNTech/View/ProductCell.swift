//
//  ProductCell.swift
//  InterviewTNTech
//
//  Created by Apple on 7/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productTitle: UILabel!
    
    
    @IBOutlet weak var imagePreview: UIImageView?{
        didSet{
            self.imagePreview?.layer.borderWidth = 1
            self.imagePreview?.layer.cornerRadius = ((self.imagePreview?.frame.height)!)/2
            self.imagePreview?.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.imagePreview?.clipsToBounds = true
            
        }
    
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
  
    func configureCell(product:Product) {

        productTitle.text = product.name
        productImage.image = UIImage(named: product.image)
        imagePreview?.image = UIImage(named: product.image)
    }

}
