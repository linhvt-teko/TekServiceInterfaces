//
//  ISposTransaction.swift
//  TekServiceInterfaces
//
//  Created by Tung Nguyen on 8/19/20.
//

import Foundation

public protocol ISposTransaction: ITransaction {
    var merchantPartnerCode: String { get }
}
