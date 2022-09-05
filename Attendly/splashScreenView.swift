//
//  splashScreenView.swift
//  Attendly
//
//  Created by Sara Alsaleh on 09/02/1444 AH.
//

import SwiftUI

struct splashScreenView: View {
    
    @State private var isActive=false
    
    @State private var size=0.8
    @State private var opacity=0.5
    
    var body: some View {
        if isActive{
            ContentView()
        }else{
            VStack{
                VStack{
                  // Image("Att")
                //.font(10)
                    Image("Att").resizable().aspectRatio(contentMode: .fit)
                }
                scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size=0.9
                        self.opacity=1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    self.isActive=true
                }
            }
        }
        
        
    }
}

struct splashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        splashScreenView()
    }
}
