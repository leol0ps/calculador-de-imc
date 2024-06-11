//
//  ContentView.swift
//  aula3
//
//  Created by Turma01-9 on 10/06/24.
//

import SwiftUI
//func setcolor(varcolor: Int){
//    switch varcolor{
//    case 1:
//        Color.baixo.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//    case 2:
//        Color.media.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//    case 3:
//        Color.alto.edgesIgnoringSafeArea(.all)
//    case 4:
//        Color.obeso.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//    default:
//        Color.baixo.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//    }
//}
struct ContentView: View {
    @State private var peso: Double = 0.0
    @State private var altura: Double = 0.0
    @State private var test: Double = 0.0
    @State private var cond: Color = Color("media")
    @State private var textcond: String = "Normal"
    var body: some View {
       // self.view.backgroundColor = UIColor.red

        ZStack{
            cond.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //Color.baixo.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                Text("Calculadora de IMC")
                    .font(.title)
                TextField("seu peso",value: $peso, formatter:  NumberFormatter())
                    .frame(width: 300)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                Spacer()
                    .frame(height: 35)
                TextField("sua altura",value: $altura, formatter:  NumberFormatter())
                    .frame(width: 300)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                Spacer()
                    .frame(height: 35)
                Button("Calcular",
                       action: {
                    
                    test = peso/(altura*altura)
                    switch test{
                    case  ...18.49:
                        textcond = "Baixo peso"
                        cond = Color("baixo")
                        
                    case  ...24.99:
                        textcond = "Normal"
                        cond = Color("media")
                        
                    case  ...29.99:
                        textcond = "Sobrepeso"
                        cond = Color("alto")
                    default:
                        textcond = "Obesidade"
                        cond = Color("obeso")
                    }
                    
                } )
                .buttonStyle(.borderedProminent)
                Spacer()
                    .frame(height: 100)
                Text("\(textcond)")
                    .font(.title)
                    .foregroundStyle(.white)
                Spacer()
                Image(.tabelaIMC)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 450)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
