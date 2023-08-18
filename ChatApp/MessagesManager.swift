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
    
    init() {
        getMessages()
    }
    
    func getMessages() {
        db.collection("messages").addSnapshotListener { querySnapshot, error in
            guard let documents = querySnapshot?.documents else {
                print("Error fetching documents: \(String(describing: error))")
                return
            }
            
            documents.compactMap { documents -> Message? in
                
                do {
                    return try documents.data(as: Message.self)
                } catch {
                    print("Error decoding document into Message: \(error)")
                    return nil
                }
            }
        }
    }
}
