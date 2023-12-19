//
//  LineTextField.swift
//  izgrocery
//
//  Created by Annanovas IT on 19/12/23.
//

import SwiftUI

struct LineTextField: View {
    
    @Binding var txt: String
    @State var title: String = "Title"
    @State var placeHolder: String = "Placeholder"
    @State var keyboardtype: UIKeyboardType = .default
    
    var body: some View {
        VStack{
            
            Text(title)
                .font(.customfont(.medium, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            
            TextField(placeHolder, text: $txt)
                .keyboardType(keyboardtype)
                .disableAutocorrection(true)
                .frame(height: 40)
            
            Divider()
        }
    }
}

struct SecuredLineTextField: View {
    
    @Binding var txt: String
    @Binding var isShowPassword: Bool
    @State var title: String = "Title"
    @State var placeHolder: String = "Placeholder"
    
    var body: some View {
        VStack{
            
            Text(title)
                .font(.customfont(.medium, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            if(isShowPassword){
                TextField(placeHolder, text: $txt)
                    .disableAutocorrection(true)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .frame(height: 40)
            }else{
                SecureField(placeHolder, text: $txt)
                    .frame(height: 40)
                    .modifier(ShowButton(isShow: $isShowPassword))
                
            }
            
            Divider()
        }
    }
}

struct LineTextField_Previews: PreviewProvider {
    @State static var txt: String = ""
    static var previews: some View {
        LineTextField(txt: $txt)
            .padding(20)
    }
}
