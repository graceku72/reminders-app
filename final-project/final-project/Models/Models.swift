//
//  Models.swift
//  final-project
//
//  Created by Grace Ku on 11/24/23.
//

import Foundation

struct Reminder: Identifiable, Equatable {
    var name: String
    var isDone = false
    let id = UUID()
}
