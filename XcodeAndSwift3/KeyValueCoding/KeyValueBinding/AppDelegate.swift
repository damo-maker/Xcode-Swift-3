//
//  AppDelegate.swift
//  KeyValueBinding
//
//  Created by Damian Johns on 29/10/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let book: Book = Book()
        // book.author = "Arthur"
        book.setValue("Jimmy", forKey: "author")
        print(book.value(forKey: "author")!)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

