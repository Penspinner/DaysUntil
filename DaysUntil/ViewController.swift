//
//  ViewController.swift
//  DaysUntil
//
//  Created by Steven Liao on 8/1/16.
//  Copyright © 2016 Steven Liao. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var datePicker1: UIDatePicker!
    @IBOutlet weak var datePicker2: UIDatePicker!
    @IBOutlet weak var daysApartLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        datePicker1.addTarget(self, action: #selector(updateDaysApartLabel), forControlEvents: .ValueChanged)
        
        datePicker2.addTarget(self, action: #selector(updateDaysApartLabel), forControlEvents: .ValueChanged)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateDaysApartLabel()
    {
        let date1 = datePicker1.date
        let date2 = datePicker2.date
        
        let calendar = NSCalendar.currentCalendar()
        let component = calendar.components([.Day], fromDate: date1, toDate: date2, options: [])
        
        daysApartLabel.text = "\(abs(component.day)) days apart"
    }
}

