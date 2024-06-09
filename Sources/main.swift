import ArgumentParser
import Rainbow

struct Saludador: ParsableCommand {
    @Option(name: .shortAndLong, help:"El nombre para saludar")
    var name: String

    func run() throws {
        let saludo = "Hola \(name)!".green
        print(saludo)
    }
}

Saludador.main()
