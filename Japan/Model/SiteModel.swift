//
//  SiteModel.swift
//  Japan
//
//  Created by Forrest Anderson on 12/14/20.
//

import SwiftUI

struct Site: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
