//
//  ProductService.swift
//  SwiftUKitProgrammaticallyApp
//
//  Created by ibrahim özçelik on 25.12.2023.
//

import Foundation
import Alamofire

 
final class ProductService
{
    func productServiceRequest(responseItems:@escaping ([ProductModel])->())
    {
        let parameters: [String: Any] = [
            "userId" : (Any).self
        ]
        ServiceManagerGet.sharedService.serviceManagerRequest(url:ConstantVariable.baseUrl + "productGetData.php",parameters: parameters) {
            (productModelList: [ProductModel]) -> () in
            responseItems(productModelList)
        }
    }
}

