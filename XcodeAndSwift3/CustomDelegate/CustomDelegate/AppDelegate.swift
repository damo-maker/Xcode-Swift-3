//
//  AppDelegate.swift
//  CustomDelegate
//
//  Created by Damian Johns on 26/10/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import Cocoa

protocol CustomDelegate {
    func CustomDelegateExample()
}

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var other: OtherObject!
    var myDelegate: CustomDelegate!
    @IBOutlet weak var window: NSWindow!

    @IBAction func clickedButton(_ sender: Any) {
        myDelegate.CustomDelegateExample()
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        other = OtherObject()
        myDelegate = other
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

