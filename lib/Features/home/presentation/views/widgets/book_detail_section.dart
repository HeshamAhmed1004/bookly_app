import 'package:bookly_app/Features/home/data/models/books_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utilise/styles.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.booksModel});
final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .21),
          child:  CustomBookImage(
            imageUrl:booksModel.volumeInfo.imageLinks.thumbnail ),
        ),
        const SizedBox(
          height: 35,
        ),
         Text(
          booksModel.volumeInfo.title,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
                 ),
        const SizedBox(
          height: 8,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            booksModel.volumeInfo.authors[0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 17,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          countRating: booksModel.volumeInfo.ratingsCount ?? 0,
           rating: booksModel.volumeInfo.averageRating ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
        BookAction(booksModel: booksModel,),
      ],
    );
  }
}
