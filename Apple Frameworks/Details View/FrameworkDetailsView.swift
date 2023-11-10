//
//  FrameworkDetailsView.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

struct FrameworkDetailsView: View {

    @Binding var isShowingDetailsView: Bool
    @State private var isShowingSafaryView: Bool = false
    
    var farmework: Framework
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailsView = false
                } label: {
                    DismissButton()
                }
            }
            .padding()
            Spacer()
            
            VStack(spacing: 12) {
                FrameworkCell(framework: farmework)
                
                Text(farmework.description)
                    .font(.title3)
                    .fontWeight(.regular)
                    .minimumScaleFactor(0.5)
                    .padding()
                
                Spacer()
                
                Button {
                    isShowingSafaryView = true
                } label: {
                    AFButton(title: "Learn More About \(farmework.name)")            }
            }
        }
        .sheet(isPresented: $isShowingSafaryView){
            SafariView(url: URL(string: farmework.urlString ?? "")!)
        }
    }
}

//#Preview {
//    FrameworkDetailsView(isShowingDetailsView: .constant(false), isShowingSafaryView: false, farmework: MockData.sampleFramework)
//}
