//
//  ViewController.swift
//  LocalNotifications
//
//  Created by T. Andrew Binkowski on 3/6/17.
//  Copyright © 2017 T. Andrew Binkowski. All rights reserved.
//


// https://developer.apple.com/videos/play/wwdc2016/707/
import UIKit
import UserNotifications

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let options: UNAuthorizationOptions = [.alert, .sound];
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: options) {
            (granted, error) in
            if !granted {
                print("Something went wrong")
            }
        }
        
        // Swift
        center.getNotificationSettings { (settings) in
            if settings.authorizationStatus != .authorized {
                // Notifications not allowed
            }
        }
        
        
    }
    
    
    @IBAction func tapDelete(_ sender: Any) {
        listNotification()
        
        
        let center = UNUserNotificationCenter.current()
        center.removeAllPendingNotificationRequests()
        
        listNotification()
    }
    
    func listNotification() {
        
        UNUserNotificationCenter.current().getPendingNotificationRequests {
            requests in
            print(requests)
        }
        
        
    }
    
    @IBAction func tapCalendar(_ sender: UIButton) {
        let content = UNMutableNotificationContent()
        content.title = "Don't forget"
        content.body = "Buy some milk CALENDAR"
        content.sound = UNNotificationSound.default()
        
        
        let date = Date(timeIntervalSinceNow: 10)
        let triggerDate = Calendar.current.dateComponents([.year,.month,.day,.hour,.minute,.second,], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDate, repeats: false)
        
       
        // Add a notification
        let identifier = "Time Notification"
        let request = UNNotificationRequest(identifier: identifier,
                                            content: content,
                                            trigger: trigger)
        
        let center = UNUserNotificationCenter.current()
        center.add(request, withCompletionHandler: { (error) in
            if error != nil {
                // Something went wrong
            }
        })
        
        listNotification()
    }
    
    @IBAction func tapTime(_ sender: UIButton) {
        let content = UNMutableNotificationContent()
        content.title = "Don't forget"
        content.body = "Buy some milk"
        content.sound = UNNotificationSound.default()
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5,
                                                        repeats: false)
        
        // Add a notification
        let identifier = "Time Notification"
        let request = UNNotificationRequest(identifier: identifier,
                                            content: content,
                                            trigger: trigger)
        let center = UNUserNotificationCenter.current()
        center.add(request, withCompletionHandler: { (error) in
            if error != nil {
                // Something went wrong
            }
        })
        
        listNotification()
    }
    
    
}

