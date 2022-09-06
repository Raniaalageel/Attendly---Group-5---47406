//
//  ContentView.swift
//  Attendly
//
//  Created by Rania Alageel on 08/02/1444 AH.
//


import SwiftUI
import Firebase
import FirebaseAuth
struct ContentView: View {
   
    @State var email = ""
    @State var idstudent = ""
    @State var   statusMessage = ""
    @State var   subject = ""
    @State var   section = ""
    var body: some View {
        
      //  Text("Login")
       
        VStack {
            Text("Login")
                .font(.title)
                .padding(.all).foregroundColor(.white)
            NavigationView{
              
               // VStack{
                   // VStack{
                    
                   // } }
                VStack{
                    Image(systemName: "person.fill")
                        .padding(.all)
                        .font(.system(size: 150))
                        .foregroundColor(Color(.label))
                  
                    Group{
                        
                        TextField("Email for student",text: $email)
                            .padding(.all)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .background(Color.white)
                            .font(.title)
                        SecureField("ID for student",text: $idstudent)
                            .padding(.all)
                            .font(.title)
                        
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
                    
                    Button {
                     
                        loginuser()
                       
                      //  NavigationView{
                          //  NavigationLink(destination: newp ) }
                        //storeUserInformation()
                    } label: {
                        HStack {
                            Spacer()
                            Text("login")
                                .foregroundColor(.white)
                                .padding(.vertical,10)
                                .font(.system(size:30,weight: .semibold))
                            Spacer()
                        }.background(Color.green)  //htack
                        
                    }.cornerRadius(10)  //label
                }  //vstack
                
                
                
            }//end nav
            
            }  //end vstackz
        .navigationViewStyle(StackNavigationViewStyle())
        .background(
            LinearGradient(gradient: Gradient(colors:[ .green,.gray]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
        }   //body
    
    private func loginuser() {
        Auth.auth().signIn(withEmail: email , password: idstudent) { result ,err in
            if let err = err{
                print("faild",err)
                self.statusMessage="Faild to ligin: \(err)"
            return
            }
            print("sucssfuly:  \(result?.user.uid ?? "") ")
            self.statusMessage="sucffuel is : \(result?.user.uid ?? "")"
           
            
           self.storeUserInformation()
           

        }
        // self.storeUserInformation()
    }
    
    private func storeUserInformation(){
        guard let uid=Auth.auth().currentUser?.uid else {return }
        let userData = ["Email":self.email ,"ID":self.idstudent, "section":self.section, "subject":self.subject,"uid":uid]
        Firestore.firestore().collection("studentApp")
            .document(uid).setData(userData){err in
                if let err = err {
                    print(err)
                    self.statusMessage = "\(err)"
                    return
                }
                print("sucsee ")
            }
    }
    
    
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
