import Foundation

// MARK: - Protocols

protocol HomeRouterInput: AnyObject {
    func routeToDetail()
}

// MARK: - HomeRouter

final class HomeRouter {
    private weak var transitionHandler: TransitionHandler?
    
    init(transitionHandler: TransitionHandler) {
        self.transitionHandler = transitionHandler
    }
}

// MARK: - HomeRouterInput

extension HomeRouter: HomeRouterInput {
    func routeToDetail() {
        print("Routing to detail")
    }
}
