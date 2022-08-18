//
//  DataManager.swift
//  test
//
//  Created by Osama Buzdar on 18/08/2022.
//

import Foundation


class DataManager{
    
    @Published var userData = [DataModel]()
    
    
    init(){
    load()
    }
    
    func load (){
        if let fileLocation = Bundle.main.url(forResource: "data", withExtension: "json"){
            
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([DataModel].self, from: data)
                self.userData = dataFromJson
                
            }catch{
                print("error loading file \(error)")
            }
        }
    }
    
}
