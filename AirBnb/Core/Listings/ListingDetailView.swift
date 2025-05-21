//
//  ListingDetailView.swift
//  AirBnb
//
//  Created by Daniel Rodrigues on 20/05/25.
//

import SwiftUI

struct ListingDetailView: View {
    
    var images = [
        "listin-1",
        "listin-2",
        "listin-3",
        "listin-4",
    ]
    
    var body: some View {
        ScrollView {
            ImageCarouselView()
                .frame(height: 320)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Apê moderno na Bela vista")
                    .font(.title)
                    .fontWeight(.semibold)
                    
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4,77")
                    Text(" - ")
                    Text("48 reviews")
                        .underline()
                        .fontWeight(.medium)
                }
                .font(.caption)
                .foregroundStyle(.black)
                
                Text("São Paulo, Brasil")
                    .font(.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16)
            
            Divider()
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Entire apartment hosted by Daniel de Jesus")
                        .font(.headline)
                        .fontWeight(.medium)
                    Text("6 guests - 3 bedrooms - 3 beds - 2 baths")
                        .font(.caption)
                }.frame(width: 250, alignment: .leading)
                
                Spacer()
                
                Circle().frame(width: 64, height: 64)
            }
            .padding()
            
            Divider()
            
            VStack(spacing: 16) {
                ForEach(0..<2) { feature in
                    HStack(alignment: .center, spacing: 8) {
                        Image(systemName: "medal")
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.bold)
                            Text("Superhosts are experienced hosts who consistently go above to ensure their guests have a memorable stay")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
        }
    }
}

#Preview {
    ListingDetailView()
}
