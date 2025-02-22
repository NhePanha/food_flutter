class Popular {
  int code;
  String name;
  String image;
  String description;
  String categories;
  double price;
  String rating;
  double rate;

  Popular(
      {required this.code,
      required this.name,
      required this.image,
      required this.description,
      required this.categories,
      required this.price,
      required this.rate,
      required this.rating});
}

List popular = [
  Popular(
    code: 1001,
    name: 'Buger',
    image:
        'https://img.pikbest.com/origin/09/22/23/54ZpIkbEsTMGn.png!bw700?fbclid=IwY2xjawImTZJleHRuA2FlbQIxMAABHX-XqSNwDnothvctwCS9E-lGCvpEB6mEBqQbEiSjbfoA5P1GopSmdhJjjQ_aem_dKYq21BCZxiHH5MDJiPR5A',
    description: 'Product 3 description',
    price: 20.99,
    rate: 4.7,
    rating: '4.7/5',
    categories: 'Buger',
  ),
  Popular(
    code: 1002,
    name: 'Cheese Pizza',
    image:
        'https://static.vecteezy.com/system/resources/previews/024/589/314/non_2x/top-view-pizza-with-ai-generated-free-png.png?fbclid=IwY2xjawImTfpleHRuA2FlbQIxMAABHdtWJXhWPWzogpCmt1EXFAPVq0T1fys6E3LZiOoFeBEBoHs_zlD051iKyA_aem_UgVryv2a4NrXiiEK7eyQVw',
    description: 'Product 3 description',
    price: 7.99,
    rate: 4.2,
    rating: '4.7/5',
    categories: 'Pizza',
  ),
];
