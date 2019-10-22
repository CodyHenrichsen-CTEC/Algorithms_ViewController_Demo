//
//  AlgorithmViewController.swift
//  AlgorithmsAM
//
//  Created by Cody Henrichsen on 10/15/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit

class AlgorithmViewController : UIViewController
{
    @IBOutlet weak var algorithmLabel: UILabel!
    
    override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let bullet = "🧟‍♀️"
        setupAlgorithm()
    }
    
    private func setupAlgorithm() -> Void
    {
        let algorithmTitle : String = "How to dance"
        
        let stepOne : String = "First you do the hokey pokey"
        let stepTwo : String = "Then you turn yourself around"
        let stepThree : String = "That's what it's all about"
        let stepFour : String = "Does the Doctor dance?"
        /// continue for your algorithm instructions
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour]
        
        let attributesDictionary = [NSAttributedString.Key.font : algorithmLabel.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithmTitle, attributes: attributesDictionary as [NSAttributedString.Key : Any])
        
        for step in algorithm
        {
            let bullet : String = "☠️"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedString.Key.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmLabel.attributedText = fullAttributedString
    }
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }

}
