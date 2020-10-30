//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by caichen on 2020/10/30.
//  Copyright © 2020 caichen. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable{
    func firstIndex(matching:Element) -> Int {
        for index in 0..<self.count{
            if self[index].id == matching.id{
                return index
            }
        }
        return 0 //TODO: bogus!
    }
}
