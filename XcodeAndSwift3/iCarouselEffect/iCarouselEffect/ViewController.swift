//
//  ViewController.swift
//  iCarouselEffect
//
//  Created by Damian Johns on 20/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController, iCarouselDataSource, iCarouselDelegate {
    
    var imageArray: NSMutableArray = NSMutableArray()

    @IBOutlet weak var DisplayView: iCarousel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageArray = ["images/1.jpg", "images/2.jpg", "images/3.jpg", "images/4.jpg", "images/5.jpg", "images/6.jpg", "images/7.jpg", "images/8.jpg", "images/9.jpg", "images/10.jpg", "images/11.jpg", "images/12.jpg", "images/13.jpg"]
        DisplayView.type = iCarouselType.rotary
        DisplayView.reloadData()
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        
        var imageView: UIImageView!
        
        if view == nil {
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
            imageView.contentMode = .scaleAspectFit
        } else {
            imageView = view as! UIImageView
        }
        
        imageView.image = UIImage(named: "\(imageArray.object(at: index))")
        return imageView
    }
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return imageArray.count
    }

}

