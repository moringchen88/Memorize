//
//  Array+Only.swift
//  Memorize
//
//  Created by caichen on 2020/11/2.
//  Copyright © 2020 caichen. All rights reserved.
//

import Foundation
extension Array{
    var only: Element?{
        count == 1 ? first : nil
    }
}
