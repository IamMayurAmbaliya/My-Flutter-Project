import 'package:flutter/material.dart';
import 'package:mayur_first_application/utills/data.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:mayur_first_application/view/screens/product_details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.menu),
        title: Text(
          "QuickMart",
          style: TextStyle(
            color: Colors.black,
            fontSize: h * 0.030,
          ),
        ),
        actions: [
          const Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: w * 0.025,
          ),
          const CircleAvatar(
            backgroundColor: Colors.transparent,
            // child: Image(
            //   image: NetworkImage(
            //       "https://manofmany.com/wp-content/uploads/2019/04/David-Gandy.jpg"),
            //   fit: BoxFit.fill,
            // ),
            foregroundImage: NetworkImage(
              "https://manofmany.com/wp-content/uploads/2019/04/David-Gandy.jpg",
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: h * 0.20,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://img.freepik.com/premium-photo/3d-illustration-purple-retro-headphones-purple-isolated-background-white-lights-headphone-icon-illustration_116124-7777.jpg"),
                      fit: BoxFit.fill),
                ),
                alignment: AlignmentDirectional(-0.8, 1),
                child: Container(
                  height: h * 0.1,
                  width: w * 0.5,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: h * 0.025,
                        width: w * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "30% off",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * 0.016,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.0040,
                      ),
                      Text(
                        "On Headphones",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: h * 0.015,
                            letterSpacing: 2),
                      ),
                      SizedBox(
                        height: h * 0.002,
                      ),
                      Text(
                        "Exclusive Sales",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: h * 0.025,
                            letterSpacing: 1),
                      )
                    ],
                  ),
                ),
                // child: Image(
                //   image: NetworkImage(
                //       "https://img.freepik.com/premium-photo/3d-illustration-purple-retro-headphones-purple-isolated-background-white-lights-headphone-icon-illustration_116124-7777.jpg"),
                //   fit: BoxFit.cover,
                // ),
              ),
              SizedBox(
                height: h * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: h * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "SEE ALL",
                    style: TextStyle(
                      fontSize: h * 0.015,
                      color: Colors.cyan,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h * 0.025,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // child: Row(
                //   children: categorieslist
                //       .map(
                //         (e) => Padding(
                //           padding: const EdgeInsets.all(10),
                //           child: GestureDetector(
                //             onTap: () {
                //               setState(
                //                 () {
                //                   Navigator.of(context).pushNamed(
                //                       'selected_product',
                //                       arguments: e);
                //                 },
                //               );
                //             },
                //             child: Card(
                //               color: Colors.white,
                //               elevation: 8.0,
                //               shape: RoundedRectangleBorder(
                //                 borderRadius:
                //                     BorderRadius.circular(h * 0.025),
                //               ),
                //               child: SizedBox(
                //                 height: h * 0.1,
                //                 width: w * 0.2,
                //                 child: Image.network(e),
                //               ),
                //             ),
                //           ),
                //         ),
                //       )
                //       .toList(),
                // ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...product
                          .map(
                            (e) => Container(
                              height: h * 0.15,
                              width: w * 0.25,
                              margin: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    e['category_image'],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Products",
                    style: TextStyle(
                      fontSize: h * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "SEE ALL",
                    style: TextStyle(
                      fontSize: h * 0.015,
                      color: Colors.cyan,
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...product.map(
                      (e) => Container(
                        height: h * 0.30,
                        width: w * 0.35,
                        margin: EdgeInsets.all(w * 0.02),
                        padding: EdgeInsets.all(h * 0.01),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(h * 0.025),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: h * 0.20,
                              width: w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(h * 0.015),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    e['image'],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  e['name'].toString(),
                                  style: TextStyle(
                                    fontSize: h * 0.018,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.015,
                                ),
                                Text(
                                  "${e['price']}",
                                  style: TextStyle(
                                    fontSize: h * 0.018,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(height: h*0.015,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'MyCart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'WishList',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
