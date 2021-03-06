//
//  PromotionProtocol.swift
//  VNShop
//
//  Created by Nguyen Xuan on 9/1/20.
//  Copyright © 2020 Teko. All rights reserved.
//

import Foundation

public protocol IBenefit {
    var money: IMoney? { get }
    var items: [IItem] { get }
    var voucher: IVoucher? { get }
}
