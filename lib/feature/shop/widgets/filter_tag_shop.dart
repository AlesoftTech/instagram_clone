import 'package:flutter/material.dart';

class FilterTagShop extends StatelessWidget {
  
  final String label; 
  
  const FilterTagShop({
    Key? key, 
    required this.label
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child:  Center(
            child: Text(
              label,
              style: const TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
