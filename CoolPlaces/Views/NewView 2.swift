//
//  NewView.swift
//  CoolPlaces
//
//  Created by Jaylen Davis on 1/24/23.
//

import UIKit

class NewView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func foodButton(_ sender: UIButton) {
        let mv = storyboard?.instantiateViewController(withIdentifier: "maps") as! MapsView
        present(mv,animated:true)
    }
}
