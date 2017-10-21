import UIKit

func createViewController<T: UIViewController>(_ identifier: String, fromStoryboard storyboardName: String, preload: Bool = true) -> T {
    let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle(for: T.self))
    let viewController: UIViewController = storyboard.instantiateViewController(withIdentifier: identifier)
    if preload { _ = viewController.view }
    return viewController as! T
}
