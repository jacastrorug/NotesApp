//
//  ListNotes.swift
//  NotesApp WatchKit Extension
//
//  Created by Julian Castro Ruge on 2/03/22.
//

import SwiftUI

struct ListNotes: View {
    
    @State var notes: [Note] = [Note]()
    
    var body: some View {
        VStack {
            Text("Notes: \(self.notes.count)")
            List {
                ForEach(Array(zip(notes.indices, notes)), id: \.1) { idx, note in
                    
                    NavigationLink(destination: DetailNote(note: note), label: {
                        Text("\(note.title)")
                            .lineLimit(1)
                            .foregroundColor(.black)
                        
                    }).listRowBackground(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("NoteColor"))
                    )
                    
                }.onDelete(perform: self.delete)
            }
        }.onAppear(perform: {
            self.notes = Tools.shared.load()
        })
    }
    
    func delete(offsets: IndexSet) {
        withAnimation{
            notes.remove(atOffsets: offsets)
        }
        Tools.shared.save(notes: notes)
    }
    
    
    
    
    
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
