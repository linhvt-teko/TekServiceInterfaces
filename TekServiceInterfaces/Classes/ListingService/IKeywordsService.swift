//
//  IKeywordsService.swift
//  TekServiceInterfaces
//
//  Created by linhvt on 8/12/20.
//

import Foundation

public typealias KeywordsResponseHandler = (_ keywords: [IKeyword], _ isSuccess: Bool) -> ()

public protocol IKeywordsService {
    func getPopularKeywords(visitorId: String?, handler: @escaping KeywordsResponseHandler)
    func searchKeywords(query: String, visitorId: String?, page: Int, handler: @escaping KeywordsResponseHandler)
}
