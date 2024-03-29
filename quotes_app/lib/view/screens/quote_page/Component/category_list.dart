import 'package:quotes_app/headers.dart';

Widget CategoryList() {
  return Expanded(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: allCategories
          .map(
            (e) => Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Text(e),
            ),
          )
          .toList(),
    ),
  );
}
