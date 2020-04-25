//
//  AppReducer.swift
//  Reversi
//
//  Created by Mikiya Abe on 2020/04/25.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import ReSwift

func appReducer(action: ReSwift.Action, store: AppState?) -> AppState {
    var store = store ?? AppState()

    switch action {
    default:
        break
    }

    store.gameState = GameReducer.gameReducer(action: action, state: store.gameState)

    return store
}
