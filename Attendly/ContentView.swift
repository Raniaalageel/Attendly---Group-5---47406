//
//  ContentView.swift
//  Attendly
//
//  Created by Rania Alageel on 08/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
  @State var idStudent=""
    var body: some View {
       // Text("Hello, Rania is here")
           // .padding()
        
     /*  ZStack{
            Color.green
                .ignoresSafeArea()
            Text("content")
                .foregroundColor(.white)
                .font(.system(size: 40))
        }*/
        
        
        NavigationView{
            VStack{
              Image("account")
                    .resizable()
                   .scaledToFit()
                .frame(width: 150, height: 150)
                VStack{
                    TextField("Id fot student", text:$idStudent)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        
                    
                   SecureField("password fot student", text: $idStudent)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                    Button(action: {
                        
                    },label: {
                       Text("login")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 50)
                        .cornerRadius(8)
                            .background(Color.blue)
                    })
        }
                .padding()
                //.Spacer()
    }
            .navigationTitle("login")
}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
