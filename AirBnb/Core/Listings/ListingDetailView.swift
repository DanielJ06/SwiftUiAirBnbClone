//
//  ListingDetailView.swift
//  AirBnb
//
//  Created by Daniel Rodrigues on 20/05/25.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    var images = [
        "listin-1",
        "listin-2",
        "listin-3",
        "listin-4",
    ]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack(alignment: .topLeading) {
                ImageCarouselView()
                    .frame(height: 320)
                
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }
            
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
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll sleep")
                    .font(.headline)
                    .padding(.horizontal)
                    .padding(.top)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1..<4, id: \.self) { bedroom in
                            VStack(alignment: .leading, spacing: 6) {
                                Image(systemName: "bed.double")
                                Text("Beedroom \(bedroom)")
                                    .font(.footnote)
                            }
                            .frame(width: 132, height: 100, alignment: .leading)
                            .padding(.leading)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                            .padding(.leading, bedroom == 1 ? 16 : 0)
                            .padding(.trailing, bedroom == 3 ? 16 : 0)
                        }
                    }
                    .scrollTargetBehavior(.paging)
                }
                .padding(.bottom, 16)
            }
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(0..<5) { feature in
                    HStack {
                        Image(systemName: "tv")
                            .frame(width: 32)
                        Text("TV")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .ignoresSafeArea()
        .padding(.bottom, 110)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("R$1.387")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("7 - 9 de set.")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button(action: { }, label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
                .padding()
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
