//
//  HomeView.swift
//  Login
//
//  Created by Mohan on 24/05/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 5) {
            ProfileDetailsView()
            ActivityView()
            
        }
        .background {
            Color("LightGray")

            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .edgesIgnoringSafeArea(.all)

        
    }
}

struct ProfileDetailsView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack{
                Button {
                    
                } label: {
                    Image("HMenu")
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image("Search")
                }
                
                Button {
                    
                } label: {
                    Image("Notification")
                }
                
                Button {
                    
                }
            label: {
                Image("Notification")
            }
                
            }
            
            Text("Welcome back, Riya Mithra")
                .font(.system(size: 20.0))
            

                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)

                .background{
                    Color.red
                }
            HStack {
                Text("Dashboard").foregroundColor(.gray)
                Text(">").foregroundColor(.white)
                Text("Overview").foregroundColor(.white)


            }
            .frame(maxWidth: .infinity, maxHeight: 30)
            .background {
                Color.green
            }
            
            HStack {
                Button(action:{
                                        
                }) {
                    Text("Overview")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                }
                
                Button(action:{
                                        
                }) {
                    Text("Transaction")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background {
                Color.green
            }
                        
        }.frame(maxWidth: UIScreen.main.bounds.width, maxHeight:300)
            .padding()
            .background {
                Color("SignInBackgroundColor")
                //            Color.red
            }
    }
}

struct ActivityView: View {
    var body: some View {
        List {
            Section{
                BalanceRow()
            }
            Section{
                RecentActivityRow()
                ActivityRow()
            }
        }
        
        .scrollContentBackground(Visibility.hidden)
        .offset(y: -80)
     }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
