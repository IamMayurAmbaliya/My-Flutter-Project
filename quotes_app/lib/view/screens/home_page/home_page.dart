import 'package:quotes_app/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // showRandomQuote() {
  //   Random r = Random();
  //
  //   Quote q = allQuotes[r.nextInt(allQuotes.length)];
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       backgroundColor: const Color(0xffF4EEE0),
  //       contentTextStyle: const TextStyle(
  //         color: Color(0xff393646),
  //       ),
  //       content: Text(q.quote),
  //       titleTextStyle: const TextStyle(color: Color(0xff393646)),
  //       title: const Text(
  //         "Today's Quotes",
  //         style: TextStyle(
  //             color: Color(0xff393646),
  //             fontSize: 20,
  //             fontWeight: FontWeight.bold),
  //       ),
  //       actions: [
  //         ElevatedButton(
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //           },
  //           style: ButtonStyle(
  //             backgroundColor: MaterialStateProperty.all(
  //               const Color(0xffF4EEE0),
  //             ),
  //             foregroundColor: MaterialStateProperty.all(
  //               const Color(0xff393646),
  //             ),
  //           ),
  //           child: const Text(
  //             "Go to APP",
  //             style: TextStyle(color: Color(0xff393646)),
  //           ),
  //         )
  //       ],
  //     ),
  //     // builder: (context) => SimpleDialog(
  //     //   title: const Text("Today's Quotes"),
  //     //   backgroundColor: const Color(0xff393646),
  //     //   contentPadding: const EdgeInsets.all(16),
  //     //   children: [
  //     //     Text(
  //     //       q.quote,
  //     //     ),
  //     //   ],
  //     // ),
  //   );
  // }

  // @override
  // void initState() {
  //   Future.delayed(
  //     const Duration(milliseconds: 500),
  //     () {
  //       showRandomQuote();
  //     },
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Column(
        children: [
          dialogueBox(context: context),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRoutes.detailpage,
              );
            },
            child: const Icon(Icons.details),
          )
        ],
      ),
    );
  }
}
