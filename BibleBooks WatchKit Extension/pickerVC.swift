//
//  pickerVC.swift
//  BibleBooks
//
//  Created by Nathaniel Konkel on 12/14/15.
//  Copyright © 2015 cuw. All rights reserved.
//

import UIKit
import WatchConnectivity

class pickerVC: NSObject
{
    var session : WCSession!
    
    override func awakeWithContext(context : AnyObject?)
    {
        super.awakeWithContext(context)
        if WCSession.isSupported()
        {
            self.session = WCSession.defaultSession()
            session.delegate = self
            session.activateSession()
        }
    }
}
