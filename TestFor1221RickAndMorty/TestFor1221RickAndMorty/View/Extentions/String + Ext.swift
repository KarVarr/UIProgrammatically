//
//  String + Ext.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 20.08.2023.
//

import Foundation


extension String {
    func extractNumber() -> Int? {
        let numbers = self.components(separatedBy: CharacterSet.decimalDigits.inverted)
        let filteredNumbers = numbers.filter { !$0.isEmpty }
        return filteredNumbers.isEmpty ? nil : Int(filteredNumbers[0])
    }
}
