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

public struct SearchProductParam: Encodable {
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
    
    enum CodingKeys: String, CodingKey {
        case terminalCode, query, filter, pagination, sorting, userId, phoneNumber, location, returnFilterable, block
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(terminalCode, forKey: .terminalCode)
        try container.encode(query, forKey: .query)
        try container.encode(filter, forKey: .filter)
        try container.encode(pagination, forKey: .pagination)
        try container.encode(sorting, forKey: .sorting)
        try container.encode(userId, forKey: .userId)
        try container.encode(phoneNumber, forKey: .phoneNumber)
        try container.encode(location, forKey: .location)
        try container.encode(returnFilterable.map { $0.rawValue }, forKey: .returnFilterable)
        try container.encode(block, forKey: .block)
    }
    
    public func toDictionary() -> [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}



