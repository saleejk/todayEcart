import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Cart extends StatefulWidget {
  String? namee;
  String? pricee;
  String? Details;
  int? length;
  Cart({super.key, this.namee, this.pricee, this.Details});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final String k = "heyy";
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 39, 151),
        ),
        body: k.isNotEmpty
            ? SizedBox(
                child: Center(
                    child: Lottie.asset(
                'assets/Animation - 1707716192244.json',
              )))
            : ListView.separated(
                itemBuilder: (ctx, index) {
                  return ListTile(leading: CircleAvatar(), title: Text("k"));
                },
                separatorBuilder: (ctx, index) {
                  return Divider();
                },
                itemCount: 1));
  }
}
