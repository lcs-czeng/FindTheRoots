//
//  ResultView.swift
//  FindTheRoots
//
//  Created by 曾梓恒 on 2025-01-14.
//

import SwiftUI

struct ResultView: View {
    
    //Stored
    let somePriorResult: Result
    
    //Computed
    var body: some View {
        VStack {
            
            //Input
            HStack {
                
                Text("a: \(somePriorResult.a.formatted(.number.precision(.fractionLength(1))))")
                    .font(Font.custom("Times New Roman",
                                      size: 20.0,
                                      relativeTo: .body))
                    .padding()
                Text("b: \(somePriorResult.b.formatted(.number.precision(.fractionLength(1))))")
                    .font(Font.custom("Times New Roman",
                                      size: 20.0,
                                      relativeTo: .body))
                    .padding()
                Text("c: \(somePriorResult.c.formatted(.number.precision(.fractionLength(1))))")
                    .font(Font.custom("Times New Roman",
                                      size: 20.0,
                                      relativeTo: .body))
                    .padding()
            }
            
            //Output
            Text(somePriorResult.roots)
                .font(Font.custom("Times New Roman",
                                  size: 20.0,
                                  relativeTo: .body))
        }
    }
}
    
    #Preview {
        ResultView(somePriorResult: resultForPreviews)
    }
