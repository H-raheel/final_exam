import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:final_exam/models/shoes.dart';


class Database {
  // final FirebaseFirestore db = FirebaseFirestore.instance;
  final CollectionReference users =
      FirebaseFirestore.instance.collection('Users');
  final CollectionReference posts =
      FirebaseFirestore.instance.collection('Posts');
  final CollectionReference products =
      FirebaseFirestore.instance.collection('Products');

  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Future<void> sendProductsToFirebase(List<Product> products) async {
  //   print("heree");
  //   WriteBatch batch = _firestore.batch();
  //   print("heree");
  //   for (Product product in products) {
  //     DocumentReference docRef =
  //         _firestore.collection('Products').doc(product.idOrder.toString());
  //     batch.set(docRef, product.toJson());
  //   }

  //   try {
  //     await batch.commit();
  //     print("All products have been successfully added to Firebase.");
  //   } catch (e) {
  //     print("Failed to add products to Firebase: $e");
  //   }
  // }



  


  


  Stream<List<Product>> getProductsStream(String category) {
    return products.snapshots().map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        Map<String, dynamic> productData = doc.data() as Map<String, dynamic>;
        return Product.fromJson({...productData});
      }).where((product) {
        if (category.isEmpty) {
          return true; // If category is empty, return all products
        } else {
          return product.category?.toLowerCase() == category.toLowerCase();
        }
      }).toList();
    });
  }
}
