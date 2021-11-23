//
//  ContentView.swift
//  Shared
//
//  Created by nyannyan0328 on 2021/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Screen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 1500, height: 1200))
    }
}

struct Screen : View{
    
    var body: some View{
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("Purple"))
            
            Image(systemName: "applelogo")
                .font(.system(size: 180))
                .foregroundColor(Color("Logo"))
                .offset(y: -60)//
            
            HStack(spacing:20){
                
                TypeC()
                TypeC()
                TypeC(thunderbolt: true)
                TypeC(thunderbolt: true)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            .offset(x: 130, y: -40)
            
            
            ZStack{
                
                
                Circle()
                    .fill(Color("Purple"))
                
                
                Image(systemName: "power")
                    .font(.system(size: 13))
                    .foregroundColor(Color("Stand").opacity(0.7))
                
            }
            .frame(width: 33, height: 33)
            .overlay(//
                
                Circle()
                    .stroke(Color("DarkPurple"),lineWidth: 3)
                    .shadow(color: .black.opacity(0.4), radius: 5, x: 5, y: 5)
                    .shadow(color: .black.opacity(0.4), radius: 5, x: -5, y: -5)
                    .clipShape(Circle())
                
                
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            .offset(x: -50, y: -35)
            
            StandView()
            
            
        }
        .frame(width: 1000, height: 700)
        
    }
}


struct StandView : View{
    
    var body: some View{
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 2)
                .fill(Color("Stand"))
                .frame(width: 220, height: 320)
                .overlay(
                    
                    
                    RoundedRectangle(cornerRadius: 2)
                        .fill(
                            
                            
                            LinearGradient(colors: [
                                
                                .white.opacity(0.8)
                            ] + Array(repeating: Color("Stand"), count: 5), startPoint: .top, endPoint: .bottom)
                            
                            
                        )
                        .frame(height: 55)
                    
                    ,alignment: .top
                )
                .overlay(
                    
                    
                    RoundedRectangle(cornerRadius: 2)
                        .fill(
                            
                            
                            LinearGradient(colors: [
                                
                                Color("Stand"),
                                .white.opacity(0.3),
                                .white.opacity(0.4),
                                .white.opacity(0.7)
                            ], startPoint: .top, endPoint: .bottom)
                            
                            
                        )
                        .frame(height: 20)
                        .offset(y: 10)
                    
                    ,alignment: .bottom
                )
            
            
            ZStack{
                
                Capsule()
                    .fill(Color("Purple"))
                
                CordView()
                
            }
            .frame(width: 50, height: 90)
            .offset(y: -35)
            
            BottomStand()
                .offset(y: 160)
            
            
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .offset(y: 150)
    }
}

struct BottomStand : View{
    var body: some View{
        
        ZStack(alignment:.bottom){
            
            HStack{
                
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color("Logo"))
                    .frame(width: 30, height: 3)
                    .offset(y: 2)
                
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color("Logo"))
                    .frame(width: 30, height: 3)
                    .offset(y: 2)
                
            }
            .padding(.horizontal,5)
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 2)
                    .fill(Color("Stand"))
                    .shadow(color: .black.opacity(0.12), radius: 5, x: 0, y: -5)
                
                
                Rectangle()
                    .fill(
                        
                        
                        LinearGradient(colors: getGradient(), startPoint: .leading, endPoint: .trailing)
                        
                    )
            }
            
        }
        .frame(width: 222, height:10)
    }
    
    func getGradient()->[Color]{
        
        
        let stand = Array(repeating: Color("Stand"), count: 20)
        
        let colors : [Color] = [
            
            .white.opacity(0.1),
            .white.opacity(0.2),
            
            
        ] + stand
        
        let gradient = colors + stand + colors.reversed()
        
        return gradient
    }
}

struct CordView : View{
    
    var body: some View{
        
        ZStack{
            
            Circle()
                .stroke(.black,lineWidth: 0.5)
            
            ZStack{
                
                Circle()
                
                Circle()
                    .fill(
                        
                        LinearGradient(colors: [
                            
                            .white.opacity(0.4),
                            .gray,
                            .black.opacity(0.6)
                            
                            
                        ], startPoint: .top, endPoint: .bottom)
                        
                        
                    )
                    .padding(.bottom,1)
                    .offset(y: 1)
    
                ZStack{
                    
                    Circle()
                        .stroke(.white.opacity(0.5),lineWidth: 1.5)
                        .padding(5)
                    
                    Circle()
                        .stroke(.black.opacity(0.5),lineWidth: 1)
                        .padding(4)
                    
                    
                    Circle()
                        .fill(
                            
                            LinearGradient(colors: [
                                
                                .black,
                                .black.opacity(0.8),
                                .black.opacity(0.2),
                                
                             ], startPoint: .top, endPoint: .bottom)
                            
                        )
                        .padding(6)
                    
                    ZStack{
                        
                        
                        Circle()
                            .fill(.gray.opacity(0.5))
                        
                        
                        Rectangle()
                            .fill(.gray.opacity(0.8))
                            .frame(width: 1, height: 1.5)
                            .offset(x: -3.3, y: 0.5)
                        
                        
                        Rectangle()
                            .fill(.gray.opacity(0.8))
                            .frame(width: 1, height: 1.5)
                            .offset(x: 3.3, y: 0.5)
                        
                        
                    }
                    .padding(8)
                    
                }
                .frame(width: 20, height: 20)
                
            }
            .frame(width: 20, height: 20)
                 
                 Circle()
                .stroke(
                    
                    LinearGradient(colors: [
                        
                        .white.opacity(0.7),
                        .gray,
                        .black.opacity(0.5)
                         
                    ], startPoint: .top, endPoint: .bottom),lineWidth: 3
                    
                )
                .frame(width: 25, height:25)
            
            
        }
        .frame(width: 28, height: 28)
        .offset(y: -10)
    }
}

struct TypeC : View{
    
    var thunderbolt : Bool = false
    
    var body: some View{
        
        
        VStack(spacing:5){
            
            Image("thunderbolt")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 8, height: 8)
                .foregroundColor(Color("Logo").opacity(0.6))
                .opacity(thunderbolt ? 1 : 0)
            
            ZStack{
                
                
                Capsule()
                    .fill(.black.opacity(0.6))
                    .frame(width: 6, height: 18)
                
                Capsule()
                    .fill(Color("Stand").opacity(0.2))
                    .frame(width: 2, height: 14)
                    .overlay(
                        
                        VStack{
                            
                            Capsule()
                                .fill(Color("Logo").opacity(0.7))
                                .frame(width: 1, height: 1)
                            
                            Spacer()
                            
                            Capsule()
                                .fill(Color("Logo").opacity(0.7))
                                .frame(width: 1, height: 1)
                        }
                        
                        
                    )
            }
            
        }
    }
}
