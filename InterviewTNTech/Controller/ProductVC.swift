//
//  ViewController.swift
//  InterviewTNTech
//
//  Created by Apple on 7/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {
    //variable

    @IBOutlet weak var productCollectionView: UICollectionView!
    
    private let optionbtn = ["Tất cả","Mới","Cơm","Nướng","Trà Sữa","Trà chanh"]

    @IBOutlet weak var poppularAreaCollectionView: UICollectionView!
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var buttonCollectionView: UICollectionView!
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollectionView.register(UINib(nibName: Identifiers.ProductCell, bundle: nil), forCellWithReuseIdentifier:Identifiers.ProductCell)
        
        poppularAreaCollectionView.register(UINib(nibName: Identifiers.PopularAreaCell, bundle: nil), forCellWithReuseIdentifier:Identifiers.PopularAreaCell)
        
        categoryCollectionView.register(UINib(nibName: Identifiers.CategoryCell, bundle: nil), forCellWithReuseIdentifier:Identifiers.CategoryCell)
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    
    }
    


}


/**configure uicollectionview **/
extension ProductVC:UICollectionViewDelegate,UICollectionViewDataSource{
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == productCollectionView{

            return DataServices.instance.getProduct().count

        }else if collectionView == poppularAreaCollectionView{

            return DataServices.instance.getProductArea().count

        } else if collectionView == buttonCollectionView{

            return optionbtn.count
        }
        return  DataServices.instance.getProductArea().count

        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

    
        switch collectionView {
        case self.productCollectionView:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Identifiers.ProductCell, for: indexPath) as? ProductCell else {
                return ProductCell()
            }
            
            let data = DataServices.instance.getProduct()[indexPath.row]
            cell.configureCell(product: data)
            return cell
        case self.poppularAreaCollectionView:
            guard let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: Identifiers.PopularAreaCell, for: indexPath) as? PopularAreaCell else {
                return PopularAreaCell()
            }
            
            let data = DataServices.instance.getProductArea()[indexPath.row]
            cell1.updateCell(product: data)
            
            return cell1
            
        case self.categoryCollectionView:
            guard let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: Identifiers.CategoryCell, for: indexPath) as? CategoryCell else {
                return CategoryCell()
            }
            
            let data = DataServices.instance.getProductArea()[indexPath.row]
            cell2.configureCell(data: data)
            
            return cell2

        default:
            
            guard let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: Identifiers.ButtonCell, for: indexPath) as? ButtonCollectionViewCell else {
                return ButtonCollectionViewCell()
            }
            cell3.optionButton.setTitle(optionbtn[indexPath.row], for: .normal)
            return cell3
        }
        
    }
    


}
