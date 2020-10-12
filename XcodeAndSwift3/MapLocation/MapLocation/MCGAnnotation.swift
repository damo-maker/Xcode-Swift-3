//
//  MCGAnnotation.swift
//  MapLocation
//
//  Created by Damian Johns on 16/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import MapKit

class MCGAnnotation: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}

