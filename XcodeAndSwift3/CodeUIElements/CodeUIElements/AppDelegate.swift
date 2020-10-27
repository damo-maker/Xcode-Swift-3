//
//  AppDelegate.swift
//  CodeUIElements
//
//  Created by Damian Johns on 27/10/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        if #available(OSX 10.12, *) {
            _ = NSTextField(labelWithString: "example label")
        } else {
            // Fallback on earlier versions - e.g swift 2.1
            let label: NSTextField = NSTextField(frame: NSRect(x: 50, y: 300, width: 90, height: 20))
            label.stringValue = "example text"
            label.backgroundColor = NSColor.clear
            window.contentView?.addSubview(label)
        }
        
        if #available(OSX 10.12, *) {
            _ = NSButton(title: "example button", target: self, action: #selector(exampleAction))
        } else {
            // Fallback on earlier versions e.g swift 2.1
            let button = NSButton(frame: NSRect(x: 50, y: 270, width: 90, height: 20))
            button.title = "click me!"
            button.target = self
            button.action = #selector(exampleAction)
            window.contentView?.addSubview(button)
        }
        
    }
    
    func exampleAction() {
        print("button works!")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}

