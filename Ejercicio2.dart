void main() {
  List<int> listaOriginal = [4, 4, 8, 20, 8, 3, 3, 9, 9, 14, 14, 7, 9, 7, 2];
  List<int> listaUnicos = [];
  
  for (int numero in listaOriginal) {
    if (!listaUnicos.contains(numero)) {
      listaUnicos.add(numero);
    }
  }
  
  print(listaUnicos);
}


