//
//  RecentActivityRow.swift
//  Login
//
//  Created by Mohan on 26/05/23.
//

import SwiftUI

struct RecentActivityRow: View {
    var body: some View {
        HStack {
            Text("Recent Activity")
                .font(.system(size: 25))
                .fontWeight(.medium)
            Image(systemName: "info.circle")
                .foregroundColor(Color.gray)
            Spacer()
            Button {
                print("Transfer")
            } label: {
                    
                Text("See more")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                Image(systemName: "arrow.right")
                
                    .foregroundColor(Color.gray)

                
            }
        }
    }
}

struct RecentActivityRow_Previews: PreviewProvider {
    static var previews: some View {
        RecentActivityRow()
    }
}
