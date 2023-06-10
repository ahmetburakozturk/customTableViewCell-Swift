//
//  ViewController.swift
//  customCellProject
//
//  Created by ahmetburakozturk on 17.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
    
    var products = [ProductModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        

        let p1 = ProductModel(productId: 1, productName: "elma", productPrice: 13.49, productImageName: "elma")
        let p2 = ProductModel(productId: 2, productName: "armut", productPrice: 24.99, productImageName: "armut")
        let p3 = ProductModel(productId: 3, productName: "domates", productPrice: 21.99, productImageName: "domates")
        let p4 = ProductModel(productId: 4, productName: "patates", productPrice: 11.99, productImageName: "patates")
        let p5 = ProductModel(productId: 5, productName: "biber", productPrice: 12.49, productImageName: "biber")
        let p6 = ProductModel(productId: 6, productName: "patlıcan", productPrice: 20.49, productImageName: "patlıcan")
        let p7 = ProductModel(productId: 7, productName: "muz", productPrice: 24.50, productImageName: "muz")
        let p8 = ProductModel(productId: 8, productName: "kabak", productPrice: 18.75, productImageName: "kabak")
        let p9 = ProductModel(productId: 9, productName: "kiraz", productPrice: 59.99, productImageName: "kiraz")
        let p10 = ProductModel(productId: 10, productName: "erik", productPrice: 120.25, productImageName: "erik")
        let p11 = ProductModel(productId: 11, productName: "çilek", productPrice: 39.90, productImageName: "çilek")
        let p12 = ProductModel(productId: 12, productName: "ananas", productPrice: 56.50, productImageName: "ananas")
        
        products.append(p1)
        products.append(p2)
        products.append(p3)
        products.append(p4)
        products.append(p5)
        products.append(p6)
        products.append(p7)
        products.append(p8)
        products.append(p9)
        products.append(p10)
        products.append(p11)
        products.append(p12)
        
    }

    

}

extension ViewController: UITableViewDelegate, UITableViewDataSource, CustomCTableViewCellProtocol {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCTableViewCell
        //var content = cell.defaultContentConfiguration()
        cell.productNameLabel.text = products[indexPath.row].productName!
        cell.productPriceLabel.text = "\(products[indexPath.row].productPrice!) TL"
        cell.productImageView.image = UIImage(named: products[indexPath.row].productImageName!)
        cell.cellProtocol = self
        cell.IndexPath = indexPath
        //content.text = landmarkNames[indexPath.row]
        //cell.contentConfiguration = content
        return cell
    }
    
    func addItemToList(indexPath: IndexPath) {
        print("\(products[indexPath.row].productName!) sepete eklendi")
    }
    
    
    
}

