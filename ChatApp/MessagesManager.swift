//  /*
//
//  Project: ChatApp
//  File: MessagesManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.08.2023
//
//   Status: in progress | Decorated
//
//  */

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class MessagesManager: ObservableObject {
    
   @Published private(set) var messages: [Message] = []
    let db = Firestore.firestore()
    
    func getMessages() {
        db.collection("messages")
    }
}
