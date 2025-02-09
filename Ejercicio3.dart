void main() {
  List<Empleado> empleados = [
    Empleado('Dilia', 'Programadora', 30000),
    Empleado('Juana', 'Administradora', 14000),
    Empleado('Luis', 'Gerente', 25000),
    Empleado('Eduardo', 'Venderdor', 10000)
  ];

  print('Salario total: ${salarioTotal(empleados)}');
  print('Salario promedio: ${salarioPromedio(empleados)}');
}

class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double salarioTotal(List<Empleado> empleados) =>
    empleados.fold(0, (sum, e) => sum + e.salario);

double salarioPromedio(List<Empleado> empleados) =>
    salarioTotal(empleados) / empleados.length;
