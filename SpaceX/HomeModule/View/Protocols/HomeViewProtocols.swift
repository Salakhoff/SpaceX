import Foundation

protocol HomeViewInput: AnyObject {
    func set(state: HomeState)
}

protocol HomeViewOutput: AnyObject {
    func viewDidLoad()
}

protocol HomeView: HomeViewInput, TransitionHandler, HomeViewInput {
    var output: HomeViewOutput? { get set }
}

// MARK: - HomeState

enum HomeState {
    case success
    case loading
    case error(String)
}
