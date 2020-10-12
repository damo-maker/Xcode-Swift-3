//
//  ViewController.swift
//  youTubeTuts
//
//  Created by Damian Johns on 16/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {
    
    var cl: CLLocationManager?
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cl = CLLocationManager()
        cl?.requestWhenInUseAuthorization()

        mapView.showsUserLocation = true
        mapView.userTrackingMode = MKUserTrackingMode.follow
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

