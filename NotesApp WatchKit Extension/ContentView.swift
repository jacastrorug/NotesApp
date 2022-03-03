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
        Text("\(note.title) - \(note.creationDate)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
