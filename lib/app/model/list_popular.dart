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
      code: 3,
      name: 'Product 3',
      image:
          'https://tb-static.uber.com/prod/image-proc/processed_images/85e68e26fe9e64ccaf4645ff8901577f/7f4ae9ca0446cbc23e71d8d395a98428.jpeg',
      description: 'Product 3 description',
      price: 20.99,
      rate: 4.7,
      rating: '4.7/5',
      categories: ''),
  Popular(
      code: 3,
      name: 'Product 3',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPLreb-_MHqHrvzo2reFovg4G0S3csvvgIpK_Qx7z_I39vAmPqZP7psCwNPhVXA6Dslz4&usqp=CAU',
      description: 'Product 3 description',
      price: 20.99,
      rate: 4.7,
      rating: '4.7/5',
      categories: ''),
  Popular(
      code: 3,
      name: 'Product 3',
      image:
          'https://mcdonalds.com.au/sites/mcdonalds.com.au/files/styles/news_header_image/public/news-images/New%20Macca%27s%20summer%20menu_2.jpg?itok=At4R8Exw',
      description: 'Product 3 description',
      price: 20.99,
      rate: 4.7,
      rating: '4.7/5',
      categories: ''),
  Popular(
      code: 1,
      name: 'Product 1',
      image: 'image1.jpg',
      description: 'Product 1 description',
      price: 10.99,
      rate: 4.5,
      rating: '4.5/5',
      categories: ''),
  Popular(
      code: 2,
      name: 'Product 2',
      image: 'image2.jpg',
      description: 'Product 2 description',
      price: 15.99,
      rate: 4.0,
      rating: '4/5',
      categories: ''),
  Popular(
      code: 3,
      name: 'Product 3',
      image: 'image3.jpg',
      description: 'Product 3 description',
      price: 20.99,
      rate: 4.7,
      rating: '4.7/5',
      categories: 'Nodles'),
  // Add more products as needed...
];
