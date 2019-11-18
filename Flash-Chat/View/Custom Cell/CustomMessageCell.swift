//
//  CustomMessageCell.swift
//  Flash-Chat
//
//  Created by Mustafa on 10/3/19.
//  Copyright © 2019 Mostafa. All rights reserved.
//

import UIKit

class CustomMessageCell: UITableViewCell {

    @IBOutlet weak var messageBackground: UIView!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var messageBody: UILabel!
    
    @IBOutlet weak var senderUsername: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
}
