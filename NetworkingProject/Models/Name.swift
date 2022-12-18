//
//  Data.swift
//  NetworkingProject
//
//  Created by Анастасия Булдакова on 13.12.2022.
//

import Foundation


struct Name: Decodable {
    let age: Int
    let count: Int
    let name: String
    
    var description: String {
        """
        age: \(age)
        count: \(count)
        name: \(name)
        """
    }
}



