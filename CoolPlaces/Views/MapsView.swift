//
//  MapsView.swift
//  CoolPlaces
//
//  Created by Jaylen Davis on 1/24/23.
//

import UIKit
import GoogleMaps
//import GooglePlaces


class MapsView: UIViewController {
    
    var currentLocation: CLLocation?
    var image = UIImage(named:"NSMNS")


    override func viewDidLoad() {
        super.viewDidLoad()
        GMSServices.provideAPIKey("AIzaSyC7LgM6uCSLcCp9BZMSSSRXWEzhaOg2PII")
        //GMSPlacesClient.provideAPIKey("AIzaSyC7LgM6uCSLcCp9BZMSSSRXWEzhaOg2PII")


        
        let camera = GMSCameraPosition.camera(withLatitude: 35.791538, longitude: -78.781120, zoom: 6.0)
                let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
                self.view.addSubview(mapView)

                // Creates a marker in the center of the map.
                let marker = GMSMarker()
                let marker2 = GMSMarker()
                
        
        
//                marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
//                marker.title = "Sydney"
//                marker.snippet = "Australia"
        
                //Biltmore
                marker.position = CLLocationCoordinate2D(latitude: 35.538204, longitude:-82.550687)
                marker.title = "The Biltmore Estates"
                marker.snippet = "Asheville, NC"
                marker.map = mapView
                
        
                //Natural Museum of Natural Sciences
        

        
                marker2.position = CLLocationCoordinate2D(latitude: 35.782182, longitude:-78.639556)
                marker2.title = "Museum of Natural Sciences"
                marker2.snippet = "Raleigh, NC"
                marker2.map = mapView


    }

}
