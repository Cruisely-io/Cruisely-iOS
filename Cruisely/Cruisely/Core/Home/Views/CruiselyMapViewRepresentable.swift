//
//  CruiselyMapViewRepresentable.swift
//  Cruisely
//
//  Created by James McDougall on 3/5/23.
//

import SwiftUI
import MapKit

struct CruiselyMapViewRepresentable: UIViewRepresentable {
    
    let mapView = MKMapView()
    let locationManager = LocationManager()
    
    func makeUIView(context: Context) -> some UIView {
        mapView.delegate = context.coordinator
        mapView.isRotateEnabled = false
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() ->MapCoordinator {
        return MapCoordinator(parent: self)
    }
}

extension CruiselyMapViewRepresentable {
    class MapCoordinator: NSObject, MKMapViewDelegate {
        let parent: CruiselyMapViewRepresentable
        
        init(parent: CruiselyMapViewRepresentable) {
            self.parent = parent
            super.init()
        }
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )
            
            parent.mapView.setRegion(region, animated: true)
        }
    }
}
