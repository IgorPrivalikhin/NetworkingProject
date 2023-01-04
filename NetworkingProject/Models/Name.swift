//
//  Data.swift
//  NetworkingProject
//
//  Created by Анастасия Булдакова on 13.12.2022.
//

import Foundation


struct Name {
    let age: Int?
    let count: Int?
    let name: String?
    
    
    var description: String {
     """
     age: \(age ?? 0)
     count: \(count ?? 0)
     name: \(name ?? "")
     """
    }
    
    init() {
        name = ""
        age = 0
        count = 0
    }
    
    
    init(age: Int?, count: Int?, name: String?) {
        self.age = age
        self.count = count
        self.name = name
    }

    
    /*init(nameInfo: [String: Any]) {
        age = nameInfo["age"] as? Int ?? 0
        count = nameInfo["count"] as? Int ?? 0
        name = nameInfo["name"] as? String ?? ""
    }
    */
   // init(age: Int, count: Int, name: String) {
    //    self.age = age
     //   self.count = count
    //    self.name = name
   // }
    
    static func getName(from value: Any) -> Name {
        guard let modelJSON = value as? [String: Any] else {return Name()}
        let model = Name(
            age: modelJSON["age"] as? Int,
            count: modelJSON["count"] as? Int,
            name: modelJSON["name"] as? String)
        return model
    }
}
    


