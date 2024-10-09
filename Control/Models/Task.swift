//
//  Task.swift
//  Control
//
//  Created by cc on 2024/10/09.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let title: String
    let isCompleted: Bool
}
