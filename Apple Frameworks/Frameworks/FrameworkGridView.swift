//
//  ContentView.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let column: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
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
            .navigationTitle("Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailsView) {
                FrameworkDetailsView(isShowingDetailsView: $viewModel.isShowingDetailsView,
                                     farmework: viewModel.selectedFramework!)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
