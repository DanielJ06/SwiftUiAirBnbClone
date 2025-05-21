//
//  ListingItemView.swift
//  AirBnb
//
//  Created by Daniel Rodrigues on 20/05/25.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listin-1",
        "listin-2",
        "listin-3",
        "listin-4",
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // details
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Apê moderno na Bela vista")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("São Paulo, Brasil")
                        .foregroundStyle(.gray)
                    Text("7 - 9 de set.")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 3) {
                        Text("R$1.387")
                            .fontWeight(.semibold)
                        Text("por 2 noites")
                    }.foregroundStyle(.black)
                        
                }
                Spacer()
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4,77")
                }.foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
