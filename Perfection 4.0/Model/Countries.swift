//
//  Countries.swift
//  Perfection 4.0
//
//  Created by Sidney Okine on 12/08/2022.
//

import Foundation

struct Countries: Codable {
    let name: Name
    let capital: [String]?
    let region: String
    let area: Double
    let population: Int
    let flags : Flags
    
    var commName: String {
        return name.common
    }
    
    var countryCapital : String {
        return capital?[0] ?? "No Capital"
    }
    
    var flagName : String {
        return flags.png
    }
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case capital = "capital"
        case population = "population"
        case region = "region"
        case area = "area"
        case flags = "flags"
    }
}


struct Name: Codable {
    var common : String
}

struct Flags: Codable {
    var png : String
}

