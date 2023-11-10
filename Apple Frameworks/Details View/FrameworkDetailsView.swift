//
//  FrameworkDetailsView.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    var farmework: Framework
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button {

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
                    
                } label: {
                    AFButton(title: "Learn More About \(farmework.name)")            }
            }
        }
    }
}

#Preview {
    FrameworkDetailsView(farmework: MockData.sampleFramework)
}
