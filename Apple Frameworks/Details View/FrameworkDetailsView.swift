//
//  FrameworkDetailsView.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    @Binding var isShowingDetailsView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var framework: Framework
    var isPresentedFromGrid: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                if !isPresentedFromGrid {
                    EmptyView() // Hide the "x" button when presented from grid
                } else {
                    Button(action: {
                        isShowingDetailsView = false
                    }) {
                        DismissButton()
                    }
                }
            }

            VStack(spacing: 12) {
                FrameworkCell(framework: framework)
                
                Text(framework.description)
                    .font(.title3)
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .padding()
                
                Spacer()
                
                Button(action: {
                    isShowingSafariView = true
                }) {
                    AFButton(title: "Learn More About \(framework.name)")
                }
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString ?? "")!)
        }
    }
}
