//
//  SafariView.swift
//  Easify
//
//  Created by Muhammed Said Özcan on 17/05/2020.
//  Copyright © 2020 Muhammed Said Özcan. All rights reserved.
//

import SwiftUI
import SafariServices

// MARK: SafariView
public struct SafariView {
    // MARK: Properties
    public let url: URL

    // MARK: Lifecycle
    public init(url: URL) {
        self.url = url
    }
}

// MARK: SafariView: UIViewControllerRepresentable
extension SafariView: UIViewControllerRepresentable {
    public typealias UIViewControllerType = SFSafariViewController

    public func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    public func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }
}
