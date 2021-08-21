//
//  SafariView.swift
//  Apple Frameworks App
//
//  Created by Masein Mody on 10/07/2021.
//
import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
  let url: URL
  
  func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> some SFSafariViewController {
    SFSafariViewController(url: url)
  }
  
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
}
