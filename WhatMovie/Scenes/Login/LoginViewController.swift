import UIKit

class LoginViewController: UIViewController {
  let customView = LoginScreen()
  
  override func loadView() {
    view = customView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

