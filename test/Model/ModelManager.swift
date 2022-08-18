import Foundation

struct ModelManager {
    
    let rawUrl = "https://api.openweathermap.org/data/2.5/weather?appid=98228f58dc5879bd94115e0b954b97e0"
    
    
    func getData(city: String){
        let url = "\(rawUrl)&q=\(city)"
        print(url)
        performRequest(urlString: url)
    }
    
    func performRequest (urlString: String){
        //1. Create url
        if let url = URL(string: urlString){
            
            //2. Create URLSession
            let session = URLSession(configuration: .default)
            
            //3. Create task
            let task = session.dataTask(with: url) { data, response, error in
                if  error != nil{
                    print(error ?? "exception thrown by handler")
                    return
                }
                
                if let safeData = data {
                    parseJson(data: safeData)
                }
            }
            
            //4. Start task
            task.resume()
        }
    }
    
    func parseJson(data: Data){
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(DataModel.self, from: data)
            print(decodedData.name)
        }catch{
            print(error)
        }
    }
    
}
