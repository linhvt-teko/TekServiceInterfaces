//
//  IDetail.swift
//  VNShop
//
//  Created by Nguyen Xuan on 9/2/20.
//  Copyright © 2020 Teko. All rights reserved.
//

import Foundation

public protocol IDetail {
    var description: String? { get }
    var shortDescription: String? { get }
    var warranty: IWarranty? { get }
    var attributeSet: IAttributeSet? { get }
    var tax: ITax? { get }
    var productLine: IProductLine? { get }
    var seoInfo: ISeoInfo? { get }
    var attributeGroups: [IAttributeGroup]? { get }
    var images: [IProductImage]? { get }
    var productGroup: IProductGroup? { get }
}

public protocol IWarranty {
    var months: Int? { get }
    var description: String? { get }
}

public protocol IAttributeSet {
    var id: Int? { get }
    var name: String? { get }
}

public protocol ITax {
    var taxOut: Double? { get }
    var taxOutCode: String? { get }
}

public protocol IProductLine {
    var code: String? { get }
    var name: String? { get }
}

public protocol ISeoInfo {
    var description: String? { get }
    var shortDescription: String? { get }
    var metaTitle: String? { get }
    var metaKeyword: String? { get }
    var metaDescription: String? { get }
}

public protocol IAttributeGroup {
    var id : Int? { get }
    var name : String? { get }
    var value : String? { get }
    var priority : Int? { get }
    var parentId : Int? { get }
}

public protocol IProductImage {
    var url: String? { get }
    var priority: Int? { get }
    var label: String? { get }
}

public protocol IProductGroup {
    var id: Int? { get }
    var name: String? { get }
    var visible: String? { get }
    var configs: [IGroupConfig]? { get }
    var variants: [IVariant]? { get }
}
