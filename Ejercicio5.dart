void main() {
  CuentaBancaria cuenta = CuentaBancaria("Dilia Acosta", 1000);
  
  cuenta.consultarSaldo();
  cuenta.depositar(500);
  cuenta.retirar(300);
  cuenta.retirar(1500);
}

class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, this.saldo);

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print("Has depositado \$${cantidad}. Nuevo saldo: \$${saldo}");
    } else {
      print("La cantidad a depositar debe ser mayor que cero.");
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0 && saldo >= cantidad) {
      saldo -= cantidad;
      print("Has retirado \$${cantidad}. Nuevo saldo: \$${saldo}");
    } else if (cantidad > 0 && saldo < cantidad) {
      print("Fondos insuficientes. Saldo actual: \$${saldo}");
    } else {
      print("La cantidad a retirar debe ser mayor que cero.");
    }
  }

  void consultarSaldo() {
    print("Saldo actual: \$${saldo}");
  }
}

