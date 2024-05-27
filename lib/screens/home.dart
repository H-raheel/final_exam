import 'package:final_exam/models/shoes.dart';
import 'package:final_exam/providers/categoryprovider.dart';
import 'package:final_exam/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataNotifier = ref.watch(productNotifierProvider);
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.only(right: 8, left: 8, bottom: 16, top: 16),
        child: Column(
          children: [
            searchBar(),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                children: [
                  CategoryChip(text: "Processing"),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryChip(text: "Shipped"),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryChip(text: "Finished"),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryChip(text: "Returns"),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryChip(text: "Cancelled"),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder<List<Product>>(
                stream:
                    ref.watch(productNotifierProvider.notifier).productsList,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No products available'));
                  } else {
                    final products = snapshot.data!;
                    return ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return ListTile(
                          leading: Image.network(product.imgUrl),
                          title: Text(product.name),
                          subtitle: Text('${product.size}, ${product.brand}'),
                          trailing: Chip(label: Text(product.category)),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class CategoryChip extends ConsumerWidget {
  final String text;
  CategoryChip({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(productNotifierProvider.notifier).setProductCategory(text);
        ref.read(productNotifierProvider.notifier).post();
      },
      child: Chip(
        backgroundColor: Colors.black,
        label: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
