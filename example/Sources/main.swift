import Foundation
import LLamaSwift

//let modelPath = "/Volumes/Macintosh HD/Users/huozhiyu/Desktop/intelli_mailer/assets/models/inline_prediction.gguf"
let modelPath = "/Users/huozhiyu/Downloads/Llama-Chat-Summary-3.2-3B.Q4_K_M.gguf"

let model = try Model(modelPath: modelPath)
let llama = LLama(model: model)
let prompt = "Hello what's your name?"

for try await token in await llama.infer(prompt: prompt) {
    print(token, terminator: "")
}
