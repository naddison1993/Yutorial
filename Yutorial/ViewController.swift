//
//  ViewController.swift
//  Yutorial
//
//  Created by Nathan Addison on 11/12/15.
//  Copyright (c) 2015 Nathan Addison. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tutorialTableView: UITableView!
    @IBOutlet weak var sectionButton: UIBarButtonItem!
    
    
    
    //// Model
    var tutorials = ["Yutorial tutorial", "Apple tutorial"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //// Data Source functions
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tutorials.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Allocate a new cell, possibly
        
        let newCell = self.tutorialTableView.dequeueReusableCellWithIdentifier("yutorialCell", forIndexPath: indexPath) as! YutorialTableCell
        
        // Set the text in the cell
        newCell.tutorialName.text = tutorials[indexPath.row]
        
        
        return newCell
    }
    
    //// Delegate Functions
    
    func tableView(tableView: UITableView, didSelectRowAtINdexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showYutorialDetails", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showYutorialDetails") {
            //// upcomingView is set to YutorialDetailViewController
            var upcomingView: YutorialDetailViewController = segue.destinationViewController as! YutorialDetailViewController
            
            // indexPath is set to the path that was tapped
            let indexPath = self.tutorialTableView.indexPathForSelectedRow()!
            
            // tutorialInfo is set for the selected tutorial
            let tutorialName = tutorials[indexPath.row]
            let tutorialInfo = "All about \(tutorialName)"
            
            // let the new view controller have its info
            upcomingView.tutorialInformation = tutorialInfo
            self.tutorialTableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
    
    
    
    ////IBActions
    @IBAction func sectionButtonTapped(sender: UIBarButtonItem){
        tutorials.append("you added a section")
    }



}

