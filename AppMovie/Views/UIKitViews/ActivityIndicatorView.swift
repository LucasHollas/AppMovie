//
//  ActivityIndicatorView.swift
//  AppMovie
//
//  Created by Lucas Hollas on 03/01/23.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
}
