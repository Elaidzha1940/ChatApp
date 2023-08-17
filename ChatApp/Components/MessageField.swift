//  /*
//
//  Project: ChatApp
//  File: MessageField.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.08.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI

struct MessageField: View {
    
    @State private var message = ""
    
    var body: some View {
        
        HStack {
            
            CustomTextField(placeholder: Text("Enter your message here..."), text: $message)
            
            Button {
                print("Message sent!")
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("peach"))
                    .cornerRadius(40)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color("violet"))
        .cornerRadius(50)
        .padding()
    }
}
struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
    }
}

struct CustomTextField : View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
