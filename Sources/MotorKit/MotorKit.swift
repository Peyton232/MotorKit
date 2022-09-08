import Foundation
import Motor

let kDeviceSharedKey: String = "DEVICE_SHARED_KEY"

public class MotorKit {
  // Initializer Function
  //
  // 1. Sets up Secure Enclave
  // 2. Checks if Keychain contains motor record
  // 3. Passes record to Bridge
  // 4. Updates state
  static public func initialize(req: Data, cb: SNRMotorMotorCallback) -> Data? {
    // Setup Secure enclave
    let error: NSErrorPointer = nil
    let resp = SNRMotorInit(req, cb, error)
    if error != nil {
      return nil
    }
    return resp
  }
  static public func connect() -> Bool {
    let error: NSErrorPointer = nil
    let resp = SNRMotorConnect(error)
    if error != nil {
      return false
    }
    return resp
  }

  static public func stat() -> Data? {
    let error: NSErrorPointer = nil
    let resp = SNRMotorStat(error)
    if error != nil {
      return nil
    }
    return resp
  }

  // Create a new Account
  static public func createAccount(req: Data) -> Data? {
    let error: NSErrorPointer = nil
    let resp = SNRMotorCreateAccount(req, error)
    if error != nil {
      return nil
    }
    // No response returned
    return resp
  }

  // Login to an existing account
  static public func loginAccount(req: Data) -> Data? {
    let error: NSErrorPointer = nil
    let resp = SNRMotorLogin(req, error)
    if error != nil {
      return nil
    }
    return resp
  }

  // Login to an existing account
  static public func createSchema(req: Data) -> Data? {
    let error: NSErrorPointer = nil
    let resp = SNRMotorCreateSchema(req, error)
    if error != nil {
      return nil
    }
    return resp
  }

  // Login to an existing account
  static public func querySchema(req: Data) -> Data? {
    let error: NSErrorPointer = nil
    let resp = SNRMotorQuerySchema(req, error)
    if error != nil {
      return nil
    }
    return resp
  }

  // Login to an existing account
  static public func querySchemaByCreator(req: Data) -> Data? {
    let error: NSErrorPointer = nil
    let resp = SNRMotorQuerySchemaByCreator(req, error)
    if error != nil {
      return nil
    }
    return resp
  }

  // Login to an existing account
  static public func querySchemaByDid(req: String) -> Data? {
    let error: NSErrorPointer = nil
    let resp = SNRMotorQuerySchemaByDid(req, error)
    if error != nil {
      return nil
    }
    return resp
  }

  // Login to an existing account
  static public func queryBucket(req: Data) -> Data? {
    let error: NSErrorPointer = nil
    let resp = SNRMotorQueryBucket(req, error)
    if error != nil {
      return nil
    }
    return resp
  }

  // Login to an existing account
  static public func queryBucketByCreator(req: Data) -> Data? {
    let error: NSErrorPointer = nil
    let resp = SNRMotorQueryBucketByCreator(req, error)
    if error != nil {
      return nil
    }
    return resp
  }

  // Login to an existing account
  static public func issuePayment(req: Data) -> Data? {
    let error: NSErrorPointer = nil
    let resp = SNRMotorIssuePayment(req, error)
    if error != nil {
      return nil
    }
    return resp
  }

}
