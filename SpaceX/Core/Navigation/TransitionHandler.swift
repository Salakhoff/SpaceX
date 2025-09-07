import UIKit

protocol TransitionHandler: AnyObject {
    func present(
        with vc: UIViewController,
        animated: Bool
    )
    
    func dismiss()
}

extension TransitionHandler where Self: UIViewController {
    func present(
        with vc: UIViewController,
        animated: Bool = true
    ) {
        present(
            vc,
            animated: animated 
        )
    }
    
    func dismiss() {
        dismiss(animated: true)
    }
}
