//
//  PlantCVCell.swift
//  CostomCollectionviewTest
//
//  Created by A_Z on 6/26/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class PlantCVCell: UICollectionViewCell {
    @IBOutlet weak var ImagePlant: UIImageView!
    @IBOutlet weak var PricePlant: UILabel!
    
    
    func SetupCell (Image : UIImage , Price : Double) {
        
        ImagePlant.image = Image
        PricePlant.text = "\(Price) EGP"
    }
}
