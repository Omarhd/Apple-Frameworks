//
//  ContentView.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

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
                                 framework: viewModel.selectedFramework!, isPresentedFromGrid: true)
        }
    }
}

#Preview {
    GridView()
}
