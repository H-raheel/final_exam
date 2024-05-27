import 'package:final_exam/models/shoes.dart';
import 'package:final_exam/services/database.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categoryprovider.g.dart';

@riverpod
class ProductNotifier extends _$ProductNotifier {
  Database dbServices = Database();
  Stream<List<Product>>? productsList;
  String category = "";
  String build() {
    return "";
  }

  void setProductCategory(String category) {
    category = category;
    productsList = post();
  }

  Stream<List<Product>> post() {
    Stream<List<Product>> prodsList = Database().getProductsStream(category);
    productsList = prodsList;
    print(prodsList);
    return prodsList;
  }
}
