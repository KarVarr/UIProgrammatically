//
//  NetworkManager.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 18.08.2023.
//

import Foundation


class NetworkManager {
    func request() {
        let urlString = "https://rickandmortyapi.com/api"
        guard let url = URL(string: urlString) else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            if let data = data {
                print(data)
            }
        }.resume()
    }
}
