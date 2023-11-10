//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Omar Abdulrahman on 10/11/2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailsView = true
        }
    }
    
    @Published var isShowingDetailsView: Bool = false
}
