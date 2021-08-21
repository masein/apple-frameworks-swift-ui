//
//  FrameworkGridView.swift
//  Apple Frameworks App
//
//  Created by Masein Mody on 04/07/2021.
//
import SwiftUI

struct FrameworkGridView: View {
  @StateObject var viewModel = FrameworkGridViewModel()
  
  var body: some View {
    NavigationView {
      ScrollView {
        LazyVGrid(columns: viewModel.columns) {
          ForEach(MockData.frameworks) { framework in
            FrameworkTitleView(framework: framework)
              .onTapGesture {
                viewModel.selectedFramework = framework
              }
          }
        }
      }
      .navigationTitle("🍏 Frameworks")
      .sheet(isPresented: $viewModel.isShowingDetailView) {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                            isShowingDetailView: $viewModel.isShowingDetailView))
      }
    }
  }
}

struct FrameworkGridView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkGridView()
  }
}
