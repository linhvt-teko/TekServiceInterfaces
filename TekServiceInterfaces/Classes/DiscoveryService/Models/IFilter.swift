//
//  IFilter.swift
//  VNShop
//
//  Created by Nguyen Xuan on 9/1/20.
//  Copyright © 2020 Teko. All rights reserved.
//

import Foundation

public protocol IFilter {
    var attributes: [IAttribute]? { get }
    var brands: [IBrand]? { get }
    var priceLte: Int? { get }
    var priceGte: Int? { get }
}

public protocol IAttribute {
    var code: String? { get }
    var name: String? { get }
    var values: [IAttributeValue]? { get }
}

public protocol IAttributeValue {
    var count: Int? { get }
    var value: String? { get }
    var optionId: String? { get }
}

