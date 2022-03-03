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
                    name = ""
                }.foregroundColor(.yellow)
            }
        }
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
