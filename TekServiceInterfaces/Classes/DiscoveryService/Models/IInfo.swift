//
//  IInfo.swift
//  VNShop
//
//  Created by Nguyen Xuan on 9/2/20.
//  Copyright © 2020 Teko. All rights reserved.
//

import Foundation

public protocol IInfo {
    var sku: String? { get }
    var skuId: String? { get }
    var name: String? { get }
    var imageUrl: String? { get }
    var tags: [String]? { get }
    var brand: IBrand? { get }
    var categories: [ICategory]? { get }
    var seller: ISeller? { get }
    var provider: IProvider? { get }
    var masterCategories: [ICategory]? { get }
}
