//
//  PhotosHeaderVC.swift
//  CostomCollectionviewTest
//
//  Created by A_Z on 6/27/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class PhotosHeaderVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    var arrPhotos = [Photo]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrPhotos.append(Photo(Name: "2018", Image: [UIImage(named: "img_Camer1")!,UIImage(named: "img_Camer2")!,UIImage(named: "img_Camer3")!]))
        arrPhotos.append(Photo(Name: "2019", Image: [UIImage(named: "img_Camer4")!,UIImage(named: "img_Camer5")!,UIImage(named: "img_Camer6")!,UIImage(named: "img_Camer7")!]))
        arrPhotos.append(Photo(Name: "2020", Image: [UIImage(named: "img_Camer8")!,UIImage(named: "img_Camer9")!,UIImage(named: "img_Camer10")!]))
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrPhotos.reverse()
        

        
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrPhotos.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPhotos[section].Image.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotosCell
        Cell.ImageCell.image = arrPhotos[indexPath.section].Image[indexPath.row]
        return Cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.33 , height: collectionView.frame.width * 0.3)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let Header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerCell", for: indexPath) as! PhotosCollectionReusableView
        Header.LBLName.text = arrPhotos[indexPath.section].Name
        Header.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return Header
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 30)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 2, left: 1, bottom: 2, right: 1)
    }


}
struct Photo {
    var Name : String
    var Image : [UIImage]
}
