//
//  GameActionDispatcher.swift
//  Reversi
//
//  Created by Mikiya Abe on 2020/04/25.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import Foundation
import UIKit

enum GameActionDispatcher {
    static func saveGame(currentTurn: Disk?, _ boardView: BoardView, playerControls: [UISegmentedControl]) {
        mainStore.dispatch(GameAction.save(currentTurn, boardView, playerControls))
    }
}
