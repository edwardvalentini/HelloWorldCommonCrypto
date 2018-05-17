import CommonCrypto
import Foundation

let hellomessage = "Hello World"

print(hellomessage)


// compute md5 digest

let length = Int(CC_MD5_DIGEST_LENGTH)
var digest = [UInt8](repeating: 0, count: length)
if let d = hellomessage.data(using: String.Encoding.utf8) {
    _ = d.withUnsafeBytes { (body: UnsafePointer<UInt8>) in
        CC_MD5(body, CC_LONG(d.count), &digest)
    }
}
let md5 =  (0..<length).reduce("") {
    $0 + String(format: "%02x", digest[$1])
}

print(md5)
