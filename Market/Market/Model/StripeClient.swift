//
//  StripeClient.swift
//  Market
//
//  Created by David Kababyan on 21/08/2019.
//  Copyright © 2019 David Kababyan. All rights reserved.
//

import Foundation
import Stripe
import Alamofire

class StripeClient {
    
    static let sharedClient = StripeClient()
    
    var baseURLString: String? = nil
    
    var baseURL: URL {
        if let urlString = self.baseURLString, let url = URL(string: urlString) {
            return url
        } else {
            fatalError()
        }
    }
    
    func createAndConfirmPayment(_ token: STPToken, amount: Int, completion: @escaping (_ error: Error?) -> Void) {
        
        let url = self.baseURL.appendingPathComponent("charge")
        
        
        let params: [String : Any] = ["stripeToken" : token.tokenId, "amount" : amount, "description" : Constats.defaultDescription, "currency" : Constats.defaultCurrency]
        let serializer = DataResponseSerializer(emptyResponseCodes: Set([200, 204, 205]))
        AF.request(url, method: .post, parameters: params)
            .validate()
            .response(responseSerializer: serializer){ (response) in
                switch response.result {
                
                case .success( _):
                    print("Payment successful")
                    completion(nil)
                case .failure(let error):
                    if (response.data?.count)! > 0 {print("errrrroooo",error)}
                    completion(error)
                }
            }
    }
}
