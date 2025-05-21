//
//  ExploreView.swift
//  AirBnb
//
//  Created by Daniel Rodrigues on 20/05/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listingId in
                ListingDetailView()
                    .toolbar(.hidden)
            }
        }
    }
}

#Preview {
    ExploreView()
}
