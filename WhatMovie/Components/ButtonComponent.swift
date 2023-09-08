import UIKit

class buttonComponent: BaseView {
  let buttonColor: UIColor
  let buttonTitle: String
  let titleColor: UIColor
  
  
  lazy var buttonComponent: UIButton = {
    let uiButton = UIButton()
    uiButton.setTitle(buttonTitle, for: .normal)
    uiButton.setTitleColor(titleColor, for: .normal)
    uiButton.backgroundColor = buttonColor
    uiButton.layer.cornerRadius = 5
    uiButton.translatesAutoresizingMaskIntoConstraints = false
    return uiButton
  }()
  
  
  init(buttonTitle: String, buttonColor: UIColor, titleColor: UIColor) {
    self.buttonTitle = buttonTitle
    self.buttonColor = buttonColor
    self.titleColor = titleColor
    super.init(frame: .zero)
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func addSubviews() {
    addSubview(buttonComponent)
  }
  
  override func installConstraints() {
    NSLayoutConstraint.activate([
      buttonComponent.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
      buttonComponent.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
      buttonComponent.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
      buttonComponent.widthAnchor.constraint(equalToConstant: 200),
      buttonComponent.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
  
}
