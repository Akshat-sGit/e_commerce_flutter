import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/dropdown_btn.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            'Add Product',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Add New Product Details",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: const Text("Product Name"),
                    hintText: "Enter Your Product Name",
                    hintStyle: GoogleFonts.poppins(
                      color: const Color.fromARGB(142, 255, 255, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: const Text("Product Description"),
                    hintText: "Enter Your Product Description",
                    hintStyle: GoogleFonts.poppins(
                      color: const Color.fromARGB(142, 255, 255, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: const Text("Image URL"),
                    hintText: "Enter Image URL",
                    hintStyle: GoogleFonts.poppins(
                      color: const Color.fromARGB(142, 255, 255, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: const Text("Price"),
                    hintText: "Enter Product Price",
                    hintStyle: GoogleFonts.poppins(
                      color: const Color.fromARGB(142, 255, 255, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(child: DropDown(dropdownItem: "Category")),
                    Flexible(child: DropDown(dropdownItem: "Size")),
                  ],
                ),
                const SizedBox(height: 20),
                Text("Order Product",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 20),
                DropDown(dropdownItem: "Select Item"),
              ],
            ),
          ),
        ));
  }
}
