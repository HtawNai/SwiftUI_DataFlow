//
//  DashboardView.swift
//  SwiftUI_DataFlow_
//
//  Created by Appzgate Solutions on 3/30/23.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var bankAccount : BankAccount
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            if bankAccount.accountName == ""{
                Text("Please login...")
                
                Button(action: {
                    bankAccount.accountName = "Banyar"
                    bankAccount.accountBalance = "$1000"
                }) {
                    Text("Click to login")
                }
                
            }else{
                BankUserNameView()
                BankBalanceView()
                Button(action: {
                    bankAccount.accountName = ""
                    bankAccount.accountBalance = "$XXXX"
                }) {
                    Text("Click to logout")
                }
            }
            
            
        }.padding()
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
