//
//  DogTableViewController.swift
//  DogSearch
//
//  Created by Damian Johns on 19/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class DogTableViewController: UITableViewController, UISearchResultsUpdating {
    
    var dogs = ["Gertie", "Toby", "Pete", "Ivanhoe", "Olive", "Pierre", "Freddie", "Isaac", "Felix"]
    var filteredDogs = [String]()
    
    var searchController: UISearchController!
    var resultsController = UITableViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultsController.tableView.dataSource = self
        self.resultsController.tableView.delegate = self
        
        self.searchController = UISearchController(searchResultsController: self.resultsController)
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        // Filter through the dogs
        
        self.filteredDogs = self.dogs.filter { (dog: String) -> Bool in
            if dog.lowercased().contains(self.searchController.searchBar.text!.lowercased()) {
                return true
            } else {
                return false
            }
        }
        // Update the results TableView
        
        self.resultsController.tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView {
            return self.dogs.count
        } else {
            return self.filteredDogs.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if tableView == self.tableView {
            cell.textLabel?.text = self.dogs[indexPath.row]
        } else {
            cell.textLabel?.text = self.filteredDogs[indexPath.row]
        }
        return cell
    }
    
}
