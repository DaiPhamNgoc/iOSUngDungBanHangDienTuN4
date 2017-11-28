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
    
    
}
