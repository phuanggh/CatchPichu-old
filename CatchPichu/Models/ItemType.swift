//
//  ItemType.swift
//  CatchPichu
//
//  Created by Penny Huang on 2020/3/21.
//  Copyright © 2020 Penny Huang. All rights reserved.
//

import Foundation

// 定義 pokemon型別
struct PokemonType: Equatable {
    var appearTime: Int
    var score: Int
    
    init(appearTime: Int, score: Int) {
        self.appearTime = appearTime
        self.score = score
    }
}

//定義 image status型別
struct ImageStatus: Equatable {
    var isShown = false
    
    init(isShown: Bool) {
        self.isShown = isShown
    }
}


// need to conform to Equatable in order to compare when using switch
//https://www.hackingwithswift.com/example-code/language/how-to-conform-to-the-equatable-protocol
