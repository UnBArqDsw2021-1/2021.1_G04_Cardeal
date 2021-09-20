# Exemplo da utilização do design pattern Bridge 


from __future__ import annotations
from abc import ABC, abstractmethod


class Abstraction:
    """
    A abstração define a interface para a parte de "controle" dos dois
    hierarquias de classes. Ele mantém uma referência a um objeto do
    Hierarquia de implementação e delega todo o trabalho real para este objeto.
    """

    def __init__(self, implementation: Implementation) -> None:
        self.implementation = implementation

    def operation(self) -> str:
        return (f"Abstraction: Operação base com:\n"
                f"{self.implementation.operation_implementation()}")


class ExtendedAbstraction(Abstraction):
    """
    Você pode estender a Abstração sem alterar as classes de Implementação.
    """

    def operation(self) -> str:
        return (f"ExtendedAbstraction: Operação Extendida com:\n"
                f"{self.implementation.operation_implementation()}")


class Implementation(ABC):
    """
    A implementação define a interface para todas as classes de implementação. Isto
    não precisa corresponder à interface do Abstraction. Na verdade, os dois
    interfaces podem ser totalmente diferentes. Normalmente, a interface de implementação
    fornece apenas operações primitivas, enquanto a abstração define
    operações de nível com base nessas primitivas.
    """

    @abstractmethod
    def operation_implementation(self) -> str:
        pass


"""
Cada implementação concreta corresponde a uma plataforma e implementos específicos
a interface de implementação usando a API dessa plataforma.
"""


class ConcreteImplementationA(Implementation):
    def operation_implementation(self) -> str:
        return "ConcreteImplementationA: Aqui está o resultado na plataforma A."


class ConcreteImplementationB(Implementation):
    def operation_implementation(self) -> str:
        return "ConcreteImplementationB: Aqui está o resultado na plataforma B."


def client_code(abstraction: Abstraction) -> None:
    """
    Exceto para a fase de inicialização, onde um objeto Abstraction é vinculado
    com um objeto de implementação específico, o código do cliente deve depender apenas de
    a classe Abstraction. Desta forma, o código do cliente pode suportar qualquer abstração
    combinação de implementação.
    """

    # ...

    print(abstraction.operation(), end="")

    # ...


if __name__ == "__main__":
    """
    O código do cliente deve ser capaz de funcionar com qualquer abstração pré-configurada-
    combinação de implementação.
    """

    implementation = ConcreteImplementationA()
    abstraction = Abstraction(implementation)
    client_code(abstraction)

    print("\n")

    implementation = ConcreteImplementationB()
    abstraction = ExtendedAbstraction(implementation)
    client_code(abstraction)