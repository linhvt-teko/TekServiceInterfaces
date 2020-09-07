//
//  SearchAttribute.swift
//  VNShop
//
//  Created by Nguyen Xuan on 8/26/20.
//  Copyright © 2020 Teko. All rights reserved.
//

import Foundation

public struct SearchAttribute: Encodable {
    public var code: String?
    public var values: [String]?
    
    public init(code: String? = nil, values: [String]? = nil) {
        self.code = code
        self.values = values
    }
}
