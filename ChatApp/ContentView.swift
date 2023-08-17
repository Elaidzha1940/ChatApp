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
    
    var messageArray = ["Hello there!", "WHat's up today ?", "I'm doing great."]
    
    var body: some View {
        
        VStack {
            VStack {
                TitleRow()
                
                ScrollView {
                    
                    ForEach(messageArray, id: \.self) { text in
                        MessageBubble(message: Message(id: "8888", text: text, received: true, timestamp: Date()))
                    }
                }
                .padding(.top, 10)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color("peach"))
            
            MessageField()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
