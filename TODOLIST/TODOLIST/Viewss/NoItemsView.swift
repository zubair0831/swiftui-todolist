//
//  NoItemsView.swift
//  TODOLIST
//
//  Created by zubair ahmed on 20/05/25.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("No Items To Show")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("please add some items to your todo list app")
                    .frame(maxWidth:.infinity, maxHeight:.infinity)
                NavigationLink (
                    destination:AddView(),
                    label: {
                        Text("Add Something")
                            .foregroundStyle(Color.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                    })
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }

    }
}

#Preview {
    NavigationView {
        NoItemsView()
    }

}
