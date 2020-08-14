//
//  IRecommendationService.swift
//  TekServiceInterfaces
//
//  Created by linhvt on 8/12/20.
//

import Foundation

public protocol IRecommendationService {
    func getRecommendProducts(forUser userId: String?, page: Int, handler: @escaping ProductsListDetailResponseHandler)
    func getRecommendProducts(forUser userId: String?, byCategories sellerCategories: [Int], page: Int, handler: @escaping ProductsListDetailResponseHandler)
    func getRecommendProducts(bySku sku: String, page: Int, handler: @escaping ProductsListDetailResponseHandler)
}
