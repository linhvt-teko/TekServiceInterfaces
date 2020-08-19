//
//  IQRTransaction.swift
//  TekServiceInterfaces
//
//  Created by Tung Nguyen on 8/19/20.
//

import Foundation

public protocol IQRTransaction: ITransaction {
    var qrContent: String { get }
}
