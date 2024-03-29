import 'package:quotes_app/headers.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  showRandomQuote() {
    Random r = Random();

    Quote q = allQuotes[r.nextInt(allQuotes.length)];
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xffF4EEE0),
        contentTextStyle: const TextStyle(
          color: Color(0xff393646),
        ),
        content: Text(q.quote),
        titleTextStyle: const TextStyle(color: Color(0xff393646)),
        title: const Text(
          "Today's Quotes",
          style: TextStyle(
              color: Color(0xff393646),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color(0xffF4EEE0),
              ),
              foregroundColor: MaterialStateProperty.all(
                const Color(0xff393646),
              ),
            ),
            child: const Text(
              "Go to APP",
              style: TextStyle(color: Color(0xff393646)),
            ),
          )
        ],
      ),
      // builder: (context) => SimpleDialog(
      //   title: const Text("Today's Quotes"),
      //   backgroundColor: const Color(0xff393646),
      //   contentPadding: const EdgeInsets.all(16),
      //   children: [
      //     Text(
      //       q.quote,
      //     ),
      //   ],
      // ),
    );
  }

  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        showRandomQuote();
      },
    );
    super.initState();
  }

  final bool _canPop = false;
  bool _isList = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    double h = size.height;
    double w = size.width;
    String SelectedCategory = "All";

    return PopScope(
      canPop: false,
      onPopInvoked: (val) {
        if (val) {
          return;
        }
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Be Alert !!"),
            content: const Text("Are You Sure To Exitt ?"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text("Yes"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("No"),
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quotes"),
          actions: [
            IconButton(
              onPressed: () {
                _isList = !_isList;
                setState(() {});
              },
              icon: Icon(
                _isList ? Icons.grid_view_outlined : Icons.list,
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
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
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
                                  print(SelectedCategory);
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
                                e.toString().replaceFirst(
                                      e[0],
                                      e[0].toString().toUpperCase(),
                                    ),
                                style: TextStyle(
                                    color: (SelectedCategory == e)
                                        ? const Color(0xff393646)
                                        : const Color(0xffF4EEE0),
                                    letterSpacing: 0.5,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            // child: Container(
                            //   margin: const EdgeInsets.all(5),
                            //   padding: const EdgeInsets.all(10),
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(10),
                            //     border: Border.all(),
                            //   ),
                            //   child: Text(
                            //     e.toString().replaceFirst(
                            //           e[0],
                            //           e[0].toString().toUpperCase(),
                            //         ),
                            //   ),
                            // ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            ),
            const Divider(),
            _isList
                ? Expanded(
                    flex: 12,
                    child: Scrollbar(
                      thickness: 10,
                      interactive: true,
                      child: ListView.separated(
                        itemCount: allQuotes.length,
                        itemBuilder: (context, index) => ExpansionTile(
                          backgroundColor: const Color(0xffF4EEE0),
                          title: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  AppRoutes.homePage,
                                  arguments: allQuotes[index]);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
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
                                allQuotes[index].quote,
                                style: TextStyle(
                                    color: (SelectedCategory == e)
                                        ? const Color(0xff393646)
                                        : const Color(0xffF4EEE0),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Author: ${allQuotes[index].author}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Category: ${allQuotes[index].category}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                        separatorBuilder: (context, index) => const Divider(
                          indent: 20,
                          endIndent: 20,
                        ),
                      ),
                    ),
                  )
                : Expanded(
                    flex: 12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Scrollbar(
                        thickness: 10,
                        interactive: true,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 4 / 4,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                          ),
                          itemCount: allQuotes.length,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  AppRoutes.homePage,
                                  arguments: allQuotes[index]);
                            },
                            child: Card(
                              color: Colors.primaries[index % 18].shade300,
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      allQuotes[index].quote,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 5,
                                      style: const TextStyle(
                                        color: Color(0xff30285d),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      " - ${allQuotes[index].author}",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        color: Color(0xff30285d),
                                        fontSize: 16,
                                        fontVariations: [
                                          FontVariation.italic(1)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
//ListTile(
//                   title: Text(
//                     allQuotes[index].quote,
//                   ),
//                   // children: [
//                   //   Text("Author: ${allQuotes[index].author}"),
//                   //   Text("Category: ${allQuotes[index].category}"),
//                   // ],
//                 )
