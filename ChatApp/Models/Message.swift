//
//  Message.swift
//  ChatApp
//
//  Created by ujjwal on 19/08/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var recieved: Bool
    var timestamp: Date
}
