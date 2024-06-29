import 'package:bookly_app/Features/home/data/models/books_model.dart';
import 'package:bookly_app/Features/home/presentation/manger/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_detail_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailView extends StatefulWidget {
  const BookDetailView({super.key, required this.booksModel});
final BooksModel booksModel;
  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}

class _BookDetailViewState extends State<BookDetailView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: widget.booksModel.volumeInfo.categories[0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailViewBody(booksModel: widget.booksModel,),
    );
  }
}
