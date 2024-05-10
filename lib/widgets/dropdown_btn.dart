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
        borderRadius: BorderRadius.circular(20), // Set the border radius
        child: CupertinoButton(
          color: Colors.green,
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return CupertinoPicker(
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
                );
              },
            );
          },
          child: Text(
            dropdownItem,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

