//
//  BookTableViewCell.swift
//  BookStore
//
//  Created by MF839-008 on 2016. 6. 2..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var bookCover: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookWriter: UILabel!
    @IBOutlet weak var bookPublisher: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }

}
