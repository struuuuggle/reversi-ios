//
//  GameActionDispatcher.swift
//  Reversi
//
//  Created by Mikiya Abe on 2020/04/25.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import Foundation
import RxSwift
import UIKit

enum GameActionDispatcher {

    /// ゲームの状態をファイルに書き出し、保存します。
    @discardableResult
    static func saveGame(currentTurn: Disk?, boardView: BoardView, playerCodeList: [String]) -> Single<Void> {
        mainStore.dispatch(GameAction.saveGame(currentTurn, boardView, playerCodeList))

        var output = [currentTurn.symbol, playerCodeList.joined(), "\n"].joined()

        for y in boardView.yRange {
            for x in boardView.xRange {
                output += boardView.diskAt(x: x, y: y).symbol
            }
            output += "\n"
        }

        return ReversiRepository.saveGame(data: output)
    }
}
