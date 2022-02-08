//
//  MapView.swift
//  Landmarks
//
//  Created by Rolando Garcia on 01/02/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate : CLLocationCoordinate2D
    
    // Atribute to establish a source of truth for data
    // in your app that you can modify from more than one view
    // SwiftUI manages the underlying storage and automatically updates
    // views that depend on the value.
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region).onAppear{setRegion(coordinate)}
    }
    
    private func setRegion (_ coordinate : CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
