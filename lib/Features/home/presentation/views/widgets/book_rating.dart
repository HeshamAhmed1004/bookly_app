
import 'package:bookly_app/core/utilise/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment=MainAxisAlignment.start, required this.rating, required this.countRating});
 final MainAxisAlignment mainAxisAlignment ;
 final num rating;
 final int countRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 13,
        ),
        const SizedBox(
          width: 6,
        ),
         Text(
          "$rating",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '($countRating)',
          style: Styles.textStyle14.copyWith(
              fontFamily: 'Montserrat-Regular',
              color: const Color(0xff484555) //medium
          ),
        ),
      ],
    );
  }
}
