//
//  ResultViewController.swift
//  Gacha
//
//  Created by Paul McCartney on 2016/06/07.
//  Copyright © 2016年 shiba. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    var monsterArray: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let number = Int(rand() % 10)
        
//        monsterArray = [UIImage(named: "monster001")!,UIImage(named:"monster002")!,UIImage(named:"monster003")!,UIImage(named:"monster004")!,UIImage(named:"monster005")!,UIImage(named:"monster006")!,UIImage(named:"monster007")!,UIImage(named:"monster008")!,UIImage(named:"monster009")!,UIImage(named: "monster010")!
//        ]
        monsterArray = [UIImage(named: "monster001")!,UIImage(named: "monster002")!,UIImage(named: "monster003")!,UIImage(named: "monster004")!,UIImage(named: "monster005")!,UIImage(named: "monster006")!,UIImage(named: "monster007")!,UIImage(named: "monster008")!,UIImage(named: "monster009")!,UIImage(named: "monster010")!]
        
        monsterImageView.image = monsterArray[number]
        
        if number == 9 {
            backgroundImageView.image = UIImage(named: "bg_gold")
        } else if number > 6 {
            backgroundImageView.image = UIImage(named: "bg_red")
        } else {
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fromValue = NSNumber(double: 0)
        animation.toValue = NSNumber(double:  2 * M_PI)
        animation.valueFunction = CAValueFunction(name: kCAValueFunctionRotateZ)
        animation.duration = 5
        animation.repeatCount = Float.infinity
        backgroundImageView.layer.addAnimation(animation, forKey: nil)
        
    }
    
    @IBAction func back() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
