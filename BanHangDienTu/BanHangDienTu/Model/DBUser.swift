//
//  DBUser.swift
//  BanHangDienTu
//
//  Created by Ngoc Dai on 12/1/17.
//  Copyright © 2017 Ngoc Dai. All rights reserved.
//

import UIKit

class DBUser {
    var name: String
    var pass: String
    var phone: String
    var account: String
    
    init(name: String, pass: String, phone: String, account: String) {
        self.name = name
        self.pass = pass
        self.phone = phone
        self.account = account
    }
    
    static func Set(key: String, value: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func Get(key: String) -> String? {
        return UserDefaults.standard.string(forKey: key)
    }
}
