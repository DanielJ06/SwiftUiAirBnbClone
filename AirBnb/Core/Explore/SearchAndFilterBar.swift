//
//  SearchAndFilterBar.swift
//  AirBnb
//
//  Created by Daniel Rodrigues on 20/05/25.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Search")
                    .font(.footnote)
                Text("Anywhere in the world")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                    
            }
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(.gray)
                .shadow(color: .black.opacity(0.3), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
