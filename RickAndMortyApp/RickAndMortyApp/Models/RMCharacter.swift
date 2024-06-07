//
//  RMCharacter.swift
//  RickAndMortyApp
//
//  Created by admin on 10/05/2024.
//

import UIKit

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSinglLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

