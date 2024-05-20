import 'package:e_commerce_flutter/controller/home_controller.dart';
import 'package:e_commerce_flutter/screens/add_product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Footwear Admin",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  "Item $index",
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  "Description $index",
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontWeight: FontWeight.w400),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    // ctrl.testMethod();
                    ctrl.test; 
                  },
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            // set border to white
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(15),
            //   side: const BorderSide(color: Colors.white),
            // ),
            backgroundColor: Colors.white.withOpacity(0.25),
            onPressed: () {
              Get.to(() => const AddProductPage());
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ));
    });
  }
}
