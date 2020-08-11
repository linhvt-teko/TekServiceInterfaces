//
//  ICatalogSeller.swift
//  Pods-TekServiceInterfaces_Tests
//
//  Created by Tung Nguyen on 8/11/20.
//

import Foundation

public protocol ICatalogSeller {
    var id: Int { get }
    var displayName: String? { get }
}
