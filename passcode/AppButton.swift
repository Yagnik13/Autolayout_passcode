//
//  AppButton.swift
//  passcode
//
//  Created by Yagnik on 08/02/17.
//  Copyright © 2017 Yagnik. All rights reserved.
//

import UIKit

class AppButton: UIButton {

    let alphabets:Dictionary<String,String> = ["1":"",
                                               "2":"A B C",
                                               "3":"D E F",
                                               "4":"G H I",
                                               "5":"J K L",
                                               "6":"M N O",
                                               "7":"P Q R S",
                                               "8":"T U V",
                                               "9":"W X Y Z",
                                               "0":"",
                                               ".":""]
    
    let alphabetLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 16.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1.0
        
        self.addSubview(alphabetLabel)
        alphabetLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        alphabetLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5.0).isActive = true
        alphabetLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 5.0).isActive = true
        alphabetLabel.heightAnchor.constraint(equalToConstant: 22.0).isActive = true
        
        if let title = self.titleLabel?.text {
            alphabetLabel.text = alphabets[title]
        }
        
    }

}
