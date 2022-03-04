//
//  DetalNote.swift
//  NotesApp WatchKit Extension
//
//  Created by Julian Castro Ruge on 2/03/22.
//

import SwiftUI

struct DetailNote: View {
    let note: Note
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 6)
                        .frame(maxWidth: .infinity, maxHeight: 40, alignment: .top)
                    .foregroundColor(Color("NoteColor"))
                    Text("\(note.title)")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray))
            .padding([.top, .bottom, .leading, .trailing], 5)
            
            Spacer()
            
            Text("\(note.creationDate)")
                .font(.system(size: 12))
                .fontWeight(.bold)
                .foregroundColor(.gray)
        }
    }
}

struct DetailNote_Previews: PreviewProvider {
    static var previews: some View {
        DetailNote(note: Note(title: "Test"))
    }
}
