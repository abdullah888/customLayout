//
//  ImageCell.swift
//  GMApp
//
//  Created by abdullah on 25/07/1441 AH.
//  Copyright © 1441 abdullah. All rights reserved.
//

import UIKit
import Gemini

class ImageCell: UICollectionViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    
    func Update(Image : UIImage) {
              self.ImageView.image = Image
        self.ImageView.contentMode = .scaleAspectFill
          }
          
    
    
    
    
    
}
