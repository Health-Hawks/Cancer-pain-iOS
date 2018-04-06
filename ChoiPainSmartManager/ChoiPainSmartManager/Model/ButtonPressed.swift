//
//  ButtonPressed.swift
//  ChoiPainSmartManager
//
//  Created by Micheal Finney on 4/2/18.
//  Copyright © 2018 Micheal Finney. All rights reserved.
//

import UIKit

func ButtonPressed(sender: UIButton) {
    if sender.backgroundColor != UIColor.orange {
        sender.backgroundColor = UIColor.orange
    } else if
        sender.backgroundColor == UIColor.orange {
        sender.backgroundColor = UIColor.lightGray.withAlphaComponent(0.6)
    }
}
