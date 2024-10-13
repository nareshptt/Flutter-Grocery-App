import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final double price;
  final double discount;

  ProductCard({
    required this.image,
    required this.name,
    required this.price,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image with error handling
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Image.network(
                  'https://via.placeholder.com/150',
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Name
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                // Product Price and Discount
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$$price',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 16,
                      ),
                    ),
                    if (discount > 0)
                      Text(
                        '$discount% OFF',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductGridPage extends StatelessWidget {
  final List<Map<String, dynamic>> products = <Map<String, dynamic>>[
    {
      "image":
          "https://cdn.pixabay.com/photo/2017/08/10/01/24/tomatoes-2614069_960_720.jpg",
      "name": "Fresh Tomatoes",
      "price": 43.99,
      "discount": 12.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/10/27/22/51/peppers-1776744_960_720.jpg",
      "name": "Bell Peppers",
      "price": 27.99,
      "discount": 8.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2015/03/26/09/54/fruit-690714_960_720.jpg",
      "name": "Mixed Fruits",
      "price": 51.99,
      "discount": 18.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2017/03/10/12/24/orange-2138154_960_720.jpg",
      "name": "Oranges",
      "price": 35.99,
      "discount": 10.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/10/30/05/31/sweet-potato-1789619_960_720.jpg",
      "name": "Sweet Potatoes",
      "price": 22.99,
      "discount": 6.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2017/08/10/01/37/grapes-2614065_960_720.jpg",
      "name": "Grapes",
      "price": 48.99,
      "discount": 14.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/08/09/21/59/spices-1584132_960_720.jpg",
      "name": "Mixed Spices",
      "price": 31.99,
      "discount": 9.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/06/18/22/24/carrots-1465733_960_720.jpg",
      "name": "Carrots",
      "price": 55.99,
      "discount": 19.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2017/01/27/15/58/potatoes-2019919_960_720.jpg",
      "name": "Potatoes",
      "price": 39.99,
      "discount": 11.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/11/18/16/40/ginger-1838110_960_720.jpg",
      "name": "Ginger",
      "price": 25.99,
      "discount": 7.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2017/06/15/21/43/cucumber-2404132_960_720.jpg",
      "name": "Cucumbers",
      "price": 42.99,
      "discount": 13.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/11/20/08/03/pumpkin-1840619_960_720.jpg",
      "name": "Pumpkin",
      "price": 29.99,
      "discount": 8.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2017/01/25/21/41/apple-2004422_960_720.jpg",
      "name": "Apples",
      "price": 53.99,
      "discount": 17.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2015/12/09/20/27/broccoli-1085338_960_720.jpg",
      "name": "Broccoli",
      "price": 36.99,
      "discount": 10.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2017/03/10/14/05/fruit-2137968_960_720.jpg",
      "name": "Mixed Berries",
      "price": 23.99,
      "discount": 6.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2018/03/16/20/24/spinach-3234649_960_720.jpg",
      "name": "Spinach",
      "price": 49.99,
      "discount": 15.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/09/21/18/20/tomato-1687545_960_720.jpg",
      "name": "Cherry Tomatoes",
      "price": 32.99,
      "discount": 9.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/10/27/22/51/peppers-1776744_960_720.jpg",
      "name": "Green Peppers",
      "price": 56.99,
      "discount": 19.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/11/18/16/40/ginger-1838110_960_720.jpg",
      "name": "Garlic",
      "price": 40.99,
      "discount": 12.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2017/03/10/14/05/fruit-2137968_960_720.jpg",
      "name": "Avocados",
      "price": 26.99,
      "discount": 7.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2017/01/25/21/41/apple-2004422_960_720.jpg",
      "name": "Pineapple",
      "price": 44.99,
      "discount": 14.0
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2015/12/09/20/27/broccoli-1085338_960_720.jpg",
      "name": "Lettuce",
      "price": 30.99,
      "discount": 9.0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.7,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductCard(
              image: product["image"],
              name: product["name"],
              price: product["price"],
              discount: product["discount"],
            );
          },
        ),
      ),
    );
  }
}
