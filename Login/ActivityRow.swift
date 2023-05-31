//
//  ActivityRow.swift
//  Login
//
//  Created by Mohan on 26/05/23.
//

import SwiftUI

struct ActivityRow: View {

    var body: some View {

        HStack {
            
            Image("Upwork")
            VStack{
                HStack{
                    Text("Upwork")
                        .font(.system(size: 25))
                        .fontWeight(.medium)
                    Spacer()
                    Text("-$23.34")
                        .font(.system(size: 25))
                        .fontWeight(.medium)
                    
                }.padding(.top)
                
                
                HStack{
                    Text("Subscriptions")
                        .font(.system(size: 18))
                        .foregroundColor(Color.gray)
                    Spacer()

                    Text("10/2/2022")
                        .font(.system(size: 17))
                        .foregroundColor(Color.gray)

                    Text("-12.23")
                        .font(.system(size: 17))
                        .foregroundColor(Color.gray)


                }
                .padding(.bottom)
                
            }
        }
        
    }
}

struct ActivityRow_Previews: PreviewProvider {
    static var previews: some View {
        ActivityRow()
    }
}
