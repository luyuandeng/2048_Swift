//
//  MainViewController.swift
//  Swift_2048
//
//  Created by Bing Ma on 5/17/15.
//  Copyright (c) 2015 SpongeBob-GitHub. All rights reserved.
//

import UIKit

class MainViewController : UIViewController {
    
    // 属性设置
    var dimension:Int = 4;
    var width:CGFloat = 50;
    var margin:CGFloat = 7;
    
    var maxNumber:Int = 2048;
    
    // 保存背景图片数据
    var backgrounds:Array<UIView>
    
    init() {
        self.backgrounds = Array<UIView>();
        super.init(nibName:nil, bundle:nil);
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.backgroundColor = UIColor.greenColor();
        setupBackground();
    }
    
    // 设置格子
    func setupBackground() {
        var x:CGFloat = 44;
        var y:CGFloat = 150;
        
        for i in 0..<dimension {
            y = 150;
            
            for j in 0..<dimension {
                var background = UIView(frame: CGRectMake(x, y, width, width));
                background.backgroundColor = UIColor.darkGrayColor();
                self.view.addSubview(background);
                
                // FIXME: 保存到数组
                // backgrounds += background;
                backgrounds.append(background);
                
                y += margin + width;
            }
            x += margin + width;
        }
    }
}