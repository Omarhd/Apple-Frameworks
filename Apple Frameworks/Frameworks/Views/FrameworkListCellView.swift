//
//  FrameworkListCellView.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

struct FrameworkListCellView: View {
    
    var framework: Framework
    
    var body: some View {
        HStack(spacing: 2) {
            Image(framework.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
        }
        .padding()
    }
}

#Preview {
    FrameworkListCellView(framework: Framework(name: "SwiftUI", imageName: "swiftui", urlString: "", description: ""))
}
