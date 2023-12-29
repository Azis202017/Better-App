

import 'dart:convert';

Book bookFromJson(String str) => Book.fromJson(json.decode(str));

String bookToJson(Book data) => json.encode(data.toJson());

class Book {
    int? id;
    int? userId;
    String? isbn;
    String? title;
    String? subtitle;
    String? author;
    DateTime? published;
    String? publisher;
    int? pages;
    String? description;
    String? website;
    DateTime? createdAt;
    DateTime? updatedAt;

    Book({
        this.id,
        this.userId,
        this.isbn,
        this.title,
        this.subtitle,
        this.author,
        this.published,
        this.publisher,
        this.pages,
        this.description,
        this.website,
        this.createdAt,
        this.updatedAt,
    });

    factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        userId: json["user_id"],
        isbn: json["isbn"],
        title: json["title"],
        subtitle: json["subtitle"],
        author: json["author"],
        published: json["published"] == null ? null : DateTime.parse(json["published"]),
        publisher: json["publisher"],
        pages: json["pages"],
        description: json["description"],
        website: json["website"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "isbn": isbn,
        "title": title,
        "subtitle": subtitle,
        "author": author,
        "published": published?.toIso8601String(),
        "publisher": publisher,
        "pages": pages,
        "description": description,
        "website": website,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
