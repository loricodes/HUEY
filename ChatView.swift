//import SwiftUI
//import OpenAIKit
//import Foundation
//import UIKit
//
//struct ChatView: View {
//    @State private var question = ""
//    @State private var answer = ""
//    let apiToken: String = "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"
//    let organizationName: String = "HUEY"
//    var openAI = OpenAIKit(apiToken: "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")
//
//    class OpenAIManager {
//        let apiKey: String
//        let model: openAI.Model
//        let language: openAI.Language
//        let openAI: openAI
//
//        init(apiKey: String, model: OpenAI.Model, language: OpenAI.Language) {
//            self.apiKey = "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"
//            self.model = model
//            self.language = language
//            self.openAI = OpenAI(apiKey: apiKey, model: model, language: language)
//        }
//    }
//
//    // Example usage
//    let apiKey = "YOUR_API_KEY"
//    let model = OpenAI.Model.davinci
//    let language = OpenAI.Language.english
//
//    let openAIManager = OpenAIManager(apiKey: apiKey, model: model, language: language)
//    openAIManager.askQuestion(question: "What is photosynthesis?")
//    openAIManager.askQuestion(question: "How do plants reproduce?")
//    openAIManager.askQuestion(question: "Which plants are suitable for indoor environments?")
//
//
//    var body: some View {
//        VStack {
//            ScrollView {
//                VStack(spacing: 20) {
//                    ChatBubble(text: "Hi! How can I help you today?", isUser: false)
//                    ChatBubble(text: answer, isUser: false)
//                }
//                .padding()
//            }
//            .background(Color("ChatBackground"))
//
//            HStack {
//                TextField("Enter your question", text: $question)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//
//                Button(action: {
//                    getPlantInfo()
//                }) {
//                    Image(systemName: "paperplane.fill")
//                        .foregroundColor(Color("PrimaryColor"))
//                        .font(.system(size: 24))
//                }
//            }
//            .padding()
//            .background(Color("InputBackground"))
//            .cornerRadius(10)
//        }
//        .navigationBarTitle("HUEY")
//        .onTapGesture {
//            // Dismiss keyboard
//            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//        }
//    }
//
//    func getPlantInfo() {
//        let prompt = "Question: \(question)\nAnswer:"
//
//        openAI.sendCompletion(prompt: "Hello!", model: .gptV3_5(.davinciText003), maxTokens: 2048) { [weak self] result in
//            switch result {
//            case .success(let aiResult):
//                DispatchQueue.main.async {
//                    if let text = aiResult.choices.first?.text {
//                        print("response text: \(text)") //"\n\nHello there, how may I assist you today?"
//                    }
//                }
//            case .failure(let error):
//                DispatchQueue.main.async { [weak self] in
//                    let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
//                    alert.addAction(UIAlertAction(title: "Ok", style: .default))
//                   // self?.present(alert, animated: true)
//                }
//            }
//        }
//    }
//}
//
//struct ChatBubble: View {
//    let text: String
//    let isUser: Bool
//
//    var body: some View {
//        HStack {
//            if !isUser {
//                Spacer()
//            }
//
//            Text(text)
//                .foregroundColor(.white)
//                .padding()
//                .background(isUser ? Color("PrimaryColor") : Color("BotColor"))
//                .cornerRadius(10)
//
//            if isUser {
//                Spacer()
//            }
//        }
//    }
//}
//
//
//struct ChatContentView: View {
//    var body: some View {
//        NavigationView {
//            ChatView()
//                .navigationBarTitle("HUEY")
//        }
//    }
//}
//
//struct ChatContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
