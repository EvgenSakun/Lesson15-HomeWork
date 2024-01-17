//
//  ViewController.swift
//  HM15
//
//  Created by Evgeny Sakun on 17.01.24.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customAlert = CustomAlertView(frame: CGRect(x: 0, y: 0, width: 380, height: 200))
                customAlert.setTitle("Offer")
                customAlert.setCancelButtonTitle("Cancel")
                customAlert.setConfirmButtonTitle("Confirm")
        
                view.addSubview(customAlert)
                customAlert.center = view.center
        
    }

    
    

}

