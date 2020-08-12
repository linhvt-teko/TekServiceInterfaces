//
//  IFilter.swift
//  TekServiceInterfaces
//
//  Created by linhvt on 8/7/20.
//

import Foundation

public protocol IFilter {
    var code: String? { get }
    var name: String? { get }
    var values: [IFilterValue] { get }
}
