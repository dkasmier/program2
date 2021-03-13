//
//  ViewController.swift
//  program2
//
//  Created by Daniel Kasmier on 3/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frame1: UIImageView!
    @IBAction func button(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: { () -> Void in
            self.frame1.transform = CGAffineTransform(rotationAngle: CGFloat(360 * M_PI))
            }) { (succeed) -> Void in

            }
        UIView.beginAnimations(nil, context: nil)
            UIView.setAnimationDuration(1)
        UIView.setAnimationCurve(UIView.AnimationCurve.easeIn)
            let radians = CGFloat(360 * M_PI / 360)
        frame1.transform = CGAffineTransform(rotationAngle: radians)
            UIView.commitAnimations()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

