import Foundation
import UIKit

class HomeView: BaseView {
  
  let mainStackView: UIStackView = {
    let mainStackView = UIStackView()
    mainStackView.axis = .vertical
    mainStackView.distribution = .fill
    mainStackView.translatesAutoresizingMaskIntoConstraints = false
    return mainStackView
  }()
  
  let searchBar: UISearchBar = {
    let searchBar = UISearchBar()
    searchBar.backgroundColor = .red
    searchBar.translatesAutoresizingMaskIntoConstraints = false
    return searchBar
  }()
  
  let contentScrollView = UIScrollView()
  
  let contentStackView: UIStackView = {
    let contentStackView = UIStackView()
    contentStackView.axis = .vertical
    return contentStackView
  }()
  
  let button: UIButton = {
    let button = UIButton()
    button.setTitle("Teste", for: .normal)
    button.backgroundColor = .black
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
  let tableView: UITableView = {
    let tableView = UITableView()
    tableView.translatesAutoresizingMaskIntoConstraints = false
    return tableView
  }()
  
  let title: UITextView = {
    let title = UITextView()
    return title
  }()
  
  override func addSubviews() {
    addSubview(mainStackView)
    mainStackView.addArrangedSubview(searchBar)
    mainStackView.addArrangedSubview(contentScrollView)
    mainStackView.addArrangedSubview(title)
    mainStackView.addArrangedSubview(button)
  }
  
  override func installConstraints() {
    NSLayoutConstraint.activate([
      mainStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
      mainStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
      mainStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
      mainStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
    ])
  }
}
