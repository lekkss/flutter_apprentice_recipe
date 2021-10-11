class Recepie {
  String label;
  String imgUrl;
  int serving;
  List<Ingredients> ingredients;

  Recepie(
    this.label,
    this.imgUrl,
    this.serving,
    this.ingredients,
  );

  static List<Recepie> samples = [
    Recepie(
      'Avocado',
      'assets/images/avocado.png',
      4,
      [
        Ingredients(1, 'box', 'spaghetti'),
        Ingredients(4, '', 'frozen meat bals'),
        Ingredients(0.35, 'jar', 'sauce'),
      ],
    ),
    Recepie(
      'Beef Soup',
      'assets/images/beef-soup.png',
      4,
      [Ingredients(1, 'can', 'tomatoes')],
    ),
    Recepie(
      'Burger',
      'assets/images/burger.png',
      4,
      [
        Ingredients(2, 'slices', 'cheese'),
        Ingredients(1, 'cup', 'butter'),
      ],
    ),
    Recepie(
      'Spice',
      'assets/images/spice.png',
      4,
      [
        Ingredients(1, 'box', 'spaghetti'),
        Ingredients(5, 'bulb', 'pepper'),
        Ingredients(0.5, 'cube', 'seasoning'),
      ],
    ),
  ];
}

class Ingredients {
  double quantity;
  String measure;
  String name;

  Ingredients(
    this.quantity,
    this.measure,
    this.name,
  );
}
