//
//  YutorialDetailViewController.swift
//  Yutorial
//
//  Created by Nathan Addison on 11/18/15.
//  Copyright (c) 2015 Nathan Addison. All rights reserved.
//

import UIKit

class YutorialDetailViewController: UIViewController {
    
    @IBOutlet weak var tutorialLabel: UILabel!
    var tutorialInformation: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tutorialLabel.text = self.tutorialInformation
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
