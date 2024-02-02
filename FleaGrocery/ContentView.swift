//
//  ContentView.swift
//  FleaGrocery
//
//  Created by Miaomiao Shi on 02/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            // First tab
            NavigationStack {
                List() {
                    // Your list content goes here
//                    Text("abc")
//                        .listRowBackground(Color.white) // Set each list row's background color to white

                }
                .navigationTitle("M & S")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Action for your download button
                        }) {
                            Image(systemName: "arrow.down")
                                .foregroundColor(.black)
                        }
                        
                        Button(action: {
                            // Action for your plus button
                        }) {
                            Image(systemName: "plus")
                                .foregroundColor(.black)
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        ShareLink(item: URL(string: "https://example.com")!) {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.black)
                        }
                    }
                }
                .background(Color.white)
            }
            .tabItem {
                Label("Current List", systemImage: "square.and.pencil")
            }
            .tag(0)

            // Second tab
            NavigationStack {
                // This would be your new page content
                Text("New Page")
                    .navigationTitle("New Page")
            }
            .tabItem {
                Label("Saved Lists", systemImage: "square.and.arrow.down")
            }
            .tag(1)
        }
        .accentColor(.black)
    }
}

// You can keep the preview as it is

#Preview {
    ContentView()
}
