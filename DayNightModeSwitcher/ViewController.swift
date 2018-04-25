//
//  ViewController.swift
//  DayNightModeSwitcher
//
//  Created by Admin on 19.04.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switcher: UISwitch!
    var dayNightModeSwitcher: DayNightModeSwitcher!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dayNightModeSwitcher = DayNightModeSwitcher(frame: CGRect(x: 15, y: 254, width: 350, height: 175))
        dayNightModeSwitcher.layer.masksToBounds = false
        dayNightModeSwitcher.layer.shadowColor = UIColor.black.cgColor
        dayNightModeSwitcher.layer.shadowOpacity = 1
        dayNightModeSwitcher.layer.shadowOffset = CGSize(width: 0, height: 0)
        dayNightModeSwitcher.layer.shadowRadius = 25
        dayNightModeSwitcher.delegate = self
        
        self.view.addSubview(dayNightModeSwitcher)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switcherChangedValue(_ sender: UISwitch) {
        if(sender.isOn == true) {
            dayNightModeSwitcher.set(to: .day, animated: true)
        }
        else {
            dayNightModeSwitcher.set(to: .night, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: DayNightModeSwitcherDelegate {
    func switcher(_ switcher: DayNightModeSwitcher, didChangeValueTo value: TypeOfSwitcher) {
        if(value == .night){
            
            self.switcher.setOn(false, animated: true)
            
        }
        if(value == .day){
            
            self.switcher.setOn(true, animated: true)
        }
    }
}

