//
//  EncryptUtil.swift
//  AESDecrypt_Upwork
//
//  Created by twizzyindy on 18/05/2021.
//

import Foundation
import CryptoSwift

struct EncryptionUtil {
    
    
    static func decrypt(b64_text:String) -> String {
        do {
            
            let base64Data = Data(base64Encoded: b64_text, options: .ignoreUnknownCharacters)
            let dataToDecrypt = Data(bytes: base64Data!.bytes, count: base64Data!.count)
            
            let ivBytes = self.getInitializationVector()
            let token = "EzUK8WH5sHd2Jw"
            let keyBytes = Digest.sha256(token.bytes)
            
            let dec = try AES(key: keyBytes, blockMode: CBC(iv: ivBytes.bytes), padding: .pkcs5).decrypt(dataToDecrypt.bytes)
            
            let decData = Data(bytes: Array(dec[16...dec.count - 1 ]), count: Int(dec.count - 16))
            
            let result = String(bytes: decData.bytes, encoding: .ascii) ?? ""
            return result
            
        } catch let err {
            print("Error in decryption : \(err)")
            return ""
        }
        
    }

    //----- Initialization Vector -----

    static func getInitializationVector() -> String {
        let s = randomString(length: 16)
        return s
    }



    static func randomString(length: Int) -> String {

        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

        let l = UInt32(letters.length)
        
        var randomString = ""

        for _ in 0 ..< length {
            let rand = arc4random_uniform(l)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }

        return randomString
    }
}
 
