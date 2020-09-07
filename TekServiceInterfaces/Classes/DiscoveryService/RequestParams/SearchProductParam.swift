//
//  SearchProductParam.swift
//  VNShop
//
//  Created by Nguyen Xuan on 8/26/20.
//  Copyright © 2020 Teko. All rights reserved.
//

public enum ReturnFilterable: String {
    case unspecified    = "FILTER_TYPE_UNSPECIFIED"
    case attribule      = "FILTER_TYPE_ATTRIBUTE"
    case brand          = "FILTER_TYPE_BRAND"
    case price          = "FILTER_TYPE_PRICE"
}

public struct SearchProductParam {
    public var terminalCode: String?
    public var query: String?
    public var filter: SearchFilter?
    public var pagination: SearchPagination?
    public var sorting: SearchSorting?
    public var userId: String?
    public var phoneNumber: String?
    public var location: String?
    public var returnFilterable: [ReturnFilterable] = []
    public var block: SearchBlock?
    
    public init(query: String = "",
         terminalCode: String? = nil,
         filter: SearchFilter? = nil,
         pagination: SearchPagination? = nil,
         sorting: SearchSorting? = nil,
         userId: String? = nil,
         phoneNumber: String? = nil,
         location: String? = nil,
         returnFilterable: [ReturnFilterable] = [],
         block: SearchBlock? = nil) {
        self.query = query
        self.terminalCode = terminalCode
        self.filter = filter
        self.pagination = pagination
        self.sorting = sorting
        self.userId = userId
        self.phoneNumber = phoneNumber
        self.location = location
        self.returnFilterable = returnFilterable
        self.block = block
    }
    
}



