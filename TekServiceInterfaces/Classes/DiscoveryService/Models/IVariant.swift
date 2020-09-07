//
//  IVariantAttribute.swift
//  VNShop
//
//  Created by Nguyen Xuan on 9/2/20.
//  Copyright © 2020 Teko. All rights reserved.
//

import Foundation

public protocol IVariant {
    var sku: String? { get }
    var attributeValues: [IVariantAttribute]? { get }
}

public protocol IVariantAttribute {
    var id: Int? { get }
    var code: String? { get }
    var value: String? { get }
    var optionId: Int? { get }
}
