//
//  SearchBlockParam.swift
//  VNShop
//
//  Created by Nguyen Xuan on 8/26/20.
//  Copyright © 2020 Teko. All rights reserved.
//

import Foundation

public struct SearchBlock: Encodable {
    public var blockId: String? = nil
    public var itemId: String? = nil
    
    public init(blockId: String?, itemId: String?) {
        self.blockId = blockId
        self.itemId = itemId
    }
}
