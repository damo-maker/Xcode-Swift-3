//
//  ViewController.swift
//  TablesCustom
//
//  Created by Damian Johns on 21/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var names = ["Acrobats", "Apartments", "Berries", "Berry Shrub", "Brecken Ridge", "Eight Eighty Eight", "Snow Thaw"]
    var materialType = ["Performers", "Building", "Fruit", "Flora", "Mountain Slope","Signage", "Early Spring"]
    var images = [UIImage(named: "acrobats"), UIImage(named: "apartments"), UIImage(named: "berries"), UIImage(named: "berryshrub"), UIImage(named: "breckenridge"), UIImage(named: "eighteighteight"), UIImage(named: "snowthaw")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        
        cell.photo.image = images[indexPath.row]
        cell.name.text = names[indexPath.row]
        cell.material.text = materialType[indexPath.row]
        
        return cell
    }
    
    
}

