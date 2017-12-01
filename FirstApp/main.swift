//
//  main.swift
//  FirstApp
//
//  Created by Weinian He on 11/30/17.
//  Copyright © 2017 Weinian He. All rights reserved.
//

//import Foundation
import Cocoa
let app = NSApplication.shared()
let menubar = NSMenu()
let appmenuItem = NSMenuItem()
menubar.addItem(appmenuItem)
app.mainMenu = menubar
let appMenu = NSMenu()
let quitTitle = "Quit App"
let quitMenuItem = NSMenuItem(title: quitTitle, action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")
appMenu.addItem(quitMenuItem)
appmenuItem.submenu = appMenu

let appDelegate = AppDelegate()
app.delegate = appDelegate
app.activate(ignoringOtherApps: true)
app.run()
