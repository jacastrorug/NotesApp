//
//  Note.swift
//  NotesApp WatchKit Extension
//
//  Created by Julian Castro Ruge on 28/02/22.
//

import SwiftUI

struct Note: Identifiable, Hashable, Codable {
    var id: UUID
    
    var title: String
    var creationDate: String
    
    init(title: String) {
        self.id = UUID()
        self.title = title
        
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        
        self.creationDate = dateFormatter.string(from: currentDate)
    }
    
}
