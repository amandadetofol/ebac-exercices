// um delegate permite que um objeto utiliza um similiar para fornecer dados ou realizar uma tarefa, em vez de realizar a tarefa em si mesmo
//permite a uma classe definir ou delegar uma responsabilidade a outra classe

// objeto que precisa de um delegate
// delegation protocol que define um metodo de delegate


struct Cookie {
    var count : Int = 2
    var hasChocolateChips : Bool = false
}

protocol CandyShopDelegate {
    func cookieIsDone(_ cookie : Cookie)
    func preferredCookieCount()-> Int
}

class CandyShop{
    var delegate : CandyShopDelegate?
    
    func makeCookie(){
        var cookie = Cookie()
        cookie.count = delegate?.preferredCookieCount() ?? 4
        cookie.hasChocolateChips = true
        delegate?.cookieIsDone(cookie)
    }
}

class CookieShop : CandyShopDelegate{
    func cookieIsDone(_ cookie: Cookie) {
        print("Novos cookies estao prontos \(cookie.count)")
    }
    
    func preferredCookieCount() -> Int {
        return 9
    }
}

let cookieShop = CookieShop()
let candyShop = CandyShop()

candyShop.delegate = cookieShop
candyShop.makeCookie()
