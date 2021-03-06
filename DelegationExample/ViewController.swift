//
//  ViewController.swift
//  DelegationExample
//
//  Created by Nicholas Outram on 13/09/2014.
//  Copyright (c) 2014 Plymouth University. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MyModalViewControllerProtocol {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if (segue.identifier == "ModalPresentation") {
            //Set delegate
            let vc = segue.destination as! MyModalViewController
            vc.delegate = self
        }

    }
    
    //Conform to the protocol MyModalViewControllerProtocol
    func doDismiss() {
        self.dismiss(animated: true, completion: nil)
    }

} //END CLASS

