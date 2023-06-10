//
//  roundedImageView.swift
//  customCellProject
//
//  Created by Ahmet Burak Öztürk on 10.06.2023.
//

import UIKit

@IBDesignable
class roundedImageView: UIImageView {

    @IBInspectable var isRounded : Bool = false{
        didSet{
            if isRounded{
                layer.cornerRadius = frame.size.height / 2
            }
        }
    }

    override func prepareForInterfaceBuilder() {
        if isRounded{
            layer.cornerRadius = frame.size.height / 2
        }
    }
}
