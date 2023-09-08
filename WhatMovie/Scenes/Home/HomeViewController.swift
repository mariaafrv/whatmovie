import UIKit

class HomeViewController: UIViewController {
  let customView = HomeView()
  let popularMovies = NetworkPopularMovies()
  var listMovies: [PopularMovies] = []
  
  override func loadView() {
    view = customView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    customView.button.addTarget(self, action: #selector(searchFilm), for: .touchUpInside)
  }
  
  @objc func searchFilm() {
    popularMovies.getInfo([PopularMovies].self) { [weak self] movies in
      guard let movies = movies else {
        return
      }
      self!.listMovies = movies
    }
  }
}
