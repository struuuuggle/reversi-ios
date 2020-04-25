//
//  DiskPlacementError.swift
//  Reversi
//
//  Created by Mikiya Abe on 2020/04/25.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

struct DiskPlacementError: Error {
    let disk: Disk
    let x: Int
    let y: Int
}
