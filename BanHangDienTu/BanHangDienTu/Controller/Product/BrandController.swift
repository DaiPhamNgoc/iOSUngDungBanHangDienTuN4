//
//  BrandController.swift
//  BanHangDienTu
//
//  Created by Ngoc Dai on 11/24/17.
//  Copyright © 2017 Ngoc Dai. All rights reserved.
//

import UIKit
class BrandController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let cellids = "BrandID"
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK: Các hàm của tableView
    var brandIndex = -1
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.brand.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellids, for: indexPath) as! ProductCell
        cell.lblBrand.text = Data.brand[indexPath.row]
      
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        brandIndex = indexPath.row
        var storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "CategoriesCollectionView") as! CategoriesCollectionView
        controller.brandIndex = indexPath.row
        self.present(controller, animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueForCategories" {
//            let destination = segue.destination as! CategoriesCollectionView
//            destination.brandIndex = self.brandIndex
            
            print("Day la chi so cua brand: ",brandIndex)
        }
    }
}
