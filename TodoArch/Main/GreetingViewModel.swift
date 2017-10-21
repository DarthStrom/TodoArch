import UIKit

class GreetingViewModel: UIView {
    @IBOutlet var getStarted: UIButton!
    @IBOutlet var greeting: UILabel!

    @IBAction func getStartedTapped() {
        print("get started tapped")
    }
}
