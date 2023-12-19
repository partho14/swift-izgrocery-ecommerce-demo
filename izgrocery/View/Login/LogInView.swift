//
//  LoginView.swift
//  izgrocery
//
//  Created by Annanovas IT on 19/12/23.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var loginVM = MainViewModel.shared;
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40)
                    .padding(.bottom, .screenWidth * 0.1)
                
                Text("Login")
                    .font(.customfont(.medium, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                
                Text("Enter your email and password")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                LineTextField(txt: $loginVM.txtEmail, title: "Email", placeHolder: "Enter your email address", keyboardtype: .emailAddress)
                    .padding(.bottom, .screenWidth * 0.07)
                
                SecuredLineTextField(txt: $loginVM.txtPassword, isShowPassword: $loginVM.isShowPassword, title: "Password", placeHolder: "Enter your password")
                    .padding(.bottom, .screenWidth * 0.02)
                
                Button{
                    
                }label: {
                    Text("Forgot Password?")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundColor(.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, .screenWidth * 0.05)
                
                RoundButton(title: "Log In"){
                    
                }
                .padding(.bottom, .screenWidth * 0.05)
                
                HStack{
                    
                    Text("Don't have an account?")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundColor(.primaryText)
                    
                    Button{
                        
                    }label: {
                        Text("Sign Up")
                            .font(.customfont(.medium, fontSize: 14))
                            .foregroundColor(.primaryApp)
                    }
                }


                Spacer()

            }
            .padding(.top, .topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            VStack{
                
                HStack{
                    Button{
                        
                    }label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    
                    Spacer()
                }
                Spacer()
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
