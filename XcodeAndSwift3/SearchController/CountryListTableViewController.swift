//
//  CountryListTableViewController.swift
//  SearchControllerTutorial
//
//  Created by Damian Johns on 19/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class CountryListTableViewController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    let countries = JSON(data: try! Data(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "countries", ofType: "json")!)))
    var filteredCountries = [JSON]()

    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchController.searchBar
        
        tableView.setContentOffset(CGPoint(x: 0, y: searchController.searchBar.frame.size.height), animated: false)
        }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive && searchController.searchBar.text != "" {
            return filteredCountries.count
        }
        return countries.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        
        var data: JSON
        
        if searchController.isActive && searchController.searchBar.text != "" {
            data = filteredCountries[indexPath.row]
        } else {
            data = countries[indexPath.row]
        }
        
        let countryName = data["name"]["common"].stringValue
        let countryCapital = data["capital"].stringValue
        
        cell.textLabel?.text = countryName
        cell.detailTextLabel?.text = countryCapital
        
        return cell
    }
    
    func filterContentForSearchText(_ searchText: String) {
        filteredCountries = countries.array!.filter { country in
            return country["name"]["common"].stringValue.lowercased().contains(searchText.lowercased())
        }
        tableView.reloadData()
    }
}

extension CountryListTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}
