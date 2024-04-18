import 'package:flutter/material.dart';
import 'package:flutter_mechine/view/cart_screen.dart';

class AddCart extends StatefulWidget {
  String? namee;
  String? pricee;
  String? Details;

  AddCart({super.key, this.namee, this.pricee, this.Details});

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 80,
            ),
            SizedBox(
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text("Name : ${widget.namee!}"),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text("Price : ${widget.pricee!}"),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text("Details : ${widget.Details!}"),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return Cart(
                      namee: widget.namee,
                      pricee: widget.pricee,
                      Details: widget.Details,
                    );
                  }));
                },
                child: Text("add cart"))
          ],
        ),
      ),
    );
  }
}
