import UIKit

class BaseView: UIView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubviews()
    installConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func addSubviews(){
    
  }
  
  func installConstraints() {
    
  }
}

