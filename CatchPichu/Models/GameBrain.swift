//
//  GameBrain.swift
//  CatchPichu
//
//  Created by Penny Huang on 2020/3/21.
//  Copyright © 2020 Penny Huang. All rights reserved.
//

import Foundation

// MARK: Pokemon, Image

//所有Image
let totalImageArray = [
    ImageStatus(isShown: false),
    ImageStatus(isShown: false),
    ImageStatus(isShown: false),
    ImageStatus(isShown: false),
    ImageStatus(isShown: false)
]


// 3 types of pokemons
private let pichu = PokemonType(appearTime: 3, score: 1)
private let pikachu = PokemonType(appearTime: 2, score: 3)
private let raichu = PokemonType (appearTime: 1, score: 5)

//按比例隨機選取的array
private let pichuArray = Array(repeating: pichu, count: 7)
private let pikachuArray = Array(repeating: pikachu, count: 2)
private let raichuArray = Array(repeating: raichu, count: 1)
private var pokemonArray = pichuArray + pikachuArray + raichuArray


// 要出現哪隻pokemon
var shownPokemon = pokemonArray.randomElement()
//print("\(shownPokemon)")


//出現的每個神奇寶貝分別要顯示多久
//var appearTime = 0
//
//switch shownPokemon {
//case pikachu: appearTime = Int.random(in: 1...3)
//case raichu: appearTime = Int.random(in: 1...2)
//default: appearTime = Int.random(in: 2...4)
//}



// MARK: GameBrain

class GameBrain {
    
    //顯示的image數量
//    var numOfImageShown: String!
    
    //使用者start遊戲後的動作，每2秒show pokemon
    func gameStart() {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(showPokemon), userInfo: nil, repeats: true)
    }
    
    //顯示pokemon的圖片
    @objc func showPokemon(){
        //共12格
        //每隔2秒確認畫面上數量
        
        //找出所有空的imageView
        var emptyView = [ImageStatus]()
        for i in totalImageArray {
            if i.isShown == false {
                emptyView.append(i)
            }
        }
        
        //每次有幾個imageView要出現pokemon
        let numberToAdd = Int.random(in: 1...3)
        
        //空的imageView要隨機出現pokemon
        if emptyView.count < 6 {
//            for i in 1...numberToAdd {
            for _ in 1...numberToAdd {
                //emptyView[i] = showPokemon
            }
        }
        
    }
    
    //神奇寶貝顯示後的動作
    func pokemonDidAppear(){
        // Timer依照shownPokeonAppearTime來決定幾秒後叫hidePokemon()
        // Image.isShown = false
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(hidePokemon), userInfo: nil, repeats: true)
        
    }
    
    //讓神奇寶貝消失
    @objc func hidePokemon(){
//        Image.isShown = false
    }

    
    
}


//
//    //神奇寶貝被點擊
//    Func pokemonHit()
//        image變色
//        addScore()
//        hindPokemon()
//

//
//    //分數增加
//    Func addScore()
//
//}
//
//
