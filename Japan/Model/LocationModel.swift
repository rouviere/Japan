//
//  LocationModel.swift
//  Japan
//
//  Created by Forrest Anderson on 12/15/20.
//

import Foundation
import MapKit

struct HistoricSiteLocation: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
