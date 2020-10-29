//
//  AppDelegate.swift
//  CreateTable
//
//  Created by Damian Johns on 29/10/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSTableViewDataSource {
    
    let data: [String] = ["Item 1", "Item 2", "Item 3"]
    let data1: [String] = ["Item A", "Item B", "Item C"]
    
    @IBOutlet weak var window: NSWindow!
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return data.count
    }

    func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
        if(tableColumn?.identifier == "letter") {
            return data1[row]
        } else {
            return data[row]
        }
        
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

