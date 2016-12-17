//
//  ViewController.swift
//  UIAlertController Example
//
//  Created by syncmac on 22/03/15.
//  Copyright (c) 2015 SourceFreeze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alertControllerAction(_ sender: AnyObject) {
        
        if (sender.tag == 0)
        {
           // insert Simple UIAlertController code here..
            let alertController = UIAlertController(title: "Default AlertController", message: "A standard alert", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction!) in
                print("you have pressed the Cancel button");
            }
            alertController.addAction(cancelAction)
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
                print("you have pressed OK button");
            }
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true, completion:nil)

        }
        else if(sender.tag == 1)
        {
           // insert UIAlertController with TextField code here..
            var loginTextField: UITextField?
            let alertController = UIAlertController(title: "UIAlertController", message: "UIAlertController With TextField", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok Button Pressed")
            })
            let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
                print("Cancel Button Pressed")
            }
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addTextField { (textField) -> Void in
                // Enter the textfiled customization code here.
                loginTextField = textField
                loginTextField?.placeholder = "Enter your login ID"
            }
            present(alertController, animated: true, completion: nil)
        }
        else if(sender.tag == 2)
        {
           // insert UIAlertController with LoginForm code here..
            var loginTextField: UITextField?
            var passwordTextField: UITextField?
            let alertController = UIAlertController(title: "UIAlertController", message: "UIAlertController With TextField", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok Button Pressed")
            })
            let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
                print("Cancel Button Pressed")
            }
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addTextField { (textField) -> Void in
                // Enter the textfiled customization code here.
                loginTextField = textField
                loginTextField?.placeholder = "User ID"
            }
            alertController.addTextField { (textField) -> Void in
                // Enter the textfiled customization code here.
                passwordTextField = textField
                passwordTextField?.placeholder = "Password"
                passwordTextField?.isSecureTextEntry = true
            }
            
            present(alertController, animated: true, completion: nil)
        }
        else if(sender.tag == 3)
        {
           // UIAlertController With Multiple Buttons code here..
              let alertController = UIAlertController(title: "UIAlertController", message: "UIAlertController with multiple buttons", preferredStyle: .alert)
              let buttonOne = UIAlertAction(title: "One", style: .default, handler: { (action) -> Void in
                print("Button One Pressed")
              })
              let buttonTwo = UIAlertAction(title: "Two", style: .default, handler: { (action) -> Void in
                print("Button Two Pressed")
              })
              let buttonThree = UIAlertAction(title: "Three", style: .default, handler: { (action) -> Void in
                print("Button Three Pressed")
              })
              let buttonFour = UIAlertAction(title: "Four", style: .default, handler: { (action) -> Void in
                print("Button Four Pressed")
             })
             let buttonCancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
                print("Cancel Button Pressed")
             }
            
            alertController.addAction(buttonOne)
            alertController.addAction(buttonTwo)
            alertController.addAction(buttonThree)
            alertController.addAction(buttonFour)
            alertController.addAction(buttonCancel)
            
            present(alertController, animated: true, completion: nil)
        }
        else if(sender.tag == 4)
        {
           // Standard UIActionSheet code here..
            let alertController = UIAlertController(title: "UIActionSheet", message: "UIActionSheet", preferredStyle: .actionSheet)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: { (action) -> Void in
                print("Ok Button Pressed")
            })
            let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) -> Void in
                print("Cancel Button Pressed")
            })
            let  delete = UIAlertAction(title: "Delete", style: .destructive) { (action) -> Void in
                print("Delete Button Pressed")
            }
            
            alertController.addAction(ok)
            alertController.addAction(cancel)
            alertController.addAction(delete)
            
            present(alertController, animated: true, completion: nil)
        }
    }

}

