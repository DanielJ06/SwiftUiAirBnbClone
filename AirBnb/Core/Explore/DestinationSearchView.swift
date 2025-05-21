//
//  DestinationSearchView.swift
//  AirBnb
//
//  Created by Daniel Rodrigues on 21/05/25.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var isVisible: Bool
    @State private var destination: String = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            Button(action: {
                withAnimation {
                    isVisible.toggle()
                }
            }) {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            VStack(alignment: .leading) {
                if (selectedOption == .location) {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1.0)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsableSearchContainer(title: "Where", description: "Add destination")
                }
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 5)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .location }
            }
            
            VStack {
                if (selectedOption == .dates) {
                    HStack {
                        Text("Show expandend dates")
                        Spacer()
                    }
                } else {
                    CollapsableSearchContainer(title: "When", description: "Add dates")
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 5)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .dates }
            }
            
            VStack {
                if (selectedOption == .guests) {
                    HStack {
                        Text("Show expandend guests")
                        Spacer()
                    }
                } else {
                    CollapsableSearchContainer(title: "Who", description: "Add guests")
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 5)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .guests }
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    DestinationSearchView(isVisible: .constant(true))
}

struct CollapsableSearchContainer: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
    }
}
