//
//  CategoriesCollectionView.swift
//  BanHangDienTu
//
//  Created by Ngoc Dai on 12/2/17.
//  Copyright © 2017 Ngoc Dai. All rights reserved.
//

import UIKit

class CategoriesCollectionView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBAction func btnClose(_ sender: Any) {
     //   self.dismiss(animated: true, completion: nil) close view
    }
    var brandIndex = -1
    var CollectionViewCell = "CateCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Data.categories[brandIndex].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell, for: indexPath) as! CateCollectionViewCell
        print(brandIndex);
        cell.imageViewCate.image = UIImage(named: Data.imagesCate[brandIndex][indexPath.row])
        cell.lblCate.text = Data.categories[brandIndex][indexPath.row]
        return cell
    }
}
