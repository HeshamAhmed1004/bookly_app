part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksSuccess extends NewestBooksState {
final List<BooksModel> books;

  const NewestBooksSuccess(this.books);

}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksFailure extends NewestBooksState {
final String errMessage;

  const NewestBooksFailure(this.errMessage);
}
