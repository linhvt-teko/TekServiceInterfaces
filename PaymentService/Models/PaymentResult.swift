//
//  PaymentResult.swift
//  TekServiceInterfaces
//
//  Created by Tung Nguyen on 8/19/20.
//

import Foundation

public enum PaymentResult<T, V> {
    case success(T)
    case failure(V)
}
