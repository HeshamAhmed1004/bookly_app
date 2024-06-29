
import 'package:bookly_app/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/custom_widget_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utilise/app_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(builder: (context, state) {
      if(state is FeaturedBooksSuccess){
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.only(right: 14),
                child: GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.bookDetailView,extra: state.books[index]);
                  },
                  child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks
                      .thumbnail),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
          ),
        );
      }else if(state is FeaturedBooksFailure)
        {
          return CustomWidgetError(errMessage: state.errMessage);
        }
      else {
        return const CustomLoadingIndicator();
      }
    },);
  }
}
