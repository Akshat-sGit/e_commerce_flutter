import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String test = 'Test String';

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    productCollection = firestore.collection('products');
    super.onInit();
  }

  addProduct() {
    DocumentReference doc = productCollection.doc();
    
  }
}
