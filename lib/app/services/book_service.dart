import 'dart:convert';

import 'package:better_app/app/constant/global_variable.dart';
import 'package:better_app/app/data/model/book.dart';
import 'package:better_app/app/data/model/detail_book.dart';
import 'package:better_app/app/services/input/books/book_input.dart';
import 'package:dio/dio.dart';

class BookService {
  Future<List<Book>> fetchAllBooks() async {
    try {
      String url = "$apiUrl/books/";
      Response response = await dio.get(
        url,
        options: Options(
          headers: headersWithAuth,
        ),
      );
      if (response.statusCode == 200) {
        List? data =
            response.data['data'];
        if (data == null || data.isEmpty) {
          return [];
        } else {
          return data.map((e) => Book.fromJson(e)).toList();
        }
      }
      return [];
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<DetailBook?> fetchDetailBook({required int id}) async {
    try {
      String url = "$apiUrl/books/$id";
      Response response = await Dio().get(
        url,
        options: Options(
          validateStatus: (_) => true,
          headers: headersWithAuth,
        ),
      );
      
      if (response.statusCode == 200) {
        return DetailBook.fromJson(response.data);
      }
      return null;
    } catch (e) {
      return throw Exception(e);
    }
  }

  Future<bool> createBooks({required BookInput booksInput}) async {
    try {
      var url = "$apiUrl/books/add";

      Map<String, dynamic> dataBooks = {
        "isbn": booksInput.isbn,
        "title": booksInput.title,
        "subtitle": booksInput.subtitle,
        "author": booksInput.author,
        "published": booksInput.published,
        "publisher": booksInput.publisher,
        "pages": booksInput.pages,
        "description": booksInput.description,
        "website": booksInput.website,
      };
      Response response = await dio.post(
        url,
        data: jsonEncode(dataBooks),
        options: Options(
          headers: headersWithAuth,
          validateStatus: (_) => true,
        ),
      );
      print(response.data);
      
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<bool> updateBooks(
      {required BookInput booksInput, required int id}) async {
    try {
      var url = "$apiUrl/books/$id/edit";

      Map<String, dynamic> dataBooks = {
        "isbn": booksInput.isbn,
        "title": booksInput.title,
        "subtitle": booksInput.subtitle,
        "author": booksInput.author,
        "published": booksInput.published,
        "publisher": booksInput.publisher,
        "pages": booksInput.pages,
        "description": booksInput.description,
        "website": booksInput.website,
      };
      Response response = await dio.put(
        url,
        data: jsonEncode(dataBooks),
        options: Options(
          headers: headersWithAuth,
          validateStatus: (_) => true,
        ),
      );
    
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<bool> deleteBooks(
      {required BookInput booksInput, required int id}) async {
    try {
      var url = "$apiUrl/books/$id";

      Response response = await dio.delete(
        url,
        options: Options(
          headers: headersWithAuth,
          validateStatus: (_) => true,
        ),
      );
      
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      throw Exception(e);
    }
  }
}
