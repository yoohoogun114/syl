//
//  AppDelegate.swift
//  syl
//
//  Created by 유호균 on 2016. 4. 12..
//  Copyright © 2016년 timeros. All rights reserved.
//

import UIKit
import Parse
import Bolts
import SwiftyJSON
import Alamofire
import Mapbox
import XCGLogger



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //let log = XCGLogger.defaultInstance()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let configuration = ParseClientConfiguration{
            $0.applicationId = "yec3pFNbkmIi9d4V25Y5Ki2EyhAWXHqL4A1ByD77"
            $0.clientKey = "0Y4pLg8rHBeTDc24CllqcF8mQHsfVlYLXz31jmoc"
            $0.server = "https://api.shareyourlight.io/parse"
        }
            Parse.initialize(with: configuration)
        
        let cacheDirectory: URL = {
            let urls = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)
            return urls[urls.endIndex - 1]
        }()
        let logPath: URL = cacheDirectory.appendingPathComponent("app.log")
        //log.setup(.Debug, showThreadName: false, showLogLevel: false, showFileNames: false, showLineNumbers: true, writeToFile: logPath, fileLogLevel: .Debug)
        //log.setup(.Debug, showThreadName: true, showLogLevel: true, showFileNames: true, showLineNumbers: true, writeToFile: "path/to/file", fileLogLevel: .Debug)
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

