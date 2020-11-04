//
//  TicketView.swift
//  Lidar
//
//  Created by Sarah Barbour on 11/3/20.
//

import SwiftUI


struct TicketView: View {
    @State var stateSelection: TicketState = .toDo
    @State var inputText: String = ""
    var body: some View {
        VStack {
            Text("Problem Title")
                .font(.title)
                .padding()
            Text("Problem Description")
            Picker("State", selection:$stateSelection) {
                ForEach(TicketState.allCases) { ticketState in
                        Text(ticketState.rawValue.capitalized)
                    }
            }.padding()
            Text("Problem history")
            TextField("Enter text", text: $inputText)
                .padding()
        }
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
