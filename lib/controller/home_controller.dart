import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_flutter/model/product/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 class HomeController extends GetxController {
  String test = 'Test String';

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;

  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  String category = '';
  String brand = '';
  bool offer = false;

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    productCollection = firestore.collection('products');
    super.onInit();
  }

  addProduct() {
    try {
      DocumentReference doc = productCollection.doc();
      Product product = Product(
        id: doc.id,
        name: nameController.text,
        category: category,
        description: descriptionController.text,
        price: double.parse(priceController.text),
        brand: brand,
        image: imageController.text,
        offer: offer,
      );
      final produtJson = product.toJson();
      doc.set(produtJson);
      Get.snackbar('Success', 'Product added successfully',
          colorText: Colors.green);
    } catch (e) {
      Get.snackbar('Error', e.toString(), colorText: Colors.red);
    }
  }
}
