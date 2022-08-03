//
//  ViewController.swift
//  CostomCollectionviewTest
//
//  Created by A_Z on 6/26/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var CollectionPlanet: UICollectionView!
    var PlantData = [PlantST]()
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionPlanet.delegate = self
        CollectionPlanet.dataSource = self
        PlantData.append(PlantST(ImageSt: UIImage(named: "old people")!, PriceSt: 205))
        PlantData.append(PlantST(ImageSt: UIImage(named: "Orphans guarantee")!, PriceSt: 205))
        PlantData.append(PlantST(ImageSt: UIImage(named: "poor")!, PriceSt: 205))
        PlantData.append(PlantST(ImageSt: UIImage(named: "student")!, PriceSt: 301))
        PlantData.append(PlantST(ImageSt: UIImage(named: "zakat")!, PriceSt: 299))
        PlantData.append(PlantST(ImageSt: UIImage(named: "medicine")!, PriceSt: 505))
        PlantData.append(PlantST(ImageSt: UIImage(named: "Orphans guarantee")!, PriceSt: 200))
        PlantData.append(PlantST(ImageSt: UIImage(named: "rate")!, PriceSt: 600))
        PlantData.append(PlantST(ImageSt: UIImage(named: "quran")!, PriceSt: 630))
        PlantData.append(PlantST(ImageSt: UIImage(named: "rate")!, PriceSt: 600))
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PlantData.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Cell  = CollectionPlanet.dequeueReusableCell(withReuseIdentifier: "PlantCell", for: indexPath) as! PlantCVCell
        let Palant = PlantData[indexPath.row]
        Cell.SetupCell(Image: Palant.ImageSt, Price: Palant.PriceSt)
//        Cell.backgroundColor = #colorLiteral(red: 0.2274509804, green: 0.1529411765, blue: 0.3137254902, alpha: 1)
        return Cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.3 , height: self.view.frame.width * 0.45)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }
}
struct PlantST {
    var ImageSt : UIImage
    var PriceSt : Double
}
