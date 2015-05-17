//
//  ViewController.swift
//  Swift_2048
//
//  Created by Bing Ma on 5/17/15.
//  Copyright (c) 2015 SpongeBob-GitHub. All rights reserved.
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
    
    // 开始游戏
    @IBAction func startGame(sender:UIButton)
    {
        let alertView = UIAlertView();
        alertView.title = "Starting";
        alertView.message = "The Game will Begining, Are you Ready? ";
        alertView.addButtonWithTitle("Ready Go!");
        alertView.show();
        alertView.delegate = self;
    }
    
    // modal出TabViewController
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        self.presentViewController(MainTabViewController(), animated: true, completion: nil);
    }
}

