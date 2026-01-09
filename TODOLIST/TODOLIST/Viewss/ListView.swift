//
//  ListView.swift
//  ToDoList
//
//  Created by zubair ahmed on 19/05/25.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listviewmodel:ListViewModel

    var body: some View {
        ZStack{
            if listviewmodel.items.isEmpty{
                NoItemsView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            }
            else{
                List{
                    ForEach(listviewmodel.items){ item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listviewmodel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listviewmodel.deleteItem)
                    .onMove(perform: listviewmodel.moveItem)
                }
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List")
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        ListView()
    }
    .environmentObject(ListViewModel())
    
}


