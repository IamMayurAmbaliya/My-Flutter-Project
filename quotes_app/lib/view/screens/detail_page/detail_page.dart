import 'package:quotes_app/headers.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    Quote quote = ModalRoute.of(context)!.settings.arguments as Quote;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(),
                color: color.withOpacity(1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    quote.quote,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text("- ${quote.author}"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(),
          ),
        ],
      ),
    );
  }
}
