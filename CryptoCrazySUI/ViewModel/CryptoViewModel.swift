

import Foundation

@MainActor
class CryptoListViewModel : ObservableObject {
    
    @Published var cryptoList = [CryptoViewModel]()
    
    let webservice = Webservice()
    
    func dowloadCryptosContinuation(url : URL) async {
        
        do {
            let cryptos = try await webservice.downloadCurrencyContinuation(url: url)
            self.cryptoList = cryptos.map(CryptoViewModel.init)
            /*
            DispatchQueue.main.async {
                self.cryptoList = cryptos.map(CryptoViewModel.init)
            }
             */
        } catch {
            print(error)
        }
    }
    
    /*
    func dowloadCryptosasync(url: URL) async {
        do {
            guard let cryptos = try await webservice.downloadCurreniesAsync(url: url) else { return }
            DispatchQueue.main.async { 
                self.cryptoList = cryptos.map(CryptoViewModel.init)
            }
        } catch {
            print(error)
        }
    }
    */

    
    /*
    func dowloadCryptos(url : URL){
        
        webservice.downloadCurrency(url: url) { result in
            
            switch result {
                
            case .failure(let error):
                print(error)
                
            case .success(let cryptos):
                if let cryptos = cryptos {
                    DispatchQueue.main.async {
                        self.cryptoList = cryptos.map(CryptoViewModel.init)
                    }
                }
            }
        }
    }
    */
}

struct CryptoViewModel {
    
    let crypto: CryptoCurrency
    
    var id: UUID? {
        crypto.id
    }
    
    var currency: String {
        crypto.currency
    }
    
    var price: String {
        crypto.price
    }
}
