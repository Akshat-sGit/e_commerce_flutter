import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:path_provider/path_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            title: Text("Item $index"),
            subtitle: Text("Description $index"),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                print('delete');
              },
            ),
          );
        },
      ),
    );
  }
}
