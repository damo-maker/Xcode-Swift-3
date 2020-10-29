//
//  AppDelegate.swift
//  CocoaBinding
//
//  Created by Damian Johns on 29/10/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    let book: Book = Book()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        book.setValue("Jimmy", forKey: "author")
        book.setValue("Life and Times of Jimmy the Pigeon", forKey: "title")
        book.setValue(318, forKey: "pages")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

