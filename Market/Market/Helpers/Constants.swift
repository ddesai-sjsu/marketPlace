//
//  Constants.swift
//  Market
//
//  Created by David Kababyan on 14/07/2019.
//  Copyright © 2019 David Kababyan. All rights reserved.
//

import Foundation

enum Constats {
    static let publishableKey = "pk_test_51IlL8ZIKdO5typc7klntmhSG7CRFuJUCVGUc6reMAniPcLGm3rCc41XIlvtFdZOvXvtcDSkXwH1mDrqorcf0V0wF00i47EeK0L"
    static let baseURLString = "https://market-usa.herokuapp.com"
    static let defaultCurrency = "usd"
    static let defaultDescription = "Purchase from Market"
}


//IDS and Keys
public let kFILEREFERENCE = "gs://market-d5810.appspot.com"
public let kALGFOLIA_APP_ID = "MW0CQ9TBYT"
public let kALGOLIA_SEARCH_KEY = "5cbc9d50153485309452e029caf735d9"
public let kALGOLIA_ADMIN_KEY = "146bd9dfa67194c57fbc0b75eb839fa0"


//Firebase Headers
public let kUSER_PATH = "User"
public let kCATEGORY_PATH = "Category"
public let kITEMS_PATH = "Items"
public let kBASKET_PATH = "Basket"



//Category
public let kNAME = "name"
public let kIMAGENAME = "imageName"
public let kOBJECTID = "objectId"

//Item
public let kCATEGORYID = "categoryId"
public let kDESCRIPTION = "description"
public let kPRICE = "price"
public let kIMAGELINKS = "imageLinks"

//Basket
public let kOWNERID = "ownerId"
public let kITEMIDS = "itemIds"

//User
public let kEMAIL = "email"
public let kFIRSTNAME  = "firstName"
public let kLASTNAME  = "lastName"
public let kFULLNAME  = "fullName"
public let kCURRENTUSER  = "currentUser"
public let kFULLADDRESS  = "fullAddress"
public let kONBOARD  = "onBoard"
public let kPURCHASEDITEMIDS  = "purchasedItemIds"
