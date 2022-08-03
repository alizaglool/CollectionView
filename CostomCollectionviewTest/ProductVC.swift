//
//  ProductVC.swift
//  CostomCollectionviewTest
//
//  Created by A_Z on 6/27/22.
//  Copyright © 2022 AliZ. All rights reserved.
//

import UIKit

class ProductVC: UIViewController ,UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var TableView: UITableView!
    var arrProduct = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrProduct.append(Product(Titile: "Rate", Photo: [UIImage(named: "img_Camer1")!,UIImage(named: "img_Camer2")!,UIImage(named: "img_Camer3")!,UIImage(named: "img_Camer4")!,UIImage(named: "img_Camer5")!]))
        arrProduct.append(Product(Titile: "Heigh Quality", Photo: [UIImage(named: "img_Camer5")!,UIImage(named: "img_Camer4")!,UIImage(named: "img_Camer3")!,UIImage(named: "img_Camer2")!,UIImage(named: "img_Camer1")!]))
        arrProduct.append(Product(Titile: "Low Guality", Photo: [UIImage(named: "img_Camer6")!,UIImage(named: "img_Camer7")!,UIImage(named: "img_Camer8")!,UIImage(named: "img_Camer9")!,UIImage(named: "img_Camer10")!]))
        arrProduct.append(Product(Titile: "Offers", Photo: [UIImage(named: "img_Camer10")!,UIImage(named: "img_Camer9")!,UIImage(named: "img_Camer8")!,UIImage(named: "img_Camer7")!,UIImage(named: "img_Camer6")!]))

        TableView.delegate = self
        TableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProduct.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tabCell") as! ProdectTableViewCell
        let product = arrProduct[indexPath.row]
        cell.SetUpCell(titile: product.Titile, Photos: product.Photo)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

   
}
struct Product {
    var Titile : String
    var Photo : [UIImage]
}
