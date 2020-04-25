//
//  ReversiRepository.swift
//  Reversi
//
//  Created by Mikiya Abe on 2020/04/25.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import Foundation
import RxSwift

enum ReversiRepository {
    static func saveGame(data: String) -> Single<Void> {
        do {
            try data.write(toFile: path, atomically: true, encoding: .utf8)
            return .just(())
        } catch let error {
            return .error(FileIOError.read(path: path, cause: error))
        }
    }
}
