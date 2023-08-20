//
//  EpisodeDetails.swift
//  TestFor1221RickAndMorty
//
//  Created by Karen Vardanian on 20.08.2023.
//

import Foundation


struct EpisodeDetails: Codable {
    let name: String
    let episode: String
    let airDate: String
    let characters: [String]
    
    var formattedEpisode: String {
            return convertEpisodeFormat(episodeString: episode)
        }
        
        private func convertEpisodeFormat(episodeString: String) -> String {
            let episodeComponents = episodeString.components(separatedBy: "E")
            
            if episodeComponents.count == 2 {
                let seasonString = episodeComponents[0]
                let episodeNumberString = episodeComponents[1]
                
                if let seasonNumber = seasonString.extractNumber(), let episodeNumber = episodeNumberString.extractNumber() {
                    return "Episode: \(episodeNumber), Season: \(seasonNumber)"
                }
            }
            
            return "Invalid Episode Format"
        }
    
    enum CodingKeys: String, CodingKey {
            case name
            case episode
            case airDate = "air_date"
            case characters
        }
}
