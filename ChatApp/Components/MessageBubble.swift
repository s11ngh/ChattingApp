//
//  MessageBubble.swift
//  ChatApp
//
//  Created by ujjwal on 19/08/22.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var ShowTime = false
    
    var body: some View {
        VStack(alignment: message.recieved ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.recieved ? Color("Gray") : Color("Blue"))
                    .cornerRadius(30)
                
            }
            .frame(minWidth: 300, alignment: message.recieved ? .leading : .trailing)
            .onTapGesture {
                ShowTime.toggle()
            }
            if ShowTime{
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.recieved ? .leading : .trailing, 25)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.recieved ? .leading : .trailing)
        .padding(message.recieved ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
            MessageBubble(message: Message(id: "911", text: "I'm making this app and it is pretty cool to see it turn into something so real!", recieved: false, timestamp: Date()))
        }
}
