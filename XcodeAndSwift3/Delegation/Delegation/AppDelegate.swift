//
//  AppDelegate.swift
//  Delegation
//
//  Created by Damian Johns on 26/10/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSComboBoxDelegate {

    @IBOutlet weak var window: NSWindow!

    func comboBoxSelectionDidChange(_ notification: Notification) {
        let combo: NSComboBox = notification.object as! NSComboBox
        print(combo.objectValueOfSelectedItem!)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        print("did finish launching")
    }
    
    func applicationDidBecomeActive(_ notification: Notification) {
        print("active!")
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        print("app will terminate")
    }


}

