import 'package:bookly_app/Features/home/data/models/books_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_detail_section.dart';

import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_book_detail_app_bar.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key, required this.booksModel});
final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const CustomBookDetailAppBar(),
                  const SizedBox(
                    height: 27,
                  ),
                  BookDetailsSection(booksModel: booksModel,),
                  const SizedBox(
                    height: 45,
                  ),
                  const SimilarBooksSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




