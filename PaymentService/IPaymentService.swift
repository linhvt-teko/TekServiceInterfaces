//
//  IPaymentService.swift
//  TekServiceInterfaces
//
//  Created by Tung Nguyen on 8/19/20.
//

import Foundation

public typealias PaymentPayload = [String: Any]

public protocol IPaymentService {
    func generateQr(payload: PaymentPayload, completion: @escaping (PaymentResult<IQRTransaction, Error>) -> ())
    func spos(payload: PaymentPayload, completion: @escaping (PaymentResult<ISposTransaction, Error>) -> ())
}
