//
//  FrameworkGridViewModel.swift
//  Apple Frameworks App
//
//  Created by Masein Mody on 07/07/2021.
//
import SwiftUI
// if you're not going to get subclass from your class make it final
final class FrameworkGridViewModel: ObservableObject {
  let columns: [GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())]
  var selectedFramework: Framework? {
    didSet { isShowingDetailView = true }
  }
  @Published var isShowingDetailView = false
}
