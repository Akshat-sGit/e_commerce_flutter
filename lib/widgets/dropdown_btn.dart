import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDown extends StatelessWidget {
  final String dropdownItem;
  DropDown({super.key, required this.dropdownItem});

  final List<String> items = ['item1', 'item2', 'item3', 'item4']; // Data list

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        color: Colors.green,
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return CupertinoPicker(
                scrollController: FixedExtentScrollController(
                    initialItem: 0), // Set initial item
                itemExtent: 40, // Height of each item
                onSelectedItemChanged: (int index) {
                  // Handle item selection (consider using a callback or state management)
                  // ignore: avoid_print
                  print(items[index]); // Example access to selected item
                },
                backgroundColor: Colors.transparent,
                children: [
                  for (String item in items)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                ],
              );
            },
          );
        },
        child: Text(
          dropdownItem,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}