//
//  ContentView.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    @State private var isGridVisible = false

    var body: some View {
        NavigationView {
            VStack {
                if isGridVisible {
                    GridView()
                        .navigationBarItems(
                            trailing: Button(action: {
                                isGridVisible.toggle()
                            }) {
                                Image(systemName: "list.bullet")
                            }
                        )
                } else {
                    FrameworkListView()
                        .navigationBarItems(
                            trailing: Button(action: {
                                isGridVisible.toggle()
                            }) {
                                Image(systemName: "square.grid.2x2.fill")
                            }
                        )
                }
            }
            .navigationTitle("List View")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    ContentView()
}
