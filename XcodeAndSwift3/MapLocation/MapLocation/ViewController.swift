//
//  ViewController.swift
//  MapLocation
//
//  Created by Damian Johns on 16/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let distanceSpan: CLLocationDegrees = 2000
        let mcgLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(-37.819967, 144.983449)
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(mcgLocation, distanceSpan, distanceSpan), animated: true)
        
        let mcgCSClassPin = MCGAnnotation(title: "Melbourne Cricket Ground", subtitle: "The 'G'", coordinate: mcgLocation)
        mapView.addAnnotation(mcgCSClassPin)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


