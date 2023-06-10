//
//  ProductModel.swift
//  customCellProject
//
//  Created by ahmetburakozturk on 17.05.2023.
//

import Foundation

class ProductModel {
    var productId : Int?
    var productName : String?
    var productPrice : Double?
    var productImageName : String?
    
    init(){}
    
    init(productId: Int? = nil,productName: String? = nil, productPrice: Double? = nil, productImageName: String? = nil) {
        self.productId = productId
        self.productName = productName
        self.productPrice = productPrice
        self.productImageName = productImageName
    }
}
