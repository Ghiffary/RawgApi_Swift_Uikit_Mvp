//
//  GameDetail.swift
//  GameList
//
//  Created by MacBook Air on 26/03/23.
//

import Foundation

struct GameDetail : Decodable{
    let id: Int?
    let name, description: String?
    let released: String?
    let backgroundImage, backgroundImageAdditional: String?
    let rating: Double?
    let descriptionRaw: String?

    enum CodingKeys : String, CodingKey {
        case id, name
        case released
        case description = "description"
        case backgroundImage = "background_image"
        case backgroundImageAdditional = "background_image_additional"
        case rating
        case descriptionRaw = "description_raw"
    }
}
