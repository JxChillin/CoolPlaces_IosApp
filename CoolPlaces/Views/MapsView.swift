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


        //Camera Position
        let camera = GMSCameraPosition.camera(withLatitude: 35.791538, longitude: -78.781120, zoom: 6.0)
                let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        self.view.addSubview(mapView)

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        let marker2 = GMSMarker()
        let marker3 = GMSMarker()
        let marker4 = GMSMarker()
        let marker5 = GMSMarker()

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

        
        //Charlotte
        marker3.position = CLLocationCoordinate2D(latitude:  35.227085, longitude: -80.843124)
        marker3.title = "Charlotte"
        marker3.snippet = "Charlotte, NC"
        marker3.map = mapView
        
        //Chimney Rock
        marker4.position = CLLocationCoordinate2D(latitude:35.4378   , longitude: -82.2517 )
        marker4.title = "Hiking at Chimney Rock"
        marker4.snippet = "Chimney Rock, NC"
        marker4.map = mapView
        
        
        
        //Carowinds
        marker5.position = CLLocationCoordinate2D(latitude: 35.1043 , longitude: -80.9397)
        marker5.title = "Carowinds"
        marker5.snippet = "Charlotte, NC"
        marker5.map = mapView
        

    }

}
