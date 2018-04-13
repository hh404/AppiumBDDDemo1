//
//  CustomView.swift
//  AppiumBDDDemo1
//
//  Created by hans on 2018/4/13.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit

class CustomView: UIView {
    let containView = UIView()
    let testSubView1 = UILabel()
    let testSubView2 = UILabel()
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(containView)
        self.testSubView1.isAccessibilityElement = true
        self.testSubView1.accessibilityIdentifier = "test.AccessibilityIdentifier"
        
        self.containView.addSubview(self.testSubView1)
        self.containView.addSubview(self.testSubView2)
        self.accessibilityElements = [self.containView]
        self.containView.accessibilityElements = [self.testSubView1]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
