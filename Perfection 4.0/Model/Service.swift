//
//  Service.swift
//  Perfection 4.0
//
//  Created by Sidney Okine on 12/08/2022.
//

import Foundation
import Alamofire


class Service {
    
    var baseURL = ""
    typealias countriesCallBack = (_ countries:[Countries]?, _ status: Bool, _ message:String) -> Void

    var callBack:countriesCallBack?

    init(baseURL : String) {
        self.baseURL = baseURL
        
    }
    
    func getAllCountryInfoFrom(endPoint : String){
        
        AF.request(self.baseURL + endPoint, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response { (responseData) in
            guard let data = responseData.data else {
                self.callBack?(nil, false, "")

                return}
            do {
            let countries = try JSONDecoder().decode([Countries].self, from: data)
                self.callBack?(countries, true,"")
//                let capital = countries.map{$0.capital}
                let capital = countries.map{ country in country.flags}
                print(capital.description)
                
            } catch {
                self.callBack?(nil, false, error.localizedDescription)
                print("\(error)")

            }
            
        }
        
    }
    func completionHandler(callBack: @escaping countriesCallBack) {
        self.callBack = callBack
    }

}
