//
//  ViewController.swift
//  youTubeTuts
//
//  Created by Damian Johns on 16/05/2020.
//  Copyright © 2020 Damian Johns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Setting up file path
        
        let fileName = "Test"
        let DocumentDirURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
        
        print("File Path: \(fileURL.path)")
        
        // Writing to the file just created
        
        let writeString = "Write this text to the file in Swift"
        do {
            // Write to the file
            try writeString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
        } catch let ErrorType as NSError {
            print("Failed to write to URL")
            print(ErrorType)
        }
        
        // Read the file just created
        
        var readString = ""
        do {
            readString = try String(contentsOf: fileURL)
        } catch let ErrorType as NSError {
            print("Failed to read file")
            print(ErrorType)
        }
        
        print("Contents of the file: \(readString)")
        
        // read from a file within your project
        
        let fileURLProject = Bundle.main.path(forResource: "hello", ofType: "txt")
        var readStringProject = ""
        do {
            readStringProject = try String(contentsOfFile: fileURLProject!, encoding: String.Encoding.utf8)
        } catch let ErrorType as NSError {
            print("Failed to read from project")
            print(ErrorType)
        }
        print(readStringProject)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

