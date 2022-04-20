//
//  ViewController.swift
//  Gestures
//
//  Created by bmiit on 20/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        
        tap.numberOfTapsRequired = 2
        
        view.addGestureRecognizer(tap)
        
        
        
        //long press
        let lp = UILongPressGestureRecognizer(target: self, action: #selector(lpdetect))
        lp.numberOfTouchesRequired = 1
        lp.allowableMovement = 10
        lp.minimumPressDuration = 3
        view.addGestureRecognizer(lp)
        
        
        //pinch
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(pdetect))
        view.addGestureRecognizer(pinch)
        
        //swipe right
        let sright = UISwipeGestureRecognizer(target: self, action: #selector(swipeDetect))
        sright.direction = .right
        view.addGestureRecognizer(sright)
        
        //rotation
        let rotate = UIPinchGestureRecognizer(target: self, action: #selector(rdetect))
        view.addGestureRecognizer(rotate)
    }

    @objc func doubleTapped()
    {
        print("tap detected")
    }
    
    @objc func lpdetect()
    {
        print("long press detected")
    }
    
    
    @objc func pdetect()
    {
        print("pinch detected")
    }
    
    
    @objc func swipeDetect()
    {
        print("right swipe detected")
    }
    
    @objc func rdetect()
    {
        print("pinch detected")
    }
}

