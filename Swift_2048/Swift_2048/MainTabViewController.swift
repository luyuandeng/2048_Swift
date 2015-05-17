//
//  MainTabViewController.swift
//  Swift_2048
//
//  Created by Bing Ma on 5/17/15.
//  Copyright (c) 2015 SpongeBob-GitHub. All rights reserved.
//

import UIKit
class MainTabViewController : UITabBarController
{
    init(){
        super.init(nibName:nil, bundle:nil);
        
        var mainView = MainViewController();
        mainView.title = "2048";
        
        var settingView = SettingViewController();
        settingView.title = "Setting";
        
        // 设置导航控制器
        var main = UINavigationController(rootViewController: mainView);
        var setting = UINavigationController(rootViewController: settingView);
        
        // 设置默认选项卡（利用一个数组）
        self.viewControllers = [
            main, setting
        ];
        
        self.selectedIndex=0;
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}