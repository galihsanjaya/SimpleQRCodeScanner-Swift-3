//
//  ViewController.swift
//  SimpleQRCodeScanner
//
//  Created by Galih Sanjaya on 4/18/17.
//  Copyright © 2017 Galih Sanjaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ViewControllerScannerDelegate {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text="Result"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func labelChanged(result: String?) {
        resultLabel.text=result
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerScanner = segue.destination as? ScannerViewController {
            viewControllerScanner.delegate = self as? ViewControllerScannerDelegate
            
        }
    }
}

