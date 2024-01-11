//
//  EditPersonView.swift
//  FaceFacts
//
//  Created by Tiago Miguel de Jesus Romao on 07/01/2024.
//

import SwiftUI

struct EditPersonView: View {
    @Bindable var person: Person
    
    
    var body: some View {
        Form{
            Section{
                TextField("Name", text: $person.name)
                    .textContentType(.name)
                
                TextField("Email address", text: $person.emailAddress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            
            Section("Notes"){
                TextField("Details about the person", text: $person.details, axis: .vertical)
            }
        }
        .navigationTitle("Edit Person")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditPersonView()
//}
