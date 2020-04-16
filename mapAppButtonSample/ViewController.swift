//
//  ViewController.swift
//  mapAppButtonSample
//
//  Created by satoshi.marumoto on 2020/04/16.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func mapAppButtonTapped() {
        let address = "東京都練馬区"
        URLSchemeHelper.map(address: address)
    }
}

