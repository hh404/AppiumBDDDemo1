//
//  BadgeLabel.swift
//  HSBCRewards
//
//  Created by hans on 2018/2/9.
//  Copyright © 2018年 HSBC. All rights reserved.
//

import UIKit


open class HSBCBadgeLabel: UILabel {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupUI();
        self.isAccessibilityElement = true
        self.accessibilityIdentifier = "accessibility.badge"
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    public class func defaultBadgeLabel() -> HSBCBadgeLabel {
        return HSBCBadgeLabel.init(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
    }
    
    private func setupUI() {
        self.textColor = UIColor.white
        self.font = UIFont.systemFont(ofSize: 13)
        self.textAlignment = NSTextAlignment.center
        self.layer.cornerRadius = self.bHeight * 0.5
        self.layer.masksToBounds = true
        self.backgroundColor =  UIColor.green
    }
    
    // 重写UILabel的text属性方法
    override open var text: String? {
        didSet {
            // 根据内容长度调整Label宽
            let stringWidth = width(string: self.text, font: self.font, height: self.bHeight)
            if(floor(bHeight) > stringWidth)
            {
                self.bWidth = self.bHeight
                return
            }
            self.bWidth = self.bHeight + stringWidth;
        }
    }
    
    private func width(string: String?, font: UIFont, height: CGFloat) -> CGFloat {
        if string?.isEmpty == true { return 0.0 }
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
//        let attributes = [NSAttributedStringKey.font.rawValue: font,NSAttributedStringKey.paragraphStyle:paragraphStyle] as! [String : Any]
        
        let size = CGSize(width: CGFloat(Double.greatestFiniteMagnitude), height: height)
        return ceil((string! as NSString).boundingRect(with: size, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes:[NSAttributedStringKey.font: font], context: nil).width)
    }

}
