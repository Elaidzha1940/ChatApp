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
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
    }
}

struct CustomTextField: View {
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
