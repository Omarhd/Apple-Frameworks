//
//  FrameworkListView.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

struct FrameworkListView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        List {
            ForEach(MockData.frameworks) { framework in
                NavigationLink(destination: FrameworkDetailsView(isShowingDetailsView: $viewModel.isShowingDetailsView,
                                                                 framework: framework, isPresentedFromGrid: false)) {
                    FrameworkListCellView(framework: framework)
                }
            }
        }
        .listStyle(.grouped)
        .sheet(isPresented: $viewModel.isShowingDetailsView) {
            FrameworkDetailsView(isShowingDetailsView: $viewModel.isShowingDetailsView,
                                 framework: viewModel.selectedFramework!, isPresentedFromGrid: false)
        }
    }
}

#Preview {
    FrameworkListView()
}

