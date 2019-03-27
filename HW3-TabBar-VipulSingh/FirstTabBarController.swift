//
//  FirstTabBarController.swift
//  HW3-TabBar-VipulSingh
//
//  Created by Vipul Singh on 3/26/19.
//  Copyright © 2019 Vipul Singh. All rights reserved.
//

import UIKit

class FirstTabBarController: UIViewController {
    var screenOneBackgroundView : UIView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Set the colors for the screen.
        //firsttabbar screen is green.
        
        //lightColor
        let lightColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
        //darkColor
        let darkColor = UIColor(red: 153/255, green: 153/255, blue: 0/255, alpha: 1.0)
        
        
        //implmenet NSCalender to help determine time of day
        let hour = NSCalendar.current.component(.hour, from: NSDate() as Date)
        
        //add switch case statments to determine the color based on the time of day
        switch hour{
        case 1..<7: self.screenOneBackgroundView.backgroundColor = darkColor
            break
        case 8..<19: self.screenOneBackgroundView.backgroundColor = lightColor
            break
        case 20..<24: self.screenOneBackgroundView.backgroundColor = darkColor
            break
        default: self.screenOneBackgroundView.backgroundColor = lightColor
        }
        
        print("FirstTabController loaded its view.")
    }
}
