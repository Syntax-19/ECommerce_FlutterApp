import 'package:flutter/material.dart';
import 'package:prac2/main.dart';
import 'package:prac2/productdetail.dart';

class products extends StatefulWidget {
  final String type;
  const products({super.key,required this.type});

  @override
  State<products> createState() => _productsState();
}



class _productsState extends State<products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE6CCB2),
          centerTitle: true,
            title: Text("products"),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Container(
                  padding: EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                },
              );
            },
          ),
    )

    );
  }
}
