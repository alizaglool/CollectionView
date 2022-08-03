//
//  HomeVC.swift
//  CostomCollectionviewTest
//
//  Created by A_Z on 6/26/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class HomeVC: UIViewController ,UICollectionViewDelegateFlowLayout , UICollectionViewDataSource , UICollectionViewDelegate{

    @IBOutlet weak var CollectionViewHome: UICollectionView!
    @IBOutlet weak var PageControl: UIPageControl!
    var ImageName = [UIImage(named: "img_Camer1")!,UIImage(named: "img_Camer2")!,UIImage(named: "img_Camer3")!,UIImage(named: "img_Camer4")!,UIImage(named: "img_Camer5")!,UIImage(named: "img_Camer6")!,UIImage(named: "img_Camer7")!,UIImage(named: "img_Camer8")!]
    var timer : Timer?
    var CurrentCell = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        CollectionViewHome.delegate = self
        CollectionViewHome.dataSource = self
        PageControl.numberOfPages = ImageName.count
        StarTimer()
      
    }
    func StarTimer(){
        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector:#selector(MoveToNextCell) , userInfo: nil, repeats: true)
    }
    @objc func MoveToNextCell(){
        if CurrentCell < ImageName.count - 1 {
            CurrentCell += 1
        }else{
            CurrentCell = 0
        }
        CollectionViewHome.scrollToItem(at: IndexPath(item: CurrentCell, section: 0), at: .centeredHorizontally, animated: true)
        PageControl.currentPage = CurrentCell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImageName.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let Cell = CollectionViewHome.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath) as! HomeVCCell
        Cell.ImageCameCell.image = ImageName[indexPath.row]
        return Cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CollectionViewHome.frame.width, height: CollectionViewHome.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0 
    }

}
