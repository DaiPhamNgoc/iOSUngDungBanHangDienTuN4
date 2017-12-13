//
//  CateCollectionView.swift
//  BanHangDienTu
//
//  Created by Ngoc Dai on 12/2/17.
//  Copyright © 2017 Ngoc Dai. All rights reserved.
//

import UIKit

class CateCollectionView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Data.categories[0].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell, for: indexPath) as! CateCollectionViewCell
        cell.imageViewCate.image = UIImage(named: Data.imagesCate[0][indexPath.row])
        cell.lblCate.text = Data.categories[0][indexPath.row]
        print(brandIndex)
        return cell
    }
    
    var brandIndex = -1
    var CollectionViewCell = "CateCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
