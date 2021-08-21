//
//  FrameworkDetailViewModel.swift
//  Apple Frameworks App
//
//  Created by Masein Mody on 16/08/2021.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
  var framework: Framework
  var isShowingDetailView: Binding<Bool>
  @Published var isShowingSafariView: Bool = false
  
  init(framework: Framework, isShowingDetailView: Binding<Bool>) {
    self.framework = framework
    self.isShowingDetailView = isShowingDetailView
  }
}
