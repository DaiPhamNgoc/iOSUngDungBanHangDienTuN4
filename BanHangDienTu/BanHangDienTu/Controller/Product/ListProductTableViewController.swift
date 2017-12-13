//
//  ListProductTableViewController.swift
//  BanHangDienTu
//
//  Created by Ngoc Dai on 12/2/17.
//  Copyright © 2017 Ngoc Dai. All rights reserved.
//

import UIKit

class ListProductTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let cellids = ["Iphone6PlusID", "Iphone7ID", "IphoneXID"]
    
    @IBAction func btnBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellids.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellids[indexPath.row], for: indexPath)
        return cell
    }
}
