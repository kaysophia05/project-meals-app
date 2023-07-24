//Main > CategoryScreen > (Data) = Dummy_categories > .Map > CategoryItem
//Datos de cada cadegory a ser criada
import 'package:flutter/material.dart';
import '../models/cadegory.dart';
import '../models/meal.dart';

// ignore: constant_identifier_names
const DUMMY_CATEGORIRES = [
  Category(
    id: 'c1',
    title: 'Italiana',
    color: Colors.pink,
  ),
  Category(
    id: 'c2',
    title: 'Fácil e Rapido',
    color: Colors.black,
  ),
  Category(
    id: 'c3',
    title: 'Hanburgers',
    color: Colors.blue,
  ),
  Category(
    id: 'c4',
    title: 'Alemã',
    color: Colors.purple,
  ),
  Category(
    id: 'c5',
    title: 'Leve e Saudável',
    color: Colors.green,
  ),
  Category(
    id: 'c6',
    title: 'Exótica',
    color: Colors.orange,
  ),
  Category(
    id: 'c7',
    title: 'Café da Manhã',
    color: Colors.brown,
  ),
  Category(
    id: 'c8',
    title: 'Asiática',
    color: Colors.cyan,
  ),
  Category(
    id: 'c9',
    title: 'Francesa',
    color: Colors.amber,
  ),
  Category(
    id: 'c10',
    title: 'Verão',
    color: Colors.red,
  ),
];

//============================ DUMMYMEALS=========================================

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Esparguete com Molho de Tomate',
    complexity: Complexty.simple,
    cost: Cost.cheap,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomates',
      '1 Colher de Azeite',
      '1 Cebola',
      '250g de espaguete',
      'Especiarias',
      'Queijo (opcional)'
    ],
    steps: [
      'Corte os tomates e a cebola em pedaços pequenos.',
      'Ferva um pouco de água - adicione sal quando ferver.',
      'Coloque o espaguete na água fervente - eles devem ser feitos em cerca de 10 a 12 minutos.',
      'Entretanto, aqueça um pouco de azeite e acrescente a cebola cortada.',
      'Depois de 2 minutos, adicione os pedaços de tomate, sal, pimenta e seus outros temperos.',
      'O molho estará pronto assim que o espaguete estiver pronto.',
      'Sinta-se livre para adicionar um pouco de queijo em cima do prato acabado.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Toast Hawaii',
    cost: Cost.cheap,
    complexity: Complexty.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Fatia de Pão Branco',
      '1 fatia de presunto',
      '1 fatia de abacaxi',
      '1-2 Fatias de Queijo',
      'Manteiga'
    ],
    steps: [
      'Passe manteiga em um lado do pão branco',
      'Coloque o presunto, o abacaxi e o queijo no pão branco',
      'Asse as tostas durante cerca de 10 minutos no forno a 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c2', 'c3'],
    title: 'Hambúrguer Clássico',
    cost: Cost.fair,
    complexity: Complexty.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Gado Hack',
      '1 Tomate',
      '1 Pepino',
      '1 Cebola',
      'Ketchup',
      '2 Pães de Hambúrguer'
    ],
    steps: [
      'Forma 2 rissóis',
      'Frite os rissóis por c. 4 minutos de cada lado',
      'Frite rapidamente os pãezinhos por c. 1 minuto de cada lado',
      'Bruch pãezinhos com ketchup',
      'Servir hambúrguer com tomate, pepino e cebola'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c4'],
    title: 'Wiener Schnitzel',
    cost: Cost.expensive,
    complexity: Complexty.medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Costeletas de Vitela',
      '4 ovos',
      '200g de pão ralado',
      '100g Farinha',
      '300ml Manteiga',
      '100g Óleo Vegetal',
      'Sal',
      'Fatias de Limão'
    ],
    steps: [
      'Amacie a vitela em cerca de 2 a 4 mm e salgue dos dois lados.',
      'Em um prato raso, mexa os ovos brevemente com um garfo.',
      'Passe levemente as costeletas na farinha, depois mergulhe-as no ovo e, por fim, passe-as na farinha de rosca.',
      'Aqueça a manteiga e o azeite em uma panela grande (deixe a gordura ficar bem quente) e frite os schnitzels até dourar dos dois lados.',
      'Certifique-se de mexer a frigideira regularmente para que os schnitzels fiquem envoltos em óleo e a farofa fique fofa.',
      'Retire e escorra em papel de cozinha. Frite a salsinha no azeite restante e escorra.',
      'Coloque os schnitzels em um prato aquecido e sirva decorado com salsinha e rodelas de limão.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada com Salmão Fumado',
    cost: Cost.expensive,
    complexity: Complexty.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Rúcula',
      'Alface-de-cordeiro',
      'Salsinha',
      'Funcho',
      '200g Salmão Defumado',
      'Mostarda',
      'Vinagre balsâmico',
      'Azeite',
      'Sal e pimenta'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c6', 'c10'],
    title: 'Delicious Orange Mousse',
    cost: Cost.cheap,
    complexity: Complexty.difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c7'],
    title: 'Pancakes',
    cost: Cost.cheap,
    complexity: Complexty.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c8'],
    title: 'Creamy Indian Chicken Curry',
    cost: Cost.fair,
    complexity: Complexty.medium,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c9'],
    title: 'Chocolate Souffle',
    cost: Cost.cheap,
    complexity: Complexty.difficult,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c2', 'c5', 'c10'],
    title: 'Asparagus Salad with Cherry Tomatoes',
    cost: Cost.expensive,
    complexity: Complexty.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
