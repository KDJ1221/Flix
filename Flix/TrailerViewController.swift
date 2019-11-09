//
//  TrailerViewController.swift
//  Flix
//
//  Created by Miko James on 10/31/19.
//  Copyright © 2019 Miko James. All rights reserved.
//

import UIKit
import WebKit

class TrailerViewController: UIViewController {

    @IBOutlet weak var trailerView: WKWebView!
    
    var trailerUrl : URL!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        trailerView.load(URLRequest(url: trailerUrl))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
