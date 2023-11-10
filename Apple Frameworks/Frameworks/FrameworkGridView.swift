//
//  ContentView.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
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
    }
}

#Preview {
    FrameworkGridView()
}


struct GridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()

    let column: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: column) {
                ForEach(MockData.frameworks) { framework in
                    FrameworkCell(framework: framework)
                        .onTapGesture {
                            viewModel.selectedFramework = framework
                        }
                }
            }
        }
        .navigationTitle("Grid View")
        .sheet(isPresented: $viewModel.isShowingDetailsView) {
            FrameworkDetailsView(isShowingDetailsView: $viewModel.isShowingDetailsView,
                                 farmework: viewModel.selectedFramework!)
        }
    }
}
