import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDown extends StatelessWidget {
  final String dropdownItem;
  final List<String> items;
  const DropDown({super.key, required this.dropdownItem, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            elevation: 5,
            padding: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        dropdownItem,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    CupertinoPicker(
                      scrollController:
                          FixedExtentScrollController(initialItem: 0),
                      itemExtent: 40,
                      onSelectedItemChanged: (int index) {
                        print(items[index]);
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
                    ),
                  ],
                );
              },
            );
          },
          child: SizedBox(
            width: double.infinity,
            child: Text(
              dropdownItem,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.clip,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
