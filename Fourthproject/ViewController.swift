//
//  ViewController.swift
//  Fourthproject
//
//  Created by Aravind Subramanian on 11/3/17.
//  Copyright © 2017 Aravind Subramanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MenuView: UIView!
    @IBOutlet weak var DarkCircle: MenuDesign!
    @IBOutlet weak var MenuButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func MenuToggle(_ sender: UIButton) {
        if DarkCircle.transform == .identity {
            UIView.animate(withDuration:0.7, animations:{
                self.DarkCircle.transform = CGAffineTransform(scaleX: 20, y: 20)
                self.MenuView.transform = CGAffineTransform(translationX: 112, y: 0)
                self.MenuButton.transform = CGAffineTransform(rotationAngle: self.radians(degrees: 180))
            }) { (true) in
                UIView.animate(withDuration: 0.5, animations: {

                })
            }
        } else {
            UIView.animate(withDuration:0.7, animations:{
                self.DarkCircle.transform = .identity
                self.MenuView.transform = .identity
                self.MenuButton.transform = .identity
            }) { (true) in
            }
        }
    }

    
    func radians(  degrees: Double) -> CGFloat{
        return CGFloat(degrees * .pi / degrees)
    }


}

