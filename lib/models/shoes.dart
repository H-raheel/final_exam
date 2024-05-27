class Product {
  final String name;
  final int idOrder;
  final int totalItems;
  final String size;
  final String brand;
  final String category;
  final String imgUrl;

  Product(
      {required this.name,
      required this.idOrder,
      required this.totalItems,
      required this.size,
      required this.brand,
      required this.category,
      required this.imgUrl});
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'idOrder': idOrder,
      'totalItems': totalItems,
      'size': size,
      'brand': brand,
      'category': category,
      'imgUrl': imgUrl,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'],
      idOrder: map['idOrder'],
      totalItems: map['totalItems'],
      size: map['size'],
      brand: map['brand'],
      category: map['category'],
      imgUrl: map['imgUrl'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'idOrder': idOrder,
        'totalItems': totalItems,
        'size': size,
        'brand': brand,
        'category': category,
        'imgUrl': imgUrl,
      };

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      idOrder: json['idOrder'],
      totalItems: json['totalItems'],
      size: json['size'],
      brand: json['brand'],
      category: json['category'],
      imgUrl: json['imgUrl'],
    );
  }
}

List<Product> productList = [
  Product(
      name: "Shoe 1",
      idOrder: 1793333333,
      totalItems: 10,
      size: "43",
      brand: "Brand 1",
      category: "processing",
      imgUrl:
          "https://th.bing.com/th/id/R.efc9d81ebd53ed8bfe0315362d6887ed?rik=HGxFxeVvP0BScQ&riu=http%3a%2f%2fwww.tennisnuts.com%2fimages%2fproduct%2ffull%2fNIKE-FREE-50-642198_406_A_PREM.jpg&ehk=tucvPac5jtnLAnXnFXgPajBJoAdraWQ%2fVg0cDe35EZk%3d&risl=&pid=ImgRaw&r=0"),
  Product(
      name: "Product 2",
      idOrder: 236666666,
      totalItems: 5,
      size: "35",
      brand: "Brand 2",
      category: "shipped",
      imgUrl:
          "https://th.bing.com/th/id/OIP.zneBN0U7ThyW9F6B5_jXYwHaHa?w=600&h=600&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 3",
      idOrder: 33666666,
      totalItems: 8,
      size: "32",
      brand: "Brand 3",
      category: "returns",
      imgUrl:
          "https://th.bing.com/th/id/OIP.zneBN0U7ThyW9F6B5_jXYwHaHa?w=600&h=600&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 4",
      idOrder: 422222,
      totalItems: 3,
      size: "38",
      brand: "Brand 4",
      category: "cancelled",
      imgUrl:
          "https://th.bing.com/th/id/OIP.x8aVfZ655JaYNzHXi4uY8wHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 5",
      idOrder: 533333333,
      totalItems: 12,
      size: "42",
      brand: "Brand 5",
      category: "finished",
      imgUrl:
          "https://th.bing.com/th/id/OIP.x8aVfZ655JaYNzHXi4uY8wHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain"),
  Product(
      name: "Shoe 1",
      idOrder: 12793333333,
      totalItems: 10,
      size: "43",
      brand: "Brand 1",
      category: "processing",
      imgUrl:
          "https://th.bing.com/th/id/R.efc9d81ebd53ed8bfe0315362d6887ed?rik=HGxFxeVvP0BScQ&riu=http%3a%2f%2fwww.tennisnuts.com%2fimages%2fproduct%2ffull%2fNIKE-FREE-50-642198_406_A_PREM.jpg&ehk=tucvPac5jtnLAnXnFXgPajBJoAdraWQ%2fVg0cDe35EZk%3d&risl=&pid=ImgRaw&r=0"),
  Product(
      name: "Product 2",
      idOrder: 2346666666,
      totalItems: 5,
      size: "35",
      brand: "Brand 2",
      category: "shipped",
      imgUrl:
          "https://th.bing.com/th/id/OIP.zneBN0U7ThyW9F6B5_jXYwHaHa?w=600&h=600&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 3",
      idOrder: 36893666666,
      totalItems: 8,
      size: "32",
      brand: "Brand 3",
      category: "returns",
      imgUrl:
          "https://th.bing.com/th/id/OIP.zneBN0U7ThyW9F6B5_jXYwHaHa?w=600&h=600&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 4",
      idOrder: 433222222,
      totalItems: 3,
      size: "38",
      brand: "Brand 4",
      category: "cancelled",
      imgUrl:
          "https://th.bing.com/th/id/OIP.x8aVfZ655JaYNzHXi4uY8wHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 5",
      idOrder: 5133333333,
      totalItems: 12,
      size: "42",
      brand: "Brand 5",
      category: "finished",
      imgUrl:
          "https://th.bing.com/th/id/OIP.x8aVfZ655JaYNzHXi4uY8wHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain"),
  Product(
      name: "Shoe 1",
      idOrder: 17333343,
      totalItems: 10,
      size: "43",
      brand: "Brand 1",
      category: "processing",
      imgUrl:
          "https://th.bing.com/th/id/R.efc9d81ebd53ed8bfe0315362d6887ed?rik=HGxFxeVvP0BScQ&riu=http%3a%2f%2fwww.tennisnuts.com%2fimages%2fproduct%2ffull%2fNIKE-FREE-50-642198_406_A_PREM.jpg&ehk=tucvPac5jtnLAnXnFXgPajBJoAdraWQ%2fVg0cDe35EZk%3d&risl=&pid=ImgRaw&r=0"),
  Product(
      name: "Product 2",
      idOrder: 236663226,
      totalItems: 5,
      size: "35",
      brand: "Brand 2",
      category: "shipped",
      imgUrl:
          "https://th.bing.com/th/id/OIP.zneBN0U7ThyW9F6B5_jXYwHaHa?w=600&h=600&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 3",
      idOrder: 33666658966,
      totalItems: 8,
      size: "32",
      brand: "Brand 3",
      category: "returns",
      imgUrl:
          "https://th.bing.com/th/id/OIP.zneBN0U7ThyW9F6B5_jXYwHaHa?w=600&h=600&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 4",
      idOrder: 42229022,
      totalItems: 3,
      size: "38",
      brand: "Brand 4",
      category: "cancelled",
      imgUrl:
          "https://th.bing.com/th/id/OIP.x8aVfZ655JaYNzHXi4uY8wHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 5",
      idOrder: 530983333,
      totalItems: 12,
      size: "42",
      brand: "Brand 5",
      category: "finished",
      imgUrl:
          "https://th.bing.com/th/id/OIP.x8aVfZ655JaYNzHXi4uY8wHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain"),
  Product(
      name: "Shoe 1",
      idOrder: 179367333,
      totalItems: 10,
      size: "43",
      brand: "Brand 1",
      category: "processing",
      imgUrl:
          "https://th.bing.com/th/id/R.efc9d81ebd53ed8bfe0315362d6887ed?rik=HGxFxeVvP0BScQ&riu=http%3a%2f%2fwww.tennisnuts.com%2fimages%2fproduct%2ffull%2fNIKE-FREE-50-642198_406_A_PREM.jpg&ehk=tucvPac5jtnLAnXnFXgPajBJoAdraWQ%2fVg0cDe35EZk%3d&risl=&pid=ImgRaw&r=0"),
  Product(
      name: "Product 2",
      idOrder: 236668766,
      totalItems: 5,
      size: "35",
      brand: "Brand 2",
      category: "shipped",
      imgUrl:
          "https://th.bing.com/th/id/OIP.zneBN0U7ThyW9F6B5_jXYwHaHa?w=600&h=600&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 3",
      idOrder: 3367623666,
      totalItems: 8,
      size: "32",
      brand: "Brand 3",
      category: "returns",
      imgUrl:
          "https://th.bing.com/th/id/OIP.zneBN0U7ThyW9F6B5_jXYwHaHa?w=600&h=600&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 4",
      idOrder: 422098222,
      totalItems: 3,
      size: "38",
      brand: "Brand 4",
      category: "cancelled",
      imgUrl:
          "https://th.bing.com/th/id/OIP.x8aVfZ655JaYNzHXi4uY8wHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 5",
      idOrder: 5333098733,
      totalItems: 12,
      size: "42",
      brand: "Brand 5",
      category: "finished",
      imgUrl:
          "https://th.bing.com/th/id/OIP.x8aVfZ655JaYNzHXi4uY8wHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain"),
  Product(
      name: "Shoe 1",
      idOrder: 1111333333,
      totalItems: 10,
      size: "43",
      brand: "Brand 1",
      category: "processing",
      imgUrl:
          "https://th.bing.com/th/id/R.efc9d81ebd53ed8bfe0315362d6887ed?rik=HGxFxeVvP0BScQ&riu=http%3a%2f%2fwww.tennisnuts.com%2fimages%2fproduct%2ffull%2fNIKE-FREE-50-642198_406_A_PREM.jpg&ehk=tucvPac5jtnLAnXnFXgPajBJoAdraWQ%2fVg0cDe35EZk%3d&risl=&pid=ImgRaw&r=0"),
  Product(
      name: "Product 2",
      idOrder: 236622266,
      totalItems: 5,
      size: "35",
      brand: "Brand 2",
      category: "shipped",
      imgUrl:
          "https://th.bing.com/th/id/OIP.zneBN0U7ThyW9F6B5_jXYwHaHa?w=600&h=600&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 3",
      idOrder: 3363216,
      totalItems: 8,
      size: "32",
      brand: "Brand 3",
      category: "returns",
      imgUrl:
          "https://th.bing.com/th/id/OIP.zneBN0U7ThyW9F6B5_jXYwHaHa?w=600&h=600&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 4",
      idOrder: 42234422,
      totalItems: 3,
      size: "38",
      brand: "Brand 4",
      category: "cancelled",
      imgUrl:
          "https://th.bing.com/th/id/OIP.x8aVfZ655JaYNzHXi4uY8wHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain"),
  Product(
      name: "Product 5",
      idOrder: 53389871613,
      totalItems: 12,
      size: "42",
      brand: "Brand 5",
      category: "finished",
      imgUrl:
          "https://th.bing.com/th/id/OIP.x8aVfZ655JaYNzHXi4uY8wHaHa?w=2000&h=2000&rs=1&pid=ImgDetMain"),
];
