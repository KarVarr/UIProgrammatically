//
//  LocationDetails.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 20.08.2023.
//

import Foundation


struct LocationDetails: Codable {
    let id: Int
    let name, type, dimension: String
    var newName: String {
        return name.hasPrefix("Earth") ? "Earth" : name
    }
}
