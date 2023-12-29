class BookInput {
  String isbn;
  String title;
  String subtitle;
  String author;
  String published;
  String publisher;
  num pages;
  String description;
  String website;
  BookInput({
   required this.isbn,
   required this.title,
   
   required this.subtitle,
   required this.author,
   required this.publisher,
   required this.published,
   required this.pages,
   required this.description,
   required this.website, 

  }
  );
}
