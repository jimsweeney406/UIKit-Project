//
//  LabelsViewController.swift
//  coincrypto
//
//  Created by James Sweeney on 3/2/25.
//

import UIKit

class LabelsViewController: UIViewController {
    
    private var textLabel = UILabel()
    
    private var subtitleLabel: UILabel = {
        
        let label = UILabel()
        label.text = "This is only a test."
        label.textColor = .green
        return label
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = "Hello, World!"
        textLabel.font = UIFont.systemFont(ofSize: 20)
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(textLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 0).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

#Preview {
    LabelsViewController()
}




