import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:prac2/Products.dart';
import 'package:prac2/productdetail.dart';
import 'package:prac2/ProductsPage.dart';
import 'Data.dart';

void main() {
  runApp(
    MaterialApp(home: const MyApp(), theme: ThemeData(useMaterial3: true)),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? selectedLocation;
  List<String> TypeChoose = [];

  List<String> typename = ["Caps", "Shirts", "Pants", "Jackets"];
  List<String> typeimg = [
    "assets/images/cap-removebg-preview.png",
    "assets/images/shirt-removebg-preview.png",
    "assets/images/pant-removebg-preview.png",
    "assets/images/jacket-removebg-preview.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            backgroundColor: Color(0x40EDE0D4),
            flexibleSpace: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                      fontFamily: 'Avenis',
                      color: Color(0xFF7F5539),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Color(0xFF7F5539),
                        size: 30,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          //color: Color(0x40EDE0D4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.all(4),
                        child: DropdownButton<String>(
                          value: selectedLocation,
                          padding: EdgeInsets.zero,
                          dropdownColor: Color(0xFFE6CCB2),
                          underline: SizedBox(),
                          hint: const Text(
                            "Select Location",
                            style: TextStyle(
                              fontFamily: 'Avenis',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          items: [
                            DropdownMenuItem(
                              value: "Mumbai, IND",
                              child: Text(
                                "Mumbai, IND",
                                style: TextStyle(
                                  fontFamily: 'Avenis',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "Moscow, RU",
                              child: Text(
                                "Moscow, RU",
                                style: TextStyle(
                                  fontFamily: 'Avenis',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "Tokyo, JP",
                              child: Text(
                                "Tokyo, JP",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Avenis',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "Burenos Aires, ARG",
                              child: Text(
                                "Burenos Aires, ARG",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Avenis',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "Berlin, GER",
                              child: Text(
                                "Berlin, GER",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Avenis',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],

                          onChanged: (val) {
                            setState(() {
                              selectedLocation = val.toString();
                            });
                          },
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF7F5539),
                          ),
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF7F5539),
                          ),
                          isDense: true,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications,
                        color: Color(0xFF7F5539),
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Color(0x40EDE0D4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: false,
                          prefixIcon: Icon(
                            Icons.search_sharp,
                            size: 25,
                            color: Color(0xFF7F5539),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Color(0xFFE6CCB2)),
                            //borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF7F5539),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        CupertinoIcons.slider_horizontal_3,
                        size: 35,
                        color: Color(0xFFE6CCB2),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),

                Container(
                  padding: EdgeInsets.only(
                    left: 15,
                    top: 15,
                    bottom: 15,
                    right: 0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFDDB892),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New Collection",
                              style: TextStyle(
                                fontFamily: 'Avenis',
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Discount 50% for for the first transaction",
                              style: TextStyle(
                                fontFamily: 'Avenis',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                              softWrap: true,
                            ),
                            SizedBox(height: 10),
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Color(0xFF7F5539),
                              elevation: 6,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  "Shop Now",
                                  style: TextStyle(
                                    fontFamily: 'Avenis',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFE6CCB2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Stack(
                        clipBehavior: Clip.hardEdge,
                        children: [
                          Image.asset(
                            'assets/images/F1jacket.png',
                            height: 170,
                            fit: BoxFit.contain,
                          ),
                          Positioned(
                            right: -20,
                            bottom: -30,
                            child: Image.asset(
                              'assets/images/F1jacket.png',
                              height: 145,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        fontFamily: 'Avenis',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Color(0xFFB08968),
                        fontFamily: 'Avenis',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),

                Container(
                  padding: EdgeInsets.all(10),
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(left: 5, right: 10),
                        //width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const products(type: 'type[index]'),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Color(0xFFDDB892),
                                child: Image.asset(
                                  typeimg[index],
                                  height: 70,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                typename[index],
                                style: TextStyle(
                                  fontFamily: 'Avenis',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Flash Sale",
                      style: TextStyle(
                        fontFamily: 'Avenis',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Closing in: ",
                          style: TextStyle(
                            fontFamily: 'Avenis',
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color(0xFFDDB892),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "24",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          ":",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color(0xFFDDB892),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "59",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          ":",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color(0xFFDDB892),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "59",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),

                // SingleChildScrollView(
                //   child:
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        margin: EdgeInsets.only(left: 2, right: 2),
                        decoration: BoxDecoration(
                          color: Color(0xFF7F5539),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            Data[index].category,
                            style: TextStyle(
                              fontFamily: 'Avenis',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFE6CCB2),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // ),
                SizedBox(height: 15),

                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                products(type: Data[index].type),
                          ),
                        );
                      },
                      child: Card(
                        child: Image.asset(Data[index].imgpath, height: 200),
                      ),
                    );
                  },
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Expanded(
                //       child: InkWell(
                //         onTap: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) => const product(),
                //             ),
                //           );
                //         },
                //         child: Card(
                //           child: Image.asset(
                //             'assets/images/F1jacket.png',
                //             height: 200,
                //           ),
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       child: Card(
                //         child: Image.asset(
                //           'assets/images/FJT307_1270MF_WLR.jpg',
                //           height: 200,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Expanded(
                //       child: Card(
                //         child: Image.asset(
                //           'assets/images/71nEE293zsL.jpg',
                //           height: 200,
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       child: Card(
                //         child: Image.asset(
                //           'assets/images/jacket4.jpg',
                //           height: 200,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Color(0xFFE6CCB2),
          indicatorColor: Color(0xFFE6CCB2),

          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home, color: Color(0xFF7F5539)),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_rounded),
              label: "Cart",
            ),
            NavigationDestination(
              icon: Icon(Icons.currency_rupee),
              label: "Payment",
            ),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
