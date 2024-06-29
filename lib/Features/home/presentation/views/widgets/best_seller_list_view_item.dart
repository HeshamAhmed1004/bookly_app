
import 'package:bookly_app/Features/home/data/models/books_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utilise/app_router.dart';
import 'package:bookly_app/core/utilise/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.booksModel});
final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.bookDetailView,extra: booksModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
             CustomBookImage(imageUrl:booksModel.volumeInfo.imageLinks.thumbnail,),
            const SizedBox(
              width: 29,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text(
                    booksModel.volumeInfo.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),
                  ),
                  Text(
                   booksModel.volumeInfo.authors[0],
                    style: Styles.textStyle14.copyWith(color: const Color(0xff7f7c86)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                     Row(
                     children: [
                       const Text(
                         'Free',
                         style: Styles.textStyle15,
                       ),
                       const Spacer(),
                       BookRating(rating: booksModel.volumeInfo.averageRating ?? 0,countRating:booksModel.volumeInfo.ratingsCount ?? 0,),
                     ],
                   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
