import Foundation

protocol HomeInteractorInput: AnyObject {
    func obtainData()
}

protocol HomeInteractorOuput: AnyObject {
    func setSuccessFullObtainData()
}
