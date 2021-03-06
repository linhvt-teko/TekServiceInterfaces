//
//  IOrderListResult.swift
//  Pods-TekServiceInterfaces_Tests
//
//  Created by Tung Nguyen on 8/6/20.
//

import Foundation

public protocol IOrderListResult {
    var total: Int { get }
    var orders: [IOrderListItem] { get }
}
