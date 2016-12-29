//
//  ViewController.swift
//  Spinners & Alerts
//
//  Created by Kostyantyn Runduyev on 12/29/16.
//  Copyright © 2016 Kostyantyn Runduyev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activityIndicator = UIActivityIndicatorView()

    @IBAction func createAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Hey There!", message: "Are you shure?", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            print("OK")
            self.dismiss(animated: true, completion: nil)
        }))
        
        alertController.addAction(UIAlertAction(title: "NO", style: UIAlertActionStyle.default, handler: { (action) in
            print("No")
            self.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func pauseApp(_ sender: Any) {
        activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
//        UIApplication.shared.beginIgnoringInteractionEvents()
    }
    
    @IBAction func restoreApp(_ sender: Any) {
        activityIndicator.stopAnimating()
//        UIApplication.shared.endIgnoringInteractionEvents()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

