//
//  ViewController.swift
//  AESDecrypt_Upwork
//
//  Created by twizzyindy on 18/05/2021.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let string = EncryptionUtil.decrypt(b64_text: "BwCmmTBfWfL1r90qGLVBqICENh13QyI7Mks1ToNMGoY=")
        
        let alert = NSAlert()
        alert.messageText = string
        alert.alertStyle = .informational
        alert.runModal()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

