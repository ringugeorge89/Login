//
//  ForgotPassword.swift
//  Login
//
//  Created by Mohan on 24/05/23.
//

import SwiftUI

struct ForgotPasswordView: View {
    var body: some View {
        VStack {
            TopView()
            ForgotPassListView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
    }
}

struct ForgotPassListView: View {
    @State private var email: String = ""

    var body: some View {

        
        VStack {
            TextField("Email", text: $email).textFieldStyle(.roundedBorder)
            
            Spacer().frame(height: 45)
            
            Button(action:{
                
                
                
            }) {
                Text("Continue")
                    .foregroundColor(.black)

            }
            .padding(.all)
            .frame(width: 370.0)
            .background{
                RoundedRectangle(cornerRadius: 10).fill(Color.green)
            }
            
        }
        .padding(.all)
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
