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
    @State private var showTime = false
    
    var body: some View {
        
        VStack(alignment: message.received ? .leading : .trailing) {
            
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("violet") : Color("peach"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "8888", text: "Good morning! How are you doing today ?", received: false, timestamp: Date()))
    }
}
