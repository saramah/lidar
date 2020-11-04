//
//  Ticket.swift
//  Lidar
//
//  Created by Sarah Barbour on 11/3/20.
//

import Foundation

struct Ticket: Hashable, Codable {
    var id: String
    var title: String
    var description: String
    var progress: TicketState
    var discussion: Array<String>
}

enum TicketState: String, CaseIterable, Identifiable, Codable {
    case toDo
    case inProgress
    case inReview
    case done
    
    var id: String { self.rawValue }
}
