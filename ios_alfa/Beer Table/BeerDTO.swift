//
//  BeerModel.swift
//  ios_alfa
//
//  Created by Polina Popova on 13/11/2023.
//

import Foundation

struct BeerDTO: Decodable {
    let id: Int
    let name: String
    let tagline: String
    let imageUrl: URL
}
