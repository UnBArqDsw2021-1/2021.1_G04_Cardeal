# Código com exemplo com implementação de Adapter patterns

class Target:

    # O Target define a interface específica do domínio usada pelo código do cliente.

    def request(self) -> str:
        return "Alvo: o comportamento do alvo padrão."


class Adaptee:

    # O Adaptee contém alguns comportamentos úteis, mas sua interface é incompatível
    # com o código do cliente existente. O Adaptee precisa de alguma adaptação antes do
    # o código do cliente pode usá-lo.

    def specific_request(self) -> str:
        return ".eetpadA od laicepse otnematropmoC"


class Adapter(Target, Adaptee):

    # O Adaptador torna a interface do Adaptador compatível com a do Target
    # interface através de herança múltipla.

    def request(self) -> str:
        return f"Adaptador: (TRADUZIDO) {self.specific_request () [:: - 1]}"


def client_code(target: "Target") -> None:
    """
     O código do cliente oferece suporte a todas as classs que seguem a interface de destino.
    """

    print(target.request(), end="")


if __name__ == "__main__":
    print("Client: posso trabalhar muito bem com os objetos Target:")
    target = Target()
    client_code(target)
    print("\n")

    adaptee = Adaptee()
    print("Cliente: a class Adaptee tem uma interface estranha."
          "Veja, eu não entendo:")
    print(f"Adaptee: {adaptee.specific_request()}", end="\n\n")

    print("Cliente: Mas posso trabalhar com isso por meio do Adaptador:")
    adapter = Adapter()
    client_code(adapter)
