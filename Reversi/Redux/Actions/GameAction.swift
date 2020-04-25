//
//  GameAction.swift
//  Reversi
//
//  Created by Mikiya Abe on 2020/04/25.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import ReSwift

enum GameAction: ReSwift.Action {
    case saveGame(_ currentTurn: Disk?, _ boardView: BoardView, _ playerControls: [String])
    case load
}
