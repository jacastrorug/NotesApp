//
//  ContentView.swift
//  NotesApp WatchKit Extension
//
//  Created by Julian Castro Ruge on 28/02/22.
//

import SwiftUI

struct ContentView: View {
    
    var note = Note(title: "Testing title")
    
    var body: some View {
        VStack {
            NavigationLink("Add Note", destination: AddNote())
            NavigationLink("List Notes", destination: ListNotes())
        }.navigationTitle("Notes APP")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
