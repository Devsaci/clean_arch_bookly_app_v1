import '../repos/home_repo.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);
  fetchFeaturedBooks() {
    return homeRepo.fetchFeaturedBooks();
  }
}
