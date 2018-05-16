//
//  ViewController.swift
//  HW2Single
//
//  Created by Brian on 5/15/18.
//  Copyright © 2018 Brian. All rights reserved.
//

import UIKit
import CoreLocation
import Foundation


class ViewController: UIViewController {
    @IBOutlet weak var lat1: UITextField!
    @IBOutlet weak var lat2: UITextField!
    @IBOutlet weak var long1: UITextField!
    @IBOutlet weak var long2: UITextField!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var bearingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clearAction(_ sender: UIButton) {
        lat1.text = ""
        long1.text = ""
        lat2.text = ""
        long2.text = ""
        distanceLabel.text = ""
        bearingLabel.text = ""
    }
    

    @IBAction func calculateValue(_ sender: UIButton) {
        let x1 = Double(lat1.text!)
        let y1 = Double(long1.text!)
        let x2 = Double(lat2.text!)
        let y2 = Double(long2.text!)
        
        let coordinate1 = CLLocation(latitude:x1!, longitude: y1!)
        let coordinate2 = CLLocation(latitude:x2!, longitude: y2!)
        
        let distanceInMeters = coordinate1.distance(from:coordinate2)
        
        distanceLabel.text = String(distanceInMeters)
        
        bearingLabel.text = String(coordinate1.bearingToPoint(point: coordinate2))
        
        
        
        
        
        
        
    }
    
}

