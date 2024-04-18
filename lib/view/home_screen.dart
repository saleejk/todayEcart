import 'package:flutter/material.dart';
import 'package:flutter_mechine/service/product_services.dart';
import 'package:flutter_mechine/view/addCart.dart';
import 'package:flutter_mechine/view/cart_screen.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List imagee = [
  "assets/vecteezy_headphones-design-3d-rendering-for-product-mockup_17054078.png",
  "assets/vecteezy_isolated-black-t-shirt-white-hanger_8847294.png",
  "assetsvecteezy_sneakers-shoes-clipart-design-illustration_9391651.png"
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product Kart"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 5, 39, 151),
        ),
        body: ValueListenableBuilder(
          valueListenable: productListNotifier,
          builder: (context, product, child) {
            return product.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          child: Center(
                              child: Lottie.asset(
                        'assets/Animation - 1707716192244.json',
                      ))),
                      Text("Add Products")
                    ],
                  )
                : ListView.separated(
                    itemBuilder: (ctx, index) {
                      final data = product[index];
                      return ListTile(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return AddCart(
                              namee: data.name,
                              pricee: data.price,
                              Details: data.details,
                            );
                          }));
                        },
                        leading: CircleAvatar(
                          radius: 100,
                        ),
                        title: Column(
                          children: [
                            Text(data.name),
                            Text(data.price),
                            Text(data.details)
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (ctx, index) {
                      return Divider();
                    },
                    itemCount: product.length);
          },
        ));
  }
}
