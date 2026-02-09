//
//  ContentView.swift
//  Map Hackwhich
//
//  Created by Christian Collins on 2/9/26.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var locationManager = LocationManager()
    @State private var startPosition = MapCameraPosition.userLocation(fallback: .automatic)
    var body: some View {
        Map(position: $startPosition) {
                    UserAnnotation()
        }
    }
}

#Preview {
    ContentView()
}
