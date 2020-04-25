//
//  GameAction.swift
//  Reversi
//
//  Created by Mikiya Abe on 2020/04/25.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import ReSwift
import UIKit

enum GameAction: ReSwift.Action {
    case save(_ currentTurn: Disk?, _ boardView: BoardView, _ playerControls: [UISegmentedControl])
    case load
}
