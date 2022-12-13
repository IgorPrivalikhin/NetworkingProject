//
//  ViewController.swift
//  NetworkingProject
//
//  Created by Анастасия Булдакова on 13.12.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    let objectURL = "https://api.agify.io/?name=bella"
    
    @IBAction func buttonTapped() {
        fetchData()
    }
}

// MARK: - Networking
    extension MainViewController {
       private func fetchData() {
            guard let url = URL(string: objectURL) else { return }
            
            URLSession.shared.dataTask(with: url) { data, _, error in
                guard let data else {
                    print(error?.localizedDescription ?? "No error description")
                    return
                }
                
                do {
                    let object = try JSONDecoder().decode(Name.self, from: data)
                    print(object)
                    
                } catch let error {
                    print(error)
                }
            }.resume()
        }
    }
    

