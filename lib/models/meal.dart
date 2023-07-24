//Enum: Contrução da linguagem que permite definir um tipo de dado que representa um conjunto fixo de valores constantes.
//Os Enum sao usados para representar os niveis de complexidade e custo de uma refeição específica;

enum Complexty {
  simple,
  medium,
  difficult,
}

enum Cost {
  cheap,
  fair,
  expensive,
}

//Clase 'Meal' = Receita e sua Propiedades
class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexty complexity;
  final Cost cost;

// const permite que você crie objetos Meal com valores específicos para cada propriedade.
  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.complexity,
    required this.cost,
  });

  String get complextyText {
    switch (complexity) {
      case Complexty.simple:
        return 'Simples';
      case Complexty.medium:
        return 'Normal';
      case Complexty.difficult:
        return 'Difícil';
      default:
        return 'Deconhecida';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.cheap:
        return 'Barato';
      case Cost.fair:
        return 'Justo';
      case Cost.expensive:
        return 'Caro';
      default:
        return 'Deconhecido';
    }
  }
}
