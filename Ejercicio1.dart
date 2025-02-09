void main() {
  List<int> numeros = [0, 1];
  
  for (int i = 2; i < 15; i++) {
    numeros.add(numeros[i - 1] + numeros[i - 2]);
  }
  
  print(numeros);
}
