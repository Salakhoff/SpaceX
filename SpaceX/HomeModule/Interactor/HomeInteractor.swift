import Foundation

final class HomeInteractor {
    weak var output: HomeInteractorOuput?
}

extension HomeInteractor: HomeInteractorInput {
    func obtainData() {
        print("Get any data")
    }
}
