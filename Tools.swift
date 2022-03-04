//
//  Tools.swift
//  NotesApp WatchKit Extension
//
//  Created by Julian Castro Ruge on 3/03/22.
//

import Foundation

class Tools {
    
    let key: String = "NotesApp"
    
    static let shared = Tools()
    
    private init() {}
    
    func save(notes: [Note]) {
        let data = notes.map{ try? JSONEncoder().encode($0) }
        
        UserDefaults.standard.set(data, forKey: self.key)
    }
    
    func load() -> [Note] {
        guard let data = UserDefaults.standard.array(forKey: self.key) as? [Data] else {
            return []
        }
        
        return data.map { try! JSONDecoder().decode(Note.self, from: $0) }
    }
    
    
}
