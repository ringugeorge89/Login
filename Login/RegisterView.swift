//
//  RegisterView.swift
//  Login
//
//  Created by Mohan on 24/05/23.
//

import SwiftUI

struct RegisterView: View {
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            TopView()
            RegisterListView()
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}


struct RegisterListView : View {
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    
    var body: some View {
        VStack {
            TextField("FullName", text: $fullName).textFieldStyle(.roundedBorder)
            TextField("Email", text: $email).textFieldStyle(.roundedBorder)
            
            TextField("Password", text: $password).textFieldStyle(.roundedBorder)
            
            TextField("Repeat Password", text: $repeatPassword).textFieldStyle(.roundedBorder)
            
            
            
            Button(action:{
                
                
                
            }) {
                Text("Register")
                    .foregroundColor(.white)
                
            }
            .padding(.all)
            .frame(width: 370.0)
            .background{
                RoundedRectangle(cornerRadius: 10).fill(Color.green)
            }
            
            
            
            
            Spacer()
            
            HStack{
                Text("I have an account?")
                
                Button(action:{
                    
                    
                    
                }) {
                    Text("Login")
                        .foregroundColor(.green)
                    
                }
            }
            
        }
        
        .padding(.all, 15.0)
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
