//
//  ViewController.swift
//  MenuController
//
//  Created by bmiit on 20/04/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //@IBOutlet weak var myTextField : UITextField!
    
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTextField.delegate = self
              
              let menuController: UIMenuController = UIMenuController.shared
              
              menuController.setMenuVisible(true, animated: true)
              
           
              menuController.arrowDirection = UIMenuController.ArrowDirection.default
              
              menuController.setTargetRect(CGRect.zero, in: view)
              
              let menuItem1: UIMenuItem = UIMenuItem(title: "Menu 1", action: #selector(onMenu1(sender:)))
              let menuItem2: UIMenuItem = UIMenuItem(title: "Menu 2", action: #selector(onMenu2(sender:)))
              let menuItem3: UIMenuItem = UIMenuItem(title: "Menu 3", action: #selector(onMenu3(sender:)))
              
              // Store MenuItem in array.
              let myMenuItems: [UIMenuItem] = [menuItem1, menuItem2, menuItem3]
              
              // Added MenuItem to MenuController.
              menuController.menuItems = myMenuItems
    }

    override func canPerformAction(_ action: Selector, withSender sender: Any!) -> Bool {
                return true
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
        
        @objc internal func onMenu1(sender: UIMenuItem) {
            print("onMenu1")
        }
        
        @objc internal func onMenu2(sender: UIMenuItem) {
            print("onMenu2")
        }
        
        @objc internal func onMenu3(sender: UIMenuItem) {
            print("onMenu3")
        }

}

