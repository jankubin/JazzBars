//
//  Location.swift
//  JazzBarsPrague
//
//  Created by Jan Kubín on 28.04.2023.
//

import Foundation
import MapKit



struct Location: Identifiable, Equatable {
    
    
 
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    let program: String
    let instagram: String
    let facebook: String
    
    var id: String {
        name + cityName
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
}






