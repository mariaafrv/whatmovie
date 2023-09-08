import Foundation

class NetworkPopularMovies {
  func getInfo<T>(_ value: T.Type, completion: @escaping (T?) -> Void) where T: Decodable {
    
    let headers = [
      "accept": "application/json",
      "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2OWVkMmEwN2FmOTUyYzkyYTQzYzk0MDRhOTg1MjQxMyIsInN1YiI6IjY0ZDc3OGM2ZDEwMGI2MDEzOTVkMzExOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.FD2AEA3Yot7D3yGiox3pHlq4xirhGA9ZWRXERXrCyFc"
    ]
    
    let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/search/movie?query=star%20wars&include_adult=false&language=en-US&page=1")! as URL,
                                            cachePolicy: .useProtocolCachePolicy,
                                        timeoutInterval: 10.0)
    request.httpMethod = "GET"
    request.allHTTPHeaderFields = headers
    
    let task = URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
      if (error != nil) {
        print(error as Any)
      } else {
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse)
      }
    }
    task.resume()
  }
}
