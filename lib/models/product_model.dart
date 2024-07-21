class Product {
  final String title;
  final double price;
  final String image;

  Product({
    required this.title, 
    required this.price,
    required this.image,
    }
  );
}

final List<Product> products = [
  Product(title: "",price: 50.00,image: "assets/images/sign_image.png"),
  Product(title: "",price: 30.00,image: "assets/images/ch.png"),
  Product(title: "",price: 29.00,image: "assets/images/ch1.png"),
  Product(title: "",price: 60.00,image: "assets/images/ch2.png"),
  Product(title: "",price: 55.00,image: "assets/images/ch3.png"),
  Product(title: "",price: 40.00,image: "assets/images/ch4.png"),
];
