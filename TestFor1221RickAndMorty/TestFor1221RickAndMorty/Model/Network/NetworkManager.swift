//
//  NetworkManager.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 18.08.2023.
//

import Foundation


class NetworkManager {
    
    typealias CompletionHandler<T> = (T) -> Void
        
        func requestData<T: Decodable>(from urlString: String, responseType: T.Type, completion: @escaping CompletionHandler<T>) {
            guard let url = URL(string: urlString) else { return }
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("Error: \(error)")
                    return
                }
                
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        let response = try decoder.decode(responseType, from: data)
                        completion(response)
                    } catch  {
                        print("JSON decoding error: \(error)")
                    }
                }
            }.resume()
        }
}
