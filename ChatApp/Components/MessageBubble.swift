//  /*
//
//  Project: ChatApp
//  File: MessageBubble.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.08.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI

struct MessageBubble: View {
    var message: Message
    var body: some View {
        
        VStack(alignment: message.received ? .leading : .trailing) {
            
            HStack {
                Text(message.text)
            }
        }
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "8888", text: "Good morning! How are you doing today ?", received: false, timestamp: Date()))
    }
}
