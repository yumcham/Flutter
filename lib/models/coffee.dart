class Coffee {
  final String id;
  final String title;
  final String price;
  final String imageURL1;
  final String imageURL2;

  Coffee({
    required this.id,
    required this.title,
    required this.price,
    required this.imageURL1,
    required this.imageURL2,
  });
}

List<Coffee> coffees = [
  Coffee(
    id: '01',
    title: '(1호점) 신촌커피',
    price: '6,100',
    imageURL1: 'assets/images/coffee01.jpg',
    imageURL2: 'assets/images/coffee01_ice.jpg',
  ),
  Coffee(
    id: '02',
    title: '아메리카노',
    price: '4,500',
    imageURL1: 'assets/images/coffee02.jpg',
    imageURL2: 'assets/images/coffee02_ice.jpg',
  ),
  Coffee(
    id: '03',
    title: '카페라떼',
    price: '5,000',
    imageURL1: 'assets/images/coffee03.jpg',
    imageURL2: 'assets/images/coffee03_ice.jpg',
  ),
  Coffee(
    id: '04',
    title: '바닐라카페라떼',
    price: '5,500',
    imageURL1: 'assets/images/coffee04.jpg',
    imageURL2: 'assets/images/coffee04_ice.jpg',
  ),
];
