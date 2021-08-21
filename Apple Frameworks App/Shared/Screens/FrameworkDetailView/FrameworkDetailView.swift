//
//  FrameworkDetailView.swift
//  Apple Frameworks App
//
//  Created by Masein Mody on 05/07/2021.
//
import SwiftUI

struct FrameworkDetailView: View {
  @ObservedObject var viewModel: FrameworkDetailViewModel
  
  var body: some View {
    VStack {
      XDismissButton(isShowingDetailView: viewModel.isShowingDetailView)
      Spacer()
      FrameworkTitleView(framework: viewModel.framework)
      Text(viewModel.framework.description)
        .font(.body)
        .padding()
      Spacer()
      Button {
        viewModel.isShowingSafariView = true
      } label: {
        AFButton(title: "Learn More")
      }
    }
    .fullScreenCover(isPresented: $viewModel.isShowingSafariView, content: {
      SafariView(url: URL(string: viewModel.framework.urlString)!)
    })
  }
}

struct FrameworkDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework,
                                                            isShowingDetailView: .constant(false)))
  }
}
