//
//  AppDelegate.swift
//  FirstApp
//
//  Created by Weinian He on 11/29/17.
//  Copyright © 2017 Weinian He. All rights reserved.
//

import Cocoa

//@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
/*
      let window = NSWindow(contentRect: NSMakeRect(0, 0, 200, 200), styleMask:NSWindowStyleMask.titled, backing: .buffered, defer: false)
  */
    
    let newWindow = NSWindow(contentRect: NSMakeRect(100, 100, 400, 400), styleMask: [NSWindowStyleMask.titled,NSWindowStyleMask.resizable,NSWindowStyleMask.miniaturizable,NSWindowStyleMask.closable], backing: .buffered, defer: false)
    
    let newText = NSTextField(frame: NSMakeRect(0, NSScreen.main()!.frame.height/4, NSScreen.main()!.frame.width/2, 40))
    let myView = NSView(frame: NSMakeRect(0, 0, NSScreen.main()!.frame.width/2, NSScreen.main()!.frame.height/2))
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
 // Insert code here to initialize your application
      //  let newWindow = NSWindow(contentRect: NSMakeRect(0, 0, NSScreen.main()!.frame.width/2, NSScreen.main()!.frame.height/2), styleMask: [NSWindowStyleMask.titled,NSWindowStyleMask.resizable,NSWindowStyleMask.miniaturizable,NSWindowStyleMask.closable], backing: NSBackingStoreType.buffered, defer: false)


        
  

 newText.font = NSFont(name: "Arial Black", size: 24)
 newText.backgroundColor = NSColor.clear
 newText.isBordered = false
 newText.textColor = NSColor.white
 newText.alignment = NSTextAlignment.center
 newText.stringValue = "Hello World"
 newText.isSelectable = true
        
        
 newWindow.isOpaque = false
 newWindow.isMovableByWindowBackground = true
 newWindow.backgroundColor = NSColor(calibratedHue: 0, saturation: 1.0, brightness: 0, alpha: 0.7)
 newWindow.title = "Hello World"
 newWindow.center()
         myView.addSubview(newText)
        newWindow.contentView?.addSubview(myView)
        newWindow.makeKeyAndOrderFront(nil)
 
 /*
        window.cascadeTopLeft(from: NSMakePoint(20, 20))
        window.title="Test Is GOOD"
        window.makeKeyAndOrderFront(nil)
   */
       // let controller = NSWindowController.init(window: window)
        //controller.showWindow(self)

    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}
