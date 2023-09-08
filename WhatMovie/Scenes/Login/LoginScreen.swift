import Foundation
import UIKit

class LoginScreen: BaseView {
  lazy var mainStackView: UIStackView = {
    let mainStackView = UIStackView()
    mainStackView.axis = .vertical
    mainStackView.distribution = .fill
    mainStackView.backgroundColor = Colors.backgroundPurple
    mainStackView.translatesAutoresizingMaskIntoConstraints = false
    return mainStackView
  }()
  
  lazy var entryButton: buttonComponent = buttonComponent(buttonTitle: "Entrar",
                                                          buttonColor: Colors.buttonPurple,
                                                          titleColor: Colors.buttonTitlePurple)
  
  override func addSubviews() {
    addSubview(mainStackView)
    //mainStackView.addArrangedSubview(entryButton)
  }
  
  override func installConstraints() {
    NSLayoutConstraint.activate([
      mainStackView.topAnchor.constraint(equalTo: topAnchor),
      mainStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
      mainStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
      mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
    ])
  }
}
