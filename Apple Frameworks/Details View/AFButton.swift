//
//  AFButton.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .minimumScaleFactor(0.5)
            .padding()
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .background(Color.blue.gradient)
            .cornerRadius(12)
    }
}

#Preview {
    AFButton(title: "title")
}
