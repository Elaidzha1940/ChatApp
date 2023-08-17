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
                    .background(message.received ? Color("violet").opacity(0.7) : Color("peach").opacity(0.6))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.system(size: 15, weight: .bold, design: .serif))
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing)

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
