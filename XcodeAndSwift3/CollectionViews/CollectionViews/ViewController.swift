//
//  ViewController.swift
//  CollectionViews
//
//  Created by Damian Johns on 21/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"


class CollectionViewController: UICollectionViewController {
    
    var names = ["Acrobats", "Berries", "Apartments", "Brecken Ridge", "Eight Eight Eight", "Berry Tree", "Acrobats", "Berries", "Apartments", "Brecken Ridge", "Eight Eight Eight", "BerryTree"]
    var images = [UIImage(named: "acrobats.jpg"), UIImage(named: "berries.jpg"), UIImage(named: "apartments.jpg"), UIImage(named: "breckenridge.jpg"), UIImage(named: "eighteighteight.jpg"), UIImage(named: "berrytree.jpg"), UIImage(named: "acrobats.jpg"), UIImage(named: "berries.jpg"), UIImage(named: "apartments.jpg"), UIImage(named: "breckenridge.jpg"), UIImage(named: "eighteighteight.jpg"), UIImage(named: "berrytree.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            let itemsPerRow: CGFloat = 3
            let padding: CGFloat = 10
            let totalPadding = padding * (itemsPerRow - 1)
            let individualPadding = totalPadding / itemsPerRow
            let width = collectionView!.frame.width / itemsPerRow - individualPadding
            let height = width + 40
            layout.itemSize = CGSize(width: width, height: height)
            layout.minimumInteritemSpacing = padding
            layout.minimumLineSpacing = padding
        }
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as UICollectionViewCell
        
        if let customCell = cell as? CollectionViewCell {
            customCell.image.image = images[indexPath.row]
            customCell.name.text = "\(names[indexPath.row])"
        
        // Youtube Method 2
        /*let image = cell.viewWithTag(1) as! UIImageView
        image.image = images[indexPath.row]
        let name = cell.viewWithTag(2) as! UILabel
        name.text = names[indexPath.row] */
            
        }
        return cell
    }


}

