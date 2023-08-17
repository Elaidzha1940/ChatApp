//  /*
//
//  Project: ChatApp
//  File: TitleRow.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.08.2023
//
//  Status: in progress | Not decorated
//
//  */

import SwiftUI

struct TitleRow: View {
    
    var imageUrl = URL(string: "https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60")
    var name = "Philip Martin"
    
    var body: some View {
        
        HStack(spacing: 20) {
             
            AsyncImage(url: imageUrl) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(40)
                
            } placeholder: {
                 ProgressView()
            }
        }
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
    }
}
