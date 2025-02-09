void main() {
  List<Empleado> empleados = [
    Empleado("Dilia Acosta", "Desarrolladora", 3000.0),
    Empleado("María Gómez", "Gerente", 5000.0),
    Empleado("Carlos Gutierrez", "Secretario", 3500.0),
    Empleado("Nicolle Ramos", "Diseñadora", 3200.0)
  ];
  
  double salarioTotal = calcularSalarioTotal(empleados);
  double salarioPromedio = calcularSalarioPromedio(empleados);
  
  print("Salario total de todos los empleados: \$${salarioTotal}");
  print("Salario promedio de todos los empleados: \$${salarioPromedio}");
}

class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double calcularSalarioTotal(List<Empleado> empleados) {
  double salarioTotal = 0.0;
  for (Empleado empleado in empleados) {
    salarioTotal += empleado.salario;
  }
  return salarioTotal;
}

double calcularSalarioPromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) {
    return 0.0;
  }
  double salarioTotal = calcularSalarioTotal(empleados);
  return salarioTotal / empleados.length;
}
