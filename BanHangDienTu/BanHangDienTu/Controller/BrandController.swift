//
//  BrandController.swift
//  BanHangDienTu
//
//  Created by Ngoc Dai on 11/24/17.
//  Copyright © 2017 Ngoc Dai. All rights reserved.
//

import UIKit
class BrandController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let cellids = ["HomeCellID","AppleCellID", "SamsungCellID", "NokiaCellID"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK: Các hàm của tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellids.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellids[indexPath.row], for: indexPath)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}
