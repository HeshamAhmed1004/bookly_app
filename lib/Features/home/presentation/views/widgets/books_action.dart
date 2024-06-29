
import 'package:bookly_app/Features/home/data/models/books_model.dart';
import 'package:bookly_app/core/functions/custom_launch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.booksModel});
final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(
          child: CustomButton(
            text: 'Free',
            color: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            fontSize: 16,
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: ()async{
              await lunchUrl(context,booksModel.volumeInfo.previewLink);
            },
            text: getText(),
            color: Colors.white,
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            fontSize: 16,
          ),
        ),
      ],
    );
  }

 String getText() {
    if(booksModel.volumeInfo.previewLink== null){
      return 'Not Available';
    }else {
      return 'Preview';
    }
 }
}
