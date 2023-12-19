//
//  MainViewModel.swift
//  izgrocery
//
//  Created by Annanovas IT on 19/12/23.
//

import SwiftUI

class MainViewModel: ObservableObject {
    
    static var shared: MainViewModel = MainViewModel()
    
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    @Published var isShowPassword: Bool = false
}
