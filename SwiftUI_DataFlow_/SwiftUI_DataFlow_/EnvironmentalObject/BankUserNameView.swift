//
//  BankUserNameView.swift
//  SwiftUI_DataFlow_
//
//  Created by Appzgate Solutions on 3/30/23.
//

import SwiftUI

struct BankUserNameView: View {
    @EnvironmentObject var bankAccount : BankAccount
    var body: some View {
        Text("Name : \(bankAccount.accountName)")
    }
}

struct BankUserNameView_Previews: PreviewProvider {
    static var previews: some View {
        BankUserNameView()
    }
}
