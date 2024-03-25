//Modal Class
class Quote {
  //Attributes
  final String quote;
  final String category;
  final String author;

  //Parameterised Constructor
  Quote({
    required this.quote,
    required this.category,
    required this.author,
  });

  //Factory Constructor
  factory Quote.fromMap({required Map data}) => Quote(
        quote: data['quote'],
        category: data['category'],
        author: data['author'],
      );
}
