import Foundation

final class HomeAssembly {
    static func assemble(with view: HomeView) {
        let interactor = HomeInteractor()
        let router = HomeRouter(transitionHandler: view)
        
        let presenter = HomePresenter(
            view: view,
            interactor: interactor,
            router: router
        )
        
        interactor.output = presenter
        view.output = presenter
    }
}
