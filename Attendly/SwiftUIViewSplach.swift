//
//  SwiftUIViewSplach.swift
//  Attendly
//
//  Created by Sara Alsaleh on 09/02/1444 AH.
//

import SwiftUI

struct SwiftUIViewSplach: View {
    @State  var isActive:Bool=false
    @State private var size=0.8
    @State private var opacity=0.5
    
    var body: some View {
        
        if isActive{
            ContentView()
        }
        else{
         
        
        VStack{
           
            VStack{
             
               // background(Color.green)
                Image("Att")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 2008, height: 300)
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
               // DispatchQueue.main.asyncAfter(deadline: .now()  + 2.0){
                withAnimation(.easeIn(duration: 1.1)){
                    self.size=0.9
                    self.opacity=1.00
                }
           
            }
        }
        .onAppear{
    DispatchQueue.main.asyncAfter(deadline: .now()  + 2.0){
        withAnimation{
            self.isActive=true
        }
    }

    }
            
            //else
        }
}
}
struct SwiftUIViewSplach_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewSplach()
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.35, saturation: 0.199, brightness: 0.935)/*@END_MENU_TOKEN@*/)
            
    }
}





