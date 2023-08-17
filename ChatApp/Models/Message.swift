//  /*
//
//  Project: ChatApp
//  File: Message.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.08.2023
//
//  Status: in progress | Decorated
//
//  */

import Foundation

struct Message: Identifiable, Codable {
    
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
