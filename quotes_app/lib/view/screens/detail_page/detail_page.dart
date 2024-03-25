import 'package:flutter/cupertino.dart';
import 'package:quotes_app/headers.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _canPop = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    double h = size.height;
    double w = size.width;

    String SelectedCategory = "All";

    return PopScope(
      canPop: _canPop,
      onPopInvoked: (val) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("BE ALERT⚡⚡.."),
            content: const Text(
              "ARE YOU SURE YOU WANT TO EXIT???",
            ),
            actions: [
              ElevatedButton(
                child: const Text("Yes"),
                onPressed: () {
                  Navigator.pop(context);
                  _canPop = true;
                },
              ),
              OutlinedButton(
                child: const Text("No"),
                onPressed: () {
                  Navigator.pop(context);
                  _canPop = false;
                },
              ),
            ],
          ),
        ).then(
          (value) {
            if (_canPop) {
              Navigator.pop(context);
            }
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("DetailPage"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.homePage,
                );
              },
              icon: const Icon(
                Icons.home,
              ),
            ),
          ],
        ),
        // body: Expanded(
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: allCategories
        //         .map(
        //           (e) => Container(
        //             margin: const EdgeInsets.all(5),
        //             padding: const EdgeInsets.all(10),
        //             decoration: BoxDecoration(
        //               border: Border.all(),
        //             ),
        //             child: Text(e),
        //           ),
        //         )
        //         .toList(),
        //   ),
        // ),
        // body: Column(
        //   children: [
        //     SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         children: [
        //           ...allCategories.map(
        //             (e) => GestureDetector(
        //               onTap: () {
        //                 setState(() {
        //                   SelectedCategory = e;
        //                 });
        //               },
        //               child: Container(
        //                 height: h * 0.04,
        //                 margin: const EdgeInsets.all(5),
        //                 child: Text(
        //                   e,
        //                   style: TextStyle(
        //                     fontSize: textScaler.scale(20),
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      SelectedCategory = "All";
                    },
                  );
                },
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: (SelectedCategory == "All")
                        ? const Color(0xffF4EEE0)
                        : const Color(0xff393646),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xffF4EEE0),
                    ),
                  ),
                  child: Text(
                    "All",
                    style: TextStyle(
                      color: (SelectedCategory == "All")
                          ? const Color(0xff393646)
                          : const Color(0xffF4EEE0),
                      fontSize: textScaler.scale(20),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ...allCategories
                  .map(
                    (e) => GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            SelectedCategory = e;
                          },
                        );
                      },
                      child: Container(
                        height: 50,
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: (SelectedCategory == e)
                              ? const Color(0xffF4EEE0)
                              : const Color(0xff393646),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xffF4EEE0),
                          ),
                        ),
                        child: Text(
                          e,
                          style: TextStyle(
                              color: (SelectedCategory == e)
                                  ? const Color(0xff393646)
                                  : const Color(0xffF4EEE0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
