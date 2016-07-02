import Foundation

public protocol CustomerRepository {
    func all() -> [Customer]
}

struct CustomerRepositoryInMemory: CustomerRepository {

    var customers: [Customer] {
        let customer = CustomerEntity(
            name: "Ronan Rodrigo Nunes", phone: "47 9999 9999", email: "ronan.nunes@me.com", address: "R. Minha Rua")
        return [customer]
    }

    func all() -> [Customer] {
        return customers
    }

}
