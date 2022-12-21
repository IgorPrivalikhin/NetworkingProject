//
//  Data.swift
//  NetworkingProject
//
//  Created by Анастасия Булдакова on 13.12.2022.
//

import Foundation


struct Name: Codable {
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
    
    init(nameInfo: [String: Any]) {
        age = nameInfo["age"] as? Int ?? 0
        count = nameInfo["count"] as? Int ?? 0
        name = nameInfo["name"] as? String ?? ""
    }
    
    init(age: Int, count: Int, name: String) {
        self.age = age
        self.count = count
        self.name = name
    }
    
    static func getName(from value: Any) -> [Name] {
        guard let value = value as? [[String : Any]] else { return [] }
        return value.compactMap { Name(nameInfo: $0)}
    }
}
    


