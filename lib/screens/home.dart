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
            switch (ref.read(productNotifierProvider.notifier).productsList) {
              AsyncData(:final value) => Text(value.toString()),
              AsyncLoading() => CircularProgressIndicator(),
              AsyncError(:final error) => Text(error.toString()),
              _ => Center(
                  child: Text("other"),
                )
            },
            ListView.builder(itemBuilder: (context, index) {
              return Container(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          height: 200,
                          width: 200,
                          child: Image.network(
                              "https://www.bing.com/images/search?view=detailV2&ccid=x8aVfZ65&id=B41E6EAE8651395FC732B4D24809C5F7CB21A86B&thid=OIP.x8aVfZ655JaYNzHXi4uY8wHaHa&mediaurl=https%3A%2F%2Fwww.tennisnuts.com%2Fimages%2Fproduct%2Ffull%2FNIKE-FREE-50-642198_009_A_PREM.jpg&exph=2000&expw=2000&q=shoes+image&simid=607997276298878617&form=IRPRST&ck=DDA47C4EFE2F457225C43F2410555857&selectedindex=24&itb=0&ajaxhist=0&ajaxserp=0&pivotparams=insightsToken%3Dccid_zneBN0U7*cp_BCAAAF38EBDEDE77DFCBB209F4D31633*mid_7CDDF059A2C5C56C9C23CCF4C1210B11D2CE0191*simid_608050456531646526*thid_OIP.zneBN0U7ThyW9F6B5!_jXYwHaHa&vt=0&sim=11&iss=VSI&cdnurl=https%3A%2F%2Fth.bing.com%2Fth%2Fid%2FR.c7c6957d9eb9e496983731d78b8b98f3%3Frik%3Da6ghy%252ffFCUjStA%26pid%3DImgRaw%26r%3D0&ajaxhist=0&ajaxserp=0")),
                      Column(
                        children: [
                          Text("name"),
                          Text("size,brand"),
                          Text("price")
                        ],
                      ),
                      Chip(label: Text("finished")),
                    ],
                  )
                ],
              ));
            })
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
