//
//  ViewController.swift
//  NSAttributeLabel
//
//  Created by MindLogic Solutions on 26/05/16.
//  Copyright © 2016 com.mls. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl1AttributeText()
        lbl2Attributetext()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func lbl1AttributeText(){
        //attribute code for label1
        let s1 = "You Save:"
        let s2 = "\(500)\(1000)"
        let s3 = "(\(Float(50))%)"
        
        let newString = "\(s1) \(s2) \(s3)" as NSString
        let attString = NSMutableAttributedString(string: newString as String)
        
        let att1 = [NSForegroundColorAttributeName:UIColor.greenColor()]
        let att2 = [NSForegroundColorAttributeName:UIColor.redColor()]
        let att3 = [NSForegroundColorAttributeName:UIColor.purpleColor()]
        
        attString.addAttributes(att1, range: newString.rangeOfString("\(s1)"))
        attString.addAttributes(att2, range: newString.rangeOfString("\(s3)"))
        attString.addAttributes(att3, range: newString.rangeOfString("\(s2)"))
        
        self.lbl1.attributedText = attString

    }
    
    func lbl2Attributetext(){
        //attribute code for label2
        let str1 = "\(1000)\(Float(40))"
        let str2 = "\(500)\(Float(35))"
        
        let string = "\(str1) \(str2)" as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String)
        
        let attribute1 = [NSForegroundColorAttributeName: UIColor.redColor()]
        let attribute2 = [NSForegroundColorAttributeName:UIColor.darkGrayColor(), NSStrikethroughStyleAttributeName: 1]
        
        attributedString.addAttributes(attribute1, range: string.rangeOfString("\(str1)"))
        attributedString.addAttributes(attribute2, range: string.rangeOfString("\(str2)"))
        
        self.lbl2.attributedText = attributedString
    }


}

