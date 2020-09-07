//
//  Protocols.swift
//  Discovery
//
//  Created by Nguyen Xuan on 8/27/20.
//  Copyright © 2020 Teko. All rights reserved.
//

import Foundation

public protocol IPolicy {
    var icon: String? { get }
    var text: String? { get }
    var type: String? { get }
}

public protocol IProduct {
    var productInfo: IInfo? { get }
    var promotions: [IPromotion]? { get }
    var totalAvailable: Double? { get }
    var prices: [IPrice]? { get }
    var flashSales: [IFlashSale]? { get }
    var productDetail: IDetail? { get }
    var policies: [IPolicy]? { get }
}

