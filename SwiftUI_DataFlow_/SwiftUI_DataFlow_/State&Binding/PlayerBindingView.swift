//
//  PlayerBindingView.swift
//  SwiftUI_DataFlow_
//
//  Created by Appzgate Solutions on 3/30/23.
//

import SwiftUI

struct PlayerBindingView: View {
    @State var name : String = "Messi"
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "Soccer")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Player Name is : \(name)")
                .font(.title)
            PlayerNameBindingView(playerName: $name)
        }
        .padding()
    }
}

struct PlayerBindingView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerBindingView()
    }
}
