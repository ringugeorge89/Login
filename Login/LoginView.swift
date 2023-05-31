//
//  ContentView.swift
//  Login
//
//  Created by Mohan on 21/05/23.
//



// 25 37 51
import SwiftUI
import Combine


struct LoginView: View {
    var body: some View {
        //ScrollView {
        VStack {
            TopView()
            BottomView()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        //        }
        //        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct TopView: View {
    var body: some View {
        VStack{
            
            HStack {
                Text("Sign in to your \nAccount")
                    .foregroundColor(.white)
                    .font(.system(size: 32))
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                
            }
            
            HStack{
                
                Text("Sign in to your Account")
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                Spacer()
            }
            
            
        }
        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight:150)
        .padding()
        .background{
            Color("SignInBackgroundColor")
                .edgesIgnoringSafeArea(.top)
        }
    }
}


struct BottomView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPresented: Bool = false
    
    
    var body: some View {
        VStack {
            TextField("name", text: $email)
                .textFieldStyle(.roundedBorder)
            TextField("password", text: $password)
                .textFieldStyle(.roundedBorder)
            HStack{
                Spacer()
                Button {
                    
                } label: {
                    Text("Forgot Password?")
                        .foregroundColor(.green)
                }
                
            }
            Button {
                
            } label: {
                Text("Login")
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 40)
            .background{
                RoundedRectangle(cornerRadius: 10).fill(Color.green)
            }
            
            HStack {
                Rectangle().fill(.black)
                    .frame(height: 1)
                Text("Or login with")
                Rectangle().fill(.black)
                    .frame(height: 1)
            }
            HStack {
                Button(action:{
                    
                },
                       label: {
                    Text("Google")
                        .foregroundColor(.black)
                })
                .frame(width: 100)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 10).stroke()
                }
                Button(action:{
                    
                },
                       label: {
                    Text("Facebook")
                        .foregroundColor(.black)
                })
                .frame(width: 100)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 10).stroke()
                }
                
               
            }
            Spacer()
            HStack {
                Text("Don't have an account?")
                Button(action:{
                    isPresented.toggle()
                }) {
                    Text("Register")
                        .foregroundColor(.green)
                }
                
                
//                .sheet(isPresented: $isPresented) {
//                                    print("Sheet dismissed!")
//                                } content: {
//                                    RegisterView()
//                                }
                
                .fullScreenCover(isPresented: $isPresented) {
                    RegisterView()

                }
                
            }
        }
        .padding(10)
        .background{
            Color.white
        }
        .frame(maxHeight: 350)
        
        /*.frame(maxWidth: UIScreen.main.bounds.width, maxHeight:UIScreen.main.bounds.height-150)*/
    }
}

protocol myProtocol<Input> {
    associatedtype Input
}
