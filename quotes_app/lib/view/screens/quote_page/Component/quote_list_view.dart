import 'package:quotes_app/headers.dart';

Widget quoteListview() {
  return ListView.separated(
    itemCount: allQuotes.length,
    itemBuilder: (context, index) => ExpansionTile(
      title: Text(
        allQuotes[index].quote,
      ),
      children: [
        Text("Author: ${allQuotes[index].author}"),
        Text("Category: ${allQuotes[index].category}"),
      ],
    ),
    separatorBuilder: (context, index) => const Divider(
      indent: 10,
      endIndent: 10,
    ),
  );
}
