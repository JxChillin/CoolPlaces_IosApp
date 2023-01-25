//
//  MapsView.swift
//  CoolPlaces
//
//  Created by Jaylen Davis on 1/24/23.
//

import UIKit
import GoogleMaps


class MapsView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GMSServices.provideAPIKey("AIzaSyC7LgM6uCSLcCp9BZMSSSRXWEzhaOg2PII")

        
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
                let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
                self.view.addSubview(mapView)

                // Creates a marker in the center of the map.
                let marker = GMSMarker()
                marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
                marker.title = "Sydney"
                marker.snippet = "Australia"
                marker.map = mapView

        // Do any additional setup after loading the view.
    }

}
