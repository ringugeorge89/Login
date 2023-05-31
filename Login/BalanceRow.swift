//
//  BalanceRow.swift
//  Login
//
//  Created by Mohan on 26/05/23.
//

import SwiftUI

struct BalanceRow: View {
    var body: some View {
        VStack(spacing: 5) {
            totalBalanceView
            balanceView
            buttonView
        }
        
    }
    
    var totalBalanceView: some View {
        HStack {
            Text("Total Balance")
                .fontWeight(.bold)
            Image(systemName: "info.circle")
            Spacer()
            Image("Master")
            Text("****7189")
            Button {
                print("Edit button was tapped")
            } label: {
                Image(systemName: "pencil")
                    .foregroundColor(.black)
            }
        }

        .padding(.leading)
    }
    
    var balanceView: some View {
        HStack {
            Text("$12,416,315")
            
                .font(.system(size: 40.0))
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                
            
            Text("©")
               
                .offset(y:-20)
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
         
        
    }
    
    
    
    var buttonView: some View {
       HStack {
           Button {
               print("Transfer")
           } label: {
               Image(systemName: "pencil")
                   .foregroundColor(Color.white)
               Text("Transfer")
                   .foregroundColor(.white)
               
           }
           .frame(maxWidth: .infinity)
           .frame(height: 40)
           
           .background{
               RoundedRectangle(cornerRadius: 10).fill(Color.green)
           }
           
           
           Button {
               print("Transfer")
           } label: {
               Image(systemName: "pencil")
                   .foregroundColor(Color.white)
                   
               Text("Receive")
                   .foregroundColor(.white)
               
           }
           .frame(maxWidth: .infinity)
           .frame(height: 40)
           
           .background{
               RoundedRectangle(cornerRadius: 10).fill(Color.green)
               
           }
       }
 
       .padding(.horizontal)
}
    
}


    





struct BalanceRow_Previews: PreviewProvider {
    static var previews: some View {
        BalanceRow()
    }
}
