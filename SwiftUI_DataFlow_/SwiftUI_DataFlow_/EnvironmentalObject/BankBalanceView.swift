//
//  BankBalanceView.swift
//  SwiftUI_DataFlow_
//
//  Created by Appzgate Solutions on 3/30/23.
//

import SwiftUI

struct BankBalanceView: View {
    @EnvironmentObject var bankAccount : BankAccount
    var body: some View {
        Text("Balance : \(bankAccount.accountBalance)")
    }
}

struct BankBalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BankBalanceView()
    }
}
