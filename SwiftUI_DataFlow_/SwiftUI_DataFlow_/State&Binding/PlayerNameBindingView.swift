//
//  PlayerNameBindingView.swift
//  SwiftUI_DataFlow_
//
//  Created by Appzgate Solutions on 3/30/23.
//

import SwiftUI

struct PlayerNameBindingView: View {
    @Binding var playerName : String
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Enter Player Name")
                .font(.headline)
            TextField(playerName, text: $playerName)
                .textFieldStyle(.roundedBorder)
                .border(.black)
        }.padding()
    }
}

//struct PlayerNameBindingView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlayerNameBindingView()
//    }
//}
