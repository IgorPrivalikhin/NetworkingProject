//
//  ViewController.swift
//  NetworkingProject
//
//  Created by Анастасия Булдакова on 13.12.2022.
//

import UIKit
import Alamofire


class MainViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    
    
    //var names: [Name] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getName()
        }
    
    
    
   //func getName(completion: @escaping(Name) -> Void) {
    func getName() {
        NetworkManager.shared.fetchInfo(from: Link.objectURL.rawValue) { [weak self] result in
            switch result {
            case .success(let name):
                self?.nameLabel.text = name.description
               
            case .failure(let error):
                print(error)
                
            }
        }
    }
}
   
  
    
