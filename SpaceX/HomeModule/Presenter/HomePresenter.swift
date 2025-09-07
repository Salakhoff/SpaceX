import Foundation

final class HomePresenter {
    private weak var view: HomeViewInput?
    private var interactor: HomeInteractorInput?
    private var router: HomeRouterInput?
    
    init(
        view: HomeViewInput,
        interactor: HomeInteractorInput,
        router: HomeRouterInput
    ) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - HomeViewOutput

extension HomePresenter: HomeViewOutput {
    func viewDidLoad() {
        print("presenter viewDidLoad")
        interactor?.obtainData()
    }
}

// MARK: - HomeInteractorOuput

extension HomePresenter: HomeInteractorOuput {
    func setSuccessFullObtainData() {
        print("presenter setSuccessFullObtainData")
    }
}
