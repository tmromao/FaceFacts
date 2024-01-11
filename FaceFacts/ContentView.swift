//
//  ContentView.swift
//  FaceFacts
//
//  Created by Tiago Miguel de Jesus Romao on 07/01/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @State private var path = [Person]()
    @Query var people: [Person]
    
    
    
    var body: some View {
        NavigationStack(path: $path){
            List{
                ForEach(people){ person in
                    NavigationLink(value: person){
                        Text(person.name)
                    }
                }
            }
            .navigationTitle("FaceFacts")
            .navigationDestination(for: Person.self){ person in
                EditPersonView(person: person)
            }
            .toolbar{
                Button("Add Peron", systemImage: "plus", action: addPerson)
            }
        }
    }
    
    func addPerson(){
        let person = Person(name:"", emailAddress: "", details: "")
        modelContext.insert(person)
        path.append(person)
    }
}

#Preview {
    ContentView()
}
