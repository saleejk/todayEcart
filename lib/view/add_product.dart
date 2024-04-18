import 'package:flutter/material.dart';
import 'package:flutter_mechine/model/product_model.dart';
import 'package:flutter_mechine/service/product_services.dart';
import 'package:flutter_mechine/widgets/bottom_nav.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 20, 107),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Add Products",
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                  label: Text("Product name"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              controller: priceController,
              decoration: InputDecoration(
                  label: Text("Product price"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              controller: detailsController,
              decoration: InputDecoration(
                  label: Text("Product Details"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextButton(
                onPressed: () {
                  addProd();
                },
                child: Text("submit")),
          )
        ],
      ),
    );
  }

  void addProd() {
    final name = nameController.text;
    final price = priceController.text;
    final details = detailsController.text;
    var a = ProductModel(name: name, price: price, details: details);
    if (name.isNotEmpty) {
      addProduct(a);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => BottomNav()));
    } else {
      return;
    }
  }
}
