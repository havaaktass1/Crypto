
import Foundation

class Webservice {
    
    /*
    func downloadCurreniesAsync(url:URL) async throws -> [CryptoCurrency]? {
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        
        let currencies = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
        
        return currencies
    }
     */
    
    func downloadCurrencyContinuation(url: URL) async throws -> [CryptoCurrency] {
        
        try await withCheckedThrowingContinuation { continuation in
            
            downloadCurrency(url: url) { result in
                switch result {
                case .success(let cryptos):
                    continuation.resume(returning: cryptos ?? [])
                case .failure(let error):
                    continuation.resume(throwing: error)
                }
            }
        }
        
    }
    
    func downloadCurrency(url: URL, completion: @escaping (Result<[CryptoCurrency]?,DownloaderError>) -> Void ) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(.failure(.falseURL))
            }
            
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
            
            guard let currencies = try? JSONDecoder().decode([CryptoCurrency].self, from: data) else {
                return completion(.failure(.dataParseError))
            }
            
            completion(.success(currencies))
            
        }.resume()
    }
    
}

enum DownloaderError : Error {
    case falseURL
    case noData
    case dataParseError
}
