//
//  AddView.swift
//  ToDoList
//
//  Created by zubair ahmed on 19/05/25.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel:ListViewModel
    @State var text:String=""
    var body: some View {
        ScrollView {
            VStack {
                TextField("type something here...", text: $text )
                    .padding(.horizontal)
                    .frame(height:50)
                    .background(Color(.gray)).opacity(0.4)
                    .cornerRadius(10)
                Button {
                    SaveButtonPressed()
                } label: {
                    Text("SAVE")
                        .frame(height: 55)
                        .frame(maxWidth:.infinity)
                        .foregroundStyle(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }

            }
            .padding(14)

            
        }
        .navigationTitle(Text("Add an Item"))
    }
    func SaveButtonPressed(){
        listViewModel.addItem(title: text)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel())

}
