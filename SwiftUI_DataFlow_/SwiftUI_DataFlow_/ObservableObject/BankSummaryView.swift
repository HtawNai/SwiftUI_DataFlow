//
//  BankSummaryView.swift
//  SwiftUI_DataFlow_
//
//  Created by Appzgate Solutions on 3/30/23.
//

import SwiftUI

struct BankSummaryView: View {
    @ObservedObject var bankAccount = BankAccount()
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            if bankAccount.accountName == ""{
                Text("Please login...")
                
                Button(action: {
                    bankAccount.accountName = "Banyar"
                    bankAccount.accountBalance = "$1000"
                }) {
                    Text("Click to login")
                }
                
            }else{
                Text("Bank account Name :\(bankAccount.accountName)")
                Text("Bank account balance :\(bankAccount.accountBalance)")
            }
            
            
        }.padding()
    }
}

struct BankSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        BankSummaryView()
    }
}
