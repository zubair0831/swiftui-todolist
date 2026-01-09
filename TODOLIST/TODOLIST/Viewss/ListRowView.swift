//
//  ListRowView.swift
//  ToDoList
//
//  Created by zubair ahmed on 19/05/25.
//

import SwiftUI

struct ListRowView: View {
    let item:ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
            Spacer()
                .font(.title2)
                .padding(.vertical,8)
        }
    }
}
#Preview {
    let itemm = ItemModel(title: "firsssttt", isCompleted: true)
   
        ListRowView(item:itemm)
    
}
