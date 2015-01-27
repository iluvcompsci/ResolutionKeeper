//
//  ViewController.swift
//  resolutionKeeper
//
//  Created by Bliss Chapman on 1/26/15.
//  Copyright (c) 2015 Bliss Chapman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var notificationFireDate: UIDatePicker!
    @IBOutlet weak var resolutionName: UITextField!
    
    var reminderNotification = UILocalNotification()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func notifyMeWasTapped(sender: AnyObject) {
        //println("Hello fellow cocoanutter!")
        
        reminderNotification.timeZone = NSTimeZone.defaultTimeZone()
        var dateToFireNotification = notificationFireDate
        reminderNotification.fireDate = dateToFireNotification.date
        reminderNotification.alertBody = "Keep your promises! \(resolutionName.text)"
        UIApplication.sharedApplication().scheduleLocalNotification(reminderNotification)
    }
    

}

