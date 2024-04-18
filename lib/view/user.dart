import 'package:flutter/material.dart';
import 'package:flutter_mechine/view/add_product.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: CircleAvatar(
                radius: 80,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Username : 1234"),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              child: TextButton.icon(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return AddProduct();
                    }));
                  },
                  icon: Icon(Icons.add),
                  label: Text("add Product")),
            )
          ],
        ),
      ),
    );
  }
}
