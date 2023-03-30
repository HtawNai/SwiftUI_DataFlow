//
//  ContentView.swift
//  SwiftUI_DataFlow_
//
//  Created by Appzgate Solutions on 3/30/23.
//

import SwiftUI

struct PlayerStateView: View {
    @State var name : String = "Messi"
    var body: some View {
        
        NavigationView(content: {
            VStack{
                VStack {
                    Image(systemName: "Soccer")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Player Name is : \(name)")
                }
                .padding()
                HStack(alignment: .center, spacing: 10){
                    NavigationLink(destination: PlayerBindingView()) {
                        Text("Binding View")
                    }
                    NavigationLink(destination: BankSummaryView()) {
                        Text("Observable View")
                    }
                    NavigationLink(destination: DashboardView()
                        .environmentObject(BankAccount())) {
                            Text("Environmental View")
                        }
                }
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerStateView()
    }
}
