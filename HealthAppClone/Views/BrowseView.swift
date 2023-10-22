//
//  BrowseView.swift
//  HealthAppClone
//
//  Created by Raj Gohil on 21/10/23.
//

import SwiftUI

struct BrowseView: View {
    
    @State private var searchTerm = ""
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView{
                VStack{
                    List {
                        NavigationLink(destination: Text("Activity")) {
                            HStack {
                                Image("flame.fill")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Activity").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                        NavigationLink(destination: Text("Body Measurement")) {
                            HStack {
                                Image("Human")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Body Measurement").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                        NavigationLink(destination: Text("Hearing")) {
                            HStack {
                                Image("hearingdevice.ear")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Hearing").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                        NavigationLink(destination: Text("Heart")) {
                            HStack {
                                Image("heart.fill")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Heart").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                        NavigationLink(destination: Text("Mental Wellbeing")) {
                            HStack {
                                Image("Mindful")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Mental Wellbeing").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .padding(.leading, 5)
                            }
                        }
                        NavigationLink(destination: Text("Mobility")) {
                            HStack {
                                Image("Apple")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Nutrition").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }

                        NavigationLink(destination: Text("Respiratory")) {
                            HStack {
                                Image("Lungs")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                Text("Respiratory").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                        NavigationLink(destination: Text("Sleep")) {
                            HStack {
                                Image("bed")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Sleep").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                        }
                    }
                    .navigationTitle("Browse")
                    .searchable(text: $searchTerm, placement: .automatic, prompt: "Search")
                    .font(.callout)

                }
            }
        }
    }
}

#Preview {
    BrowseView()
}
