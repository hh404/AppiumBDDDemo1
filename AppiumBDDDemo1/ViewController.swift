//
//  ViewController.swift
//  AppiumBDDDemo1
//
//  Created by hans on 2018/3/15.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label :UILabel = UILabel(frame: CGRect(x: 40, y: 40, width: 100, height: 30))
        label.backgroundColor = UIColor.red
        label.text = "common label"
        self.view.addSubview(label)
        
        let labelView :UIView = UILabel(frame: CGRect(x: 180, y: 40, width: 100, height: 80))
        labelView.backgroundColor = UIColor.yellow
        self.view.addSubview(labelView)
        
        let subLabel :UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 80, height: 30))
        subLabel.backgroundColor = UIColor.blue
        subLabel.text = "sub label"
        labelView.addSubview(subLabel)
        
        let btn :UIButton = UIButton(frame: CGRect(x: 40, y: 140, width: 100, height: 30))
        btn.backgroundColor = UIColor.red
        btn.setTitle("btn title", for: .normal)
        btn.isAccessibilityElement = false
        self.view.addSubview(btn)
        
        let btnSubLabel :UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 60, height: 30))
        btnSubLabel.backgroundColor = UIColor.blue
        btnSubLabel.text = "btnSubLabel"
        btn.addSubview(btnSubLabel)
        
        let btnView :UIView = UIView(frame: CGRect(x: 180, y: 180, width: 100, height: 80))
        btnView.backgroundColor = UIColor.magenta
        self.view.addSubview(btnView)
        
        let subBtn :UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        subBtn.backgroundColor = UIColor.red
        subBtn.setTitle("subbtn title", for: .normal)
        self.view.addSubview(subBtn)
        btnView.addSubview(subBtn)
        
        let imgView :UIImageView = UIImageView.init(image: UIImage.init(named: "btn_checkbox_check"))
        imgView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        subBtn.addSubview(imgView)
        btnView.badge.addBadge(text: "100")
        
        let customView = CustomView()
        self.view.addSubview(customView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

