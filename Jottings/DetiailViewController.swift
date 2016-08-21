//
//  ViewController.swift
//  Jottings
//
//  Created by Morten Kals on 16/08/2016.
//  Copyright © 2016 Kals. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var bodyField: UITextView!

    @IBOutlet weak var bottomHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func keyboardWillShow(notification: NSNotification) {
        if let userInfo = notification.userInfo {
            if let keybaordSize = (userInfo[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
                bottomHeight.constant = keybaordSize.height
                view.setNeedsDisplay()
            }
        }
    }
    
    func keyboardWillHide(notification: NSNotification) {
        bottomHeight.constant = 0
        view.setNeedsDisplay()
    }
}

