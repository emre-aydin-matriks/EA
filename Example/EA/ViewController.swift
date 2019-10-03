//
//  ViewController.swift
//  EA
//
//  Created by emre-aydin-matriks on 09/20/2019.
//  Copyright (c) 2019 emre-aydin-matriks. All rights reserved.
//

import UIKit
import EA

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let customView = CustomView(frame: view.frame)
        view.addSubview(customView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

