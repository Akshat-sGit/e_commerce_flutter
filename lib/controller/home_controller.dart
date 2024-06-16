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

  List<Product> products = [];

  @override
  Future<void> onInit() async {
    productCollection = firestore.collection('products');
    await fetchProducts();    
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
      setValueDefault();
    } catch (e) {
      Get.snackbar('Error', e.toString(), colorText: Colors.red);
    }
  }

  fetchProducts() async {
    try {
      QuerySnapshot productSnapshot = await productCollection.get();
      final List<Product> retrievedProducts = productSnapshot.docs
          .map((doc) => Product.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      products.clear();
      products.assignAll(retrievedProducts);
      Get.snackbar('Succesful', 'Products fetched successfully',
          colorText: Colors.green);
    } catch (e) {
      Get.snackbar('Failed', e.toString(), colorText: Colors.red);
    }finally{
      update();
    }
  }

  deleteProduct(String id) async {
    try {
      await productCollection.doc(id).delete();
      fetchProducts();  
      Get.snackbar('Success', 'Product deleted successfully',
          colorText: Colors.green);
    } catch (e) {
      Get.snackbar('Failed', e.toString(), colorText: Colors.red);
    }
  }

  setValueDefault() {
    nameController.clear();
    descriptionController.clear();
    imageController.clear();
    priceController.clear();
    category = 'general';
    brand = 'Not branded';
    offer = false;
    update();
  }
}
