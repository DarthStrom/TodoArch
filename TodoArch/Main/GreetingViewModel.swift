import UIKit

class GreetingViewModel: UIView {
    @IBOutlet var name: UITextField!
    @IBOutlet var getStarted: UIButton!
    @IBOutlet var greeting: UILabel!

    @IBAction func getStartedTapped() {
        greeting.text = "Hi, \(name.text ?? "")!"
    }
}
