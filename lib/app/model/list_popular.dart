class Popular {
  int code;
  String name;
  String image;
  String description;
  double price;
  String rating;
  double rate;

  Popular({required this.code, required this.name,required this.image, required this.description, required this.price,required this.rate,required this.rating});
}

List popular = [
  Popular(code: 1, name: 'Product 1', image: 'image1.jpg', description: 'Product 1 description', price: 10.99, rate: 4.5, rating: '4.5/5'),
  Popular(code: 2, name: 'Product 2', image: 'image2.jpg', description: 'Product 2 description', price: 15.99, rate: 4.0, rating: '4/5'),
  Popular(code: 3, name: 'Product 3', image: 'image3.jpg', description: 'Product 3 description', price: 20.99, rate: 4.7, rating: '4.7/5'),
  // Add more products as needed...
];
