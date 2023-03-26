//
//  Spinner.swift
//  GameList
//
//  Created by MacBook Air on 26/03/23.
//

import UIKit

class Spinner: UIViewController{
    
    var delayBeforeClosing : Double = 1
    
    override func viewDidLoad() {
        var dispTime =  DispatchTime.now() + delayBeforeClosing
        DispatchQueue.main.asyncAfter(deadline: dispTime ) {
            self.dismiss(animated: true, completion: nil)
        }
    }
}
