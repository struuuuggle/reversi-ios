//
//  GameReducer.swift
//  Reversi
//
//  Created by Mikiya Abe on 2020/04/25.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import ReSwift

enum GameReducer {
    static func gameReducer(action: ReSwift.Action, state: GameState?) -> GameState {
        var state = state ?? GameState()
        guard let action = action as? GameAction else { return state }

        switch action {
        case .saveGame:
            break
        case .load:
            break
        }
        
        return state
    }
}

