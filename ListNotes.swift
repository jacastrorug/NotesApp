//
//  ListNotes.swift
//  NotesApp WatchKit Extension
//
//  Created by Julian Castro Ruge on 2/03/22.
//

import SwiftUI

struct ListNotes: View {
    
    var notes: [Note] = [Note(title: "One"), Note(title: "Two"), Note(title: "Three")]
    
    var body: some View {
        List {
            ForEach(Array(zip(notes.indices, notes)), id: \.1) { idx, note in
                
                NavigationLink(destination: DetailNote(note: note), label: {
                    Text("\(note.title)")
                        .lineLimit(1)
                        
                }).listRowBackground(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(idx % 2 == 0 ? Color.green : Color.white, lineWidth: 1)
                )
                
            }
        }
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
