//
//  NetworkManager.swift
//  NetworkingProject
//
//  Created by Анастасия Булдакова on 17.12.2022.
//

import Foundation
import Alamofire

enum Link: String {
    case objectURL = "https://api.agify.io/?name=bella"
}

    enum NetworkError: Error {
        case invalidURL
        case noData
        case decodingError
    }

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    
    func fetchInfo( from url: String, completion: @escaping(Result<Name, AFError>)  -> Void) {
        AF.request(url)
            .validate()
            .responseJSON { dataResponse in
                switch dataResponse.result {
                case .success(let data):
                    let name = Name.getName(from: data)
                    completion(.success(name))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}
        
        

