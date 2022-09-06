//
//  splashScreenView.swift
//  Attendly-G5
//
//  Created by Sara Alsaleh on 10/02/1444 AH.
//

import SwiftUI

struct splashScreenView: View {
    @State private var size=0.8
    @State private var opacity=0.5
    var body: some View {
        VStack{
            Image("Att").resizable().scaledToFill()
            
                .aspectRatio(contentMode: .fit)
        } //vstack
        .scaleEffect(size)
        .opacity(opacity)
        .onAppear{
            withAnimation(.easeIn(duration: 1.1)){
                self.size=0.9
                self.opacity=1.00
            }
        }
    }
}

struct splashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        splashScreenView()
    }
}
