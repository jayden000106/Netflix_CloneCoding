//
//  APITestView.swift
//  NeflixCloneCoding
//
//  Created by 정지혁 on 2022/07/16.
//

import SwiftUI

struct APITestView: View {
    @State private var testString = "Test"
    @ObservedObject private var viewModel: TestViewModel
    
    init() {
        self.viewModel = TestViewModel()
    }
    
    var body: some View {
        VStack {
            Text(testString)
                .font(.system(size: 24))
            
            Button(action: {
                viewModel.fetchMovies()
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.orange)
                        .frame(height: 60)
                    Text("TEST")
                }
            })
        }
    }
}

struct APITestView_Previews: PreviewProvider {
    static var previews: some View {
        APITestView()
    }
}
