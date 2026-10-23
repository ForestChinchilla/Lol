// closure capture training
//
//типа кошелек со счетчиок операций, для отработки мышц пальцев
//



var wallet = 0
var pay = 0

let inputMoney = 1000

func giveMoney (_ money: Int, wallet: inout Int) {
    wallet += money
    print("The balance on wallet now is:", wallet)
}

giveMoney(inputMoney, wallet: &wallet)


func payment (_ wallet: inout Int,_ payment: Int) -> () -> Int {
    wallet -= payment
    print("You was paid:", payment, "and now balance is:", wallet)
    var counter = 0
    return {
        counter += 1
          return counter
    }
}

let paymentCounter = payment(&wallet, pay)


pay = 100

payment(&wallet, pay)
print("Payment counter now is:", paymentCounter())

pay = 200

payment(&wallet, pay)
print("Payment counter now is:", paymentCounter())

