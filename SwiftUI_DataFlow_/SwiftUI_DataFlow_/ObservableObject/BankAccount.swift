//
//  BankAccount.swift
//  SwiftUI_DataFlow_
//
//  Created by Appzgate Solutions on 3/30/23.
//

import Foundation
class BankAccount: ObservableObject {
    @Published var accountBalance : String = ""
    @Published var accountName : String = ""
}
