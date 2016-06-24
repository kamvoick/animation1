//
//  ViewController.swift
//  animacje1
//
//  Created by Kamil Wójcik on 24.06.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var witamLbl: UILabel!
    @IBOutlet weak var drugiLabel: UILabel!
    @IBOutlet weak var trzeciLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidLayoutSubviews() {

        witamLbl.center.y -= view.bounds.height
        drugiLabel.center.y += view.bounds.height
        trzeciLabel.alpha = 0.0
        trzeciLabel.textColor = UIColor.whiteColor()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        //animujemy witam
        UIView.animateWithDuration(1.0, animations: {
            
            self.witamLbl.center.y += self.view.bounds.height
            
            }, completion: { finished in
                self.drugaAnimacja()
        })
        
        //animujemy tło
        UIView.animateWithDuration(2.0, delay: 0.5, options: [], animations: {
            
            self.view.backgroundColor = UIColor.yellowColor()
            
            }, completion: { finished in
                self.kolorTła()
        })
    }
    
    func drugaAnimacja(){
        UIView.animateWithDuration(1.0, delay: 0.0, options: [], animations: { 
            
            self.drugiLabel.center.y -= self.view.bounds.height

            
            }, completion: nil)
    }

    func kolorTła(){
        UIView.animateWithDuration(2.5, animations: { 
            
            self.view.backgroundColor = UIColor.blackColor()
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 1.5, options: [], animations: {
            
            self.trzeciLabel.alpha = 1.0
            }, completion: nil)
    }


}

