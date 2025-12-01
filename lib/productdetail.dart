import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac2/main.dart';

class productdetail extends StatefulWidget {
  final String name, image,type;
  const productdetail({super.key, required this.image, required this.name,required this.type});

  @override
  State<productdetail> createState() => _productdetailState();
}

class _productdetailState extends State<productdetail> {
  bool isFavourite = false;
  String selectedSize = "A";
  List<String> img = [
    "assets/images/F1jacket1.jpg",
    "assets/images/FJT307_1270MF_WLR.jpg",
    "assets/images/jacket4.jpg",
    "assets/images/71nEE293zsL.jpg",
  ];

  List<String> sizes = ["S", "M", "L", "XL", "XXL"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE6CCB2),
          elevation: 0,
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
          centerTitle: true,
          title: Text(
            "Product Details",
            style: TextStyle(
              fontFamily: 'Avenis',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(8),
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(
                  isFavourite ? Icons.favorite : Icons.favorite_border,
                ),
                color: isFavourite ? Colors.red : Colors.black,

                onPressed: () {
                  setState(() => isFavourite = !isFavourite);
                },
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            //    mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0xFFE6CCB2)),
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Image.asset(widget.image),

                    Positioned(
                      bottom: 50,
                      left: 50,
                      right: 50,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 250,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE6CCB2),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          scrollDirection: Axis.horizontal,
                          itemCount: img.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: EdgeInsets.only(left: 5, right: 5),
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(10),
                                child: Image.asset(img[index]),
                              ),
                            );
                          },
                        ),

                        // child: Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     ClipRRect(
                        //       borderRadius: BorderRadius.circular(10),
                        //       child: Image.asset('assets/images/F1jacket.png'),
                        //     ),
                        //
                        //     ClipRRect(
                        //       borderRadius: BorderRadius.circular(10),
                        //       child: Image.asset(
                        //         'assets/images/71nEE293zsL.jpg',
                        //       ),
                        //     ),
                        //
                        //     ClipRRect(
                        //       borderRadius: BorderRadius.circular(10),
                        //       child: Image.asset(
                        //         'assets/images/FJT307_1270MF_WLR.jpg',
                        //       ),
                        //     ),
                        //
                        //     ClipRRect(
                        //       borderRadius: BorderRadius.circular(10),
                        //       child: Image.asset('assets/images/jacket4.jpg'),
                        //     ),
                        //   ],
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 5,
                  bottom: 5,
                ),
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Men's Fashion",
                          style: TextStyle(
                            fontFamily: 'Avenis',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFcb997e),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: CupertinoColors.systemYellow,
                              size: 30,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontFamily: 'Avenis',
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // SizedBox(height: 5),
                    Text(
                      widget.name,
                      //"Ferrari F1 Jacket",
                      style: TextStyle(
                        //fontFamily: 'Avenis',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    //SizedBox(height: 5),
                    Text(
                      "Product Details",
                      style: TextStyle(
                        fontFamily: 'Avenis',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    //SizedBox(height: 3),
                    Text(
                      "Unleash your inner racer with the official Ferrari F1 Jacket. Crafted for comfort, performance, and unmistakable style",
                      style: TextStyle(
                        fontFamily: 'Avenis',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFcb997e),
                      ),
                      softWrap: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 18, right: 15),
                    //decoration: BoxDecoration(color: Color(0xFFE6CCB2)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select Size",
                          style: TextStyle(
                            fontFamily: 'Avenis',
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          height: 50,
                          padding: EdgeInsets.all(1),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: sizes.length,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedSize = sizes[index];
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 15,
                                    right: 15,
                                    top: 10,
                                    bottom: 0,
                                  ),
                                  margin: EdgeInsets.only(left: 15, right: 10),
                                  decoration: BoxDecoration(
                                    color: selectedSize == sizes[index]
                                        ? Color(0xFF7F5539)
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    sizes[index],
                                    style: TextStyle(
                                      fontFamily: 'Avenis',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              );
                            }, // end of itemBuilder
                          ),
                        ),

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     GestureDetector(
                        //       onTap: () {
                        //         setState(() {
                        //           selectedSize = "S";
                        //         });
                        //       },
                        //       child: Container(
                        //         padding: EdgeInsets.all(10),
                        //         decoration: BoxDecoration(
                        //           color: selectedSize == "S"
                        //               ? Color(0xFF7F5539)
                        //               : Colors.white,
                        //           borderRadius: BorderRadius.circular(10),
                        //         ),
                        //         child: Text(
                        //           "S",
                        //           style: TextStyle(
                        //             fontFamily: 'Avenis',
                        //             fontSize: 20,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.black,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //
                        //     GestureDetector(
                        //       onTap: () {
                        //         setState(() {
                        //           selectedSize = "M";
                        //         });
                        //       },
                        //       child: Container(
                        //         padding: EdgeInsets.all(10),
                        //         decoration: BoxDecoration(
                        //           color: selectedSize == "M"
                        //               ? Color(0xFF7F5539)
                        //               : Colors.white,
                        //           borderRadius: BorderRadius.circular(10),
                        //         ),
                        //         child: Text(
                        //           "M",
                        //           style: TextStyle(
                        //             fontFamily: 'Avenis',
                        //             fontSize: 20,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.black,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //
                        //     GestureDetector(
                        //       onTap: () {
                        //         setState(() {
                        //           selectedSize = "L";
                        //         });
                        //       },
                        //       child: Container(
                        //         padding: EdgeInsets.all(10),
                        //         decoration: BoxDecoration(
                        //           color: selectedSize == "L"
                        //               ? Color(0xFF7F5539)
                        //               : Colors.white,
                        //           borderRadius: BorderRadius.circular(10),
                        //         ),
                        //         child: Text(
                        //           "L",
                        //           style: TextStyle(
                        //             fontFamily: 'Avenis',
                        //             fontSize: 20,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.black,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //
                        //     GestureDetector(
                        //       onTap: () {
                        //         setState(() {
                        //           selectedSize = "XL";
                        //         });
                        //       },
                        //       child: Container(
                        //         padding: EdgeInsets.all(10),
                        //         decoration: BoxDecoration(
                        //           color: selectedSize == "XL"
                        //               ? Color(0xFF7F5539)
                        //               : Colors.white,
                        //           borderRadius: BorderRadius.circular(10),
                        //         ),
                        //         child: Text(
                        //           "XL",
                        //           style: TextStyle(
                        //             fontFamily: 'Avenis',
                        //             fontSize: 20,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.black,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     GestureDetector(
                        //       onTap: () {
                        //         setState(() {
                        //           selectedSize = "XXL";
                        //         });
                        //       },
                        //       child: Container(
                        //         padding: EdgeInsets.all(10),
                        //         decoration: BoxDecoration(
                        //           color: selectedSize == "XXL"
                        //               ? Color(0xFF7F5539)
                        //               : Colors.white,
                        //           borderRadius: BorderRadius.circular(10),
                        //         ),
                        //         child: Text(
                        //           "XXL",
                        //           style: TextStyle(
                        //             fontFamily: 'Avenis',
                        //             fontSize: 20,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.black,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        SizedBox(height: 10),
                        Text(
                          "Color: Black, White, Red",
                          style: TextStyle(
                            fontFamily: 'Avenis',
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 90,
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Color(0xFFE6CCB2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Price",
                    style: TextStyle(
                      fontFamily: 'Avenis',
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "\$59.99",
                    style: TextStyle(
                      fontFamily: 'Avenis',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Color(0xFF7F5539),
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.shopping_bag_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontFamily: 'Avenis',
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFE6CCB2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
