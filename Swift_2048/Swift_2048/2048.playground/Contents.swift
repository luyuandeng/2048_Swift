//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var j : Int = 0;
var i : Int;
for (i=1; i<10; i++)
{
    j+=i
}

// TODO: btn未显示出来？
var btn = UIButton().buttonType:.Curtom;
btn.setTitle("HelloWorld.", forState:.Normal);
btn.backgroundColor = UIColor.redColor();
btn.titleLabel!.textColor = UIColor.whiteColor();
btn.frame = CGRectMake(0, 0, 200, 44);
