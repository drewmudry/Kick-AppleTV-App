//
//  Stream.swift
//  kick
//
//  Created by Drew on 6/19/23.
//

import Foundation

struct Stream: Identifiable {
    let id = UUID()
    let title: String
    let user: String
    let category: String
    let thumbnail : String
}
