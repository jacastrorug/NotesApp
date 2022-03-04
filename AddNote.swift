//
//  AddNote.swift
//  NotesApp WatchKit Extension
//
//  Created by Julian Castro Ruge on 28/02/22.
//

import SwiftUI

struct AddNote: View {
    
    @State private var notes = [Note]()
    @State private var name: String = ""
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Title", text: $name)
                Button("Add Note") {
                    guard name.isEmpty == false else{
                        return
                    }
                    
                    let note = Note(title: name)
                    notes.append(note)
                    Tools.shared.save(notes: notes)
                    name = ""
                    presentation.wrappedValue.dismiss() // Navigate to content view
                }.foregroundColor(Color("NoteColor"))
            }
        }.onAppear(perform: {
            self.notes = Tools.shared.load()
        })
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
