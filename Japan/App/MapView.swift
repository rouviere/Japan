//
//  MapView.swift
//  Japan
//
//  Created by Forrest Anderson on 12/14/20.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 34.8437249, longitude: 136.8573062)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 18.0, longitudeDelta: 18.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [HistoricSiteLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


