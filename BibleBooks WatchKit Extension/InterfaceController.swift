//
//  InterfaceController.swift
//  BibleBooks WatchKit Extension
//
//  Created by Michael Litman on 12/14/15.
//  Copyright © 2015 cuw. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController, WCSessionDelegate {
    
    @IBOutlet var theWKTable: WKInterfaceTable!
    
    var session : WCSession
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if WCSession.isSupported()
        {
            self.session = WCSession.defaultSession()
            session.delegate = self
            session.activateSession()
        }
        theWKTable.setNumberOfRows(66, withRowType: "cell")
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}
