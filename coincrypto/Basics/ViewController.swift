//
//  ViewController.swift
//  coincrypto
//
//  Created by James Sweeney on 3/2/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var primaryButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        
    }
    
    func greetUser(_ name: String) {
        greetingLabel.text = "What's up, \(name)!"
    }

    @IBAction func primaryButton(_ sender: Any) {
        
        greetUser("Jim")
    }
    
    
}

