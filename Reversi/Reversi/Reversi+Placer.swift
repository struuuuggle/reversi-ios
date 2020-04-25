//
//  Reversi+Placer.swift
//  Reversi
//
//  Created by Mikiya Abe on 2020/04/25.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import Foundation

extension Reversi {

    /// `x`, `y` で指定されたセルに、 `disk` が置けるかを調べます。
    /// ディスクを置くためには、少なくとも 1 枚のディスクをひっくり返せる必要があります。
    /// - Parameter x: セルの列です。
    /// - Parameter y: セルの行です。
    /// - Returns: 指定されたセルに `disk` を置ける場合は `true` を、置けない場合は `false` を返します。
    static func canPlaceDisk(_ disk: Disk, _ boardView: BoardView, atX x: Int, y: Int) -> Bool {
        !Reversi.flippedDiskCoordinatesByPlacingDisk(disk, boardView, atX: x, y: y).isEmpty
    }

    /// `side` で指定された色のディスクを置ける盤上のセルの座標をすべて返します。
    /// - Returns: `side` で指定された色のディスクを置ける盤上のすべてのセルの座標の配列です。
    static func validMoves(for side: Disk, _ boardView: BoardView) -> [(x: Int, y: Int)] {
        var coordinates: [(Int, Int)] = []

        for y in boardView.yRange {
            for x in boardView.xRange {
                if Reversi.canPlaceDisk(side, boardView, atX: x, y: y) {
                    coordinates.append((x, y))
                }
            }
        }

        return coordinates
    }
}
