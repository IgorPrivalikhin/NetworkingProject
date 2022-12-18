//
//  StartViewController.swift
//  NetworkingProject
//
//  Created by Анастасия Булдакова on 18.12.2022.
//
import UIKit

class StartViewController: UIViewController {
    
    @IBAction func pressButton() {
        performSegue(withIdentifier: "goToName", sender: nil)
    }
}

