void main() {
  Biblioteca biblioteca = Biblioteca();

  biblioteca.AgregarLibro(Libro('Orgullo y prejuicio', 'Jane Austen', 1813));
  biblioteca.AgregarLibro(Libro('Rayuela', 'Julio Cortázar', 1963));
  biblioteca.AgregarLibro(Libro('La sombra del viento', 'Carlos Ruiz Zafón', 2001));
  biblioteca.AgregarLibro(Libro('Los miserables', 'Victor Hugo', 1862));

  print('Libros ordenados por año:');
  for (var libro in biblioteca.LibrosOrdenadosPorAnio()) {
    print('${libro.titulo} - ${libro.anioPublicacion}');
  }
  print('\nBuscand libro del autor Carlos Ruiz Zafón...:');
  biblioteca
      .buscarPorAutor('Carlos Ruiz Zafón')
      .forEach((libro) => print(libro.titulo));

  print('\nEliminando un libro...');
  biblioteca.EliminarLibro('Los miserables');

  print('\nLibros restantes en la biblioteca:');
  biblioteca.LibrosOrdenadosPorAnio()
      .forEach((libro) => print('${libro.titulo} - ${libro.autor}'));
}

class Libro {
  String titulo;
  String autor;
  int anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion);
}

class Biblioteca {
  List<Libro> libros = [];

  void AgregarLibro(Libro libro) {
    libros.add(libro);
  }

  void EliminarLibro(String titulo) {
    libros.removeWhere((libro) => libro.titulo == titulo);
  }

  List<Libro> buscarPorAutor(String autor) {
    return libros.where((libro) => libro.autor == autor).toList();
  }

  List<Libro> LibrosOrdenadosPorAnio() {
    libros.sort((a, b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return libros;
  }
}
