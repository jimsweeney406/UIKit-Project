//
//  CoinDetailsViewController.swift
//  coincrypto
//
//  Created by James Sweeney on 3/2/25.
//

import UIKit

class CoinDetailsViewController: UIViewController {
    
    var coin: Coin?
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        
        if let coin {
            print("DEBUG: Coin is \(coin.name) in detail vc")
        }
    }

}
