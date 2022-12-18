//
//  ViewController.swift
//  NetworkingProject
//
//  Created by Анастасия Булдакова on 13.12.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getName()
    }
    

    func getName() {
        NetworkManager.shared.fetch(Name.self, from: objectURL) { [weak self] result in
            switch result {
            case .success(let name):
                self?.nameLabel.text = name.description
            case .failure(let error):
                print(error)
                
            }
        }
    }
    
}

     
     
     
