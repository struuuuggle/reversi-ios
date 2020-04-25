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

    /// ゲームの状態をファイルに書き出し、保存します。
    static func saveGame(currentTurn: Disk?, boardView: BoardView, playerControls: [UISegmentedControl]) throws {
        mainStore.dispatch(GameAction.saveGame(currentTurn, boardView, playerControls))

        // TODO: 後で隠蔽

        var output: String = ""
        output += currentTurn.symbol
        Disk.sides.forEach { output += playerControls[$0.index].selectedSegmentIndex.description }
        output += "\n"

        for y in boardView.yRange {
            for x in boardView.xRange {
                output += boardView.diskAt(x: x, y: y).symbol
            }
            output += "\n"
        }

        do {
            try output.write(toFile: path, atomically: true, encoding: .utf8)
        } catch let error {
            throw FileIOError.read(path: path, cause: error)
        }
    }
}
