
part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
const SimilarBooksState();

@override
List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksSuccess extends SimilarBooksState {
final List<BooksModel> books;

const SimilarBooksSuccess(this.books);

}
final class SimilarBooksLoading extends SimilarBooksState {}
final class SimilarBooksFailure extends SimilarBooksState {
final String errMessage;

const SimilarBooksFailure(this.errMessage);
}
