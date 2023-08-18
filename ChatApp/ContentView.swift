//  /*
//
//  Project: ChatApp
//  ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.08.2023
//
//  Status: in progress | Not decorated
//
//  */

import SwiftUI

struct ContentView: View {
    
    @StateObject var messagesManager = MessagesManager()
    var messageArray = ["Hello there!", "WHat's up today ?", "I'm working on a new Project now."]
    
    var body: some View {
        
        VStack {
            VStack {
                TitleRow()
                
                ScrollViewReader { proxy in
                    ScrollView {
                        ForEach(messagesManager.messages, id: \.id) { message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of:
                                messagesManager.lastMessageId) { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
            }
            .background(Color("peach"))
            
            MessageField()
                .environmentObject(MessagesManager())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
